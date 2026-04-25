#!/usr/bin/env python3
"""
Convert pptx/pdf/docx/xlsx/xls to markdown.
Usage: python3 convert_to_md.py <file> [module] [topic] [lecturer]

Improvements over v1:
- PDFs use pymupdf (much better layout/equation preservation than pdfminer)
- PPTXs extract embedded images to an assets/ subfolder
- All files get YAML frontmatter automatically
"""

import sys
import os

# ── Converters ────────────────────────────────────────────────────────────────

def convert_pptx(path):
    from pptx import Presentation
    from pptx.enum.shapes import MSO_SHAPE_TYPE

    prs = Presentation(path)
    assets_dir = os.path.join(os.path.dirname(path), "assets")
    slides = []

    for i, slide in enumerate(prs.slides, 1):
        texts = []
        images = []

        for shape in slide.shapes:
            # Extract text
            if shape.has_text_frame:
                for para in shape.text_frame.paragraphs:
                    line = para.text.strip()
                    if line:
                        texts.append(line)

            # Extract images
            if shape.shape_type == MSO_SHAPE_TYPE.PICTURE:
                try:
                    image = shape.image
                    ext = image.ext or "png"
                    img_name = f"slide{i}-img{shape.shape_id}.{ext}"
                    os.makedirs(assets_dir, exist_ok=True)
                    img_path = os.path.join(assets_dir, img_name)
                    with open(img_path, "wb") as f:
                        f.write(image.blob)
                    images.append(f"![[assets/{img_name}]]")
                except Exception:
                    pass

        parts = []
        if texts:
            parts.append("\n\n".join(texts))
        if images:
            parts.append("\n".join(images))

        if parts:
            slides.append(f"## Slide {i}\n\n" + "\n\n".join(parts))

    return "\n\n---\n\n".join(slides)


def convert_pdf(path):
    try:
        import fitz  # pymupdf
        doc = fitz.open(path)
        pages = []
        for i, page in enumerate(doc, 1):
            text = page.get_text("text").strip()
            if text:
                pages.append(f"## Page {i}\n\n{text}")
        doc.close()
        return "\n\n---\n\n".join(pages)
    except Exception:
        # Fallback to pdfminer if pymupdf fails
        from pdfminer.high_level import extract_text
        return extract_text(path)


def convert_docx(path):
    from docx import Document
    doc = Document(path)
    lines = []
    for para in doc.paragraphs:
        text = para.text.strip()
        if not text:
            continue
        style = para.style.name if para.style else ""
        if "Heading 1" in style:
            lines.append(f"# {text}")
        elif "Heading 2" in style:
            lines.append(f"## {text}")
        elif "Heading 3" in style:
            lines.append(f"### {text}")
        else:
            lines.append(text)
    return "\n\n".join(lines)


def convert_xlsx(path):
    import openpyxl
    wb = openpyxl.load_workbook(path, data_only=True)
    output = []
    for sheet_name in wb.sheetnames:
        ws = wb[sheet_name]
        output.append(f"## Sheet: {sheet_name}\n")
        rows = []
        for row in ws.iter_rows(values_only=True):
            cells = [str(c) if c is not None else "" for c in row]
            if any(cells):
                rows.append("| " + " | ".join(cells) + " |")
        if rows:
            separator = "| " + " | ".join(["---"] * len(rows[0].split("|")[1:-1])) + " |"
            output.append(rows[0])
            output.append(separator)
            output.extend(rows[1:])
        output.append("")
    return "\n".join(output)


def convert_xls(path):
    import xlrd
    wb = xlrd.open_workbook(path)
    output = []
    for sheet in wb.sheets():
        output.append(f"## Sheet: {sheet.name}\n")
        rows = []
        for rx in range(sheet.nrows):
            cells = [str(sheet.cell_value(rx, cx)) for cx in range(sheet.ncols)]
            if any(c.strip() for c in cells):
                rows.append("| " + " | ".join(cells) + " |")
        if rows:
            separator = "| " + " | ".join(["---"] * sheet.ncols) + " |"
            output.append(rows[0])
            output.append(separator)
            output.extend(rows[1:])
        output.append("")
    return "\n".join(output)


# ── Frontmatter ───────────────────────────────────────────────────────────────

TOPIC_TAGS = {
    "thermodynamics":                          ["thermodynamics", "thermofluids"],
    "fluid-mechanics":                         ["fluid-mechanics", "thermofluids"],
    "mechanics/statics":                       ["statics", "mechanics"],
    "mechanics/solid-mechanics":               ["solid-mechanics", "mechanics"],
    "mechanics/dynamics":                      ["dynamics", "mechanics"],
    "mechanics":                               ["mechanics"],
    "manufacturing-materials/manufacturing":   ["manufacturing", "manufacturing-materials"],
    "manufacturing-materials/materials":       ["materials", "manufacturing-materials"],
    "manufacturing-materials":                 ["manufacturing-materials"],
}

def topic_tags(topic):
    t = topic.lower()
    for key, tags in TOPIC_TAGS.items():
        if key in t:
            return tags
    return []

def build_frontmatter(path, module, topic, lecturer):
    basename = os.path.splitext(os.path.basename(path))[0]
    tags = topic_tags(topic)
    tags_str = "[" + ", ".join(tags) + "]" if tags else "[]"
    return (
        f"---\n"
        f"module: {module}\n"
        f"topic: {topic}\n"
        f"lecturer: {lecturer}\n"
        f"module_index: \"[[/_modules/{module}]]\"\n"
        f"source_file: \"{basename}\"\n"
        f"tags: {tags_str}\n"
        f"---\n\n"
    )


# ── Main ──────────────────────────────────────────────────────────────────────

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 convert_to_md.py <file> [module] [topic] [lecturer]")
        sys.exit(1)

    path     = sys.argv[1]
    module   = sys.argv[2] if len(sys.argv) > 2 else "UNKNOWN"
    topic    = sys.argv[3] if len(sys.argv) > 3 else "unknown"
    lecturer = sys.argv[4] if len(sys.argv) > 4 else "Unknown"

    if not os.path.exists(path):
        print(f"File not found: {path}", file=sys.stderr)
        sys.exit(1)

    ext = os.path.splitext(path)[1].lower()
    converters = {
        ".pptx": convert_pptx,
        ".pdf":  convert_pdf,
        ".docx": convert_docx,
        ".xlsx": convert_xlsx,
        ".xls":  convert_xls,
    }

    if ext not in converters:
        print(f"Unsupported format: {ext}", file=sys.stderr)
        sys.exit(1)

    content      = converters[ext](path)
    frontmatter  = build_frontmatter(path, module, topic, lecturer)
    out_path     = os.path.splitext(path)[0] + ".md"

    with open(out_path, "w", encoding="utf-8") as f:
        f.write(frontmatter + content)

    print(out_path)


if __name__ == "__main__":
    main()
