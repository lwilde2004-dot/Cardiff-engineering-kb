# Cardiff Engineering Knowledge Base

An AI-assisted Obsidian vault for Cardiff University engineering modules. Drop raw lecture files in; Claude Code processes them into a structured wiki, flashcards, practice questions, and exam notes.

Built for **EN1211** (Engineering Maths) and **EN1213** (Mechanics, Thermofluids, Manufacturing & Materials) — but the structure works for any engineering module.

---

## What it does

- **Intake pipeline** — drop a `.pptx`, `.pdf`, or `.docx` into `_inbox/`, run one command, and it gets renamed, routed, and converted to markdown automatically
- **Wiki** — AI-maintained articles per topic: definitions, equations, worked examples, and cross-links
- **Flashcards** — Obsidian Spaced Repetition cards per topic for active recall
- **Practice questions** — exam-style questions with worked solutions, organised by topic
- **Exam notes** — auto-generated 4-page A4 reference sheets targeting past paper topics

---

## Prerequisites

| Tool | Version | Install |
|---|---|---|
| [Obsidian](https://obsidian.md) | Any recent | obsidian.md |
| Python | 3.9+ | python.org |
| pip packages | — | see below |
| [Claude Code](https://claude.ai/code) | Latest | claude.ai/code |

**Python packages:**
```sh
pip install pymupdf python-docx python-pptx openpyxl xlrd
```

---

## Setup

**1. Clone the repo and open in Obsidian**
```sh
git clone https://github.com/lwilde2004-dot/cardiff-engineering-kb.git
cd cardiff-engineering-kb
```
Open Obsidian → Open folder as vault → select the cloned folder.

**2. Enable community plugins**
Obsidian will prompt you to enable community plugins. Accept, then install:
- **Dataview** — powers the Dashboard
- **Templater** — note templates
- **Spaced Repetition** (by st3v3nmw) — flashcard review
- **Copilot** *(optional)* — inline AI assistance in Obsidian

**3. Configure Claude Copilot** *(optional)*
Copy `.obsidian/plugins/copilot/data.json.template` to `data.json` and add your Anthropic API key.

**4. Verify the converter**
```sh
python3 _system/convert_to_md.py --help
# or test on a file:
python3 _system/convert_to_md.py "path/to/Lecture.pptx" "EN1213" "thermodynamics" "LecturerName"
```

---

## Adding your own lecture files

**Naming convention:** `MODULE - Title - Lecturer.ext`
```
EN1213 - Hydrostatics and Submerged Surfaces - Mashruk.pptx
EN1211 - Differentiation - Staff.pdf
```

**Option A — Manual intake:**
```sh
# 1. Drop file into the correct raw/ subfolder
# 2. Convert:
bash _system/convert.sh "EN1213/thermodynamics-fluid-mechanics/raw/thermodynamics/first-law/EN1213 - First Law - Marsh.pptx"
# 3. Tell Claude Code to process it into the wiki
```

**Option B — Smart intake (auto-routes and converts):**
```sh
bash _system/intake.sh "path/to/EN1213 - Lecture Title - Lecturer.pptx"
```

**Option C — File watcher (auto-converts on drop):**
```sh
bash _system/watch.sh --bg    # start in background
bash _system/watch.sh --stop  # stop
```

Then drop files into `_inbox/` and tell Claude Code:
> *"Process the new file in `EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/` into the wiki"*

---

## Working with Claude Code

Open Claude Code in the vault directory. The `CLAUDE.md` file gives Claude full context. Useful prompts:

```
# Process a new lecture into the wiki
"Process EN1213 - Hydrostatics - Mashruk.md into the wiki"

# Generate flashcards
"Make 10 flashcards for thermodynamics covering the First Law and steam cycles"

# Run a flashcard quiz session
"Quiz me on fluid mechanics flashcards"

# Generate practice questions
"Give me 5 exam-style questions on beam bending with worked solutions"

# Build exam notes
"Generate 4 pages of exam notes for the Thermofluids exam targeting past paper topics"
```

---

## Vault structure

```
cardiff-engineering-kb/
├── EN1211/                    ← Engineering Maths (Y1)
│   ├── raw/topic/             ← Source files (gitignored — add your own)
│   ├── wiki/topic/            ← AI-maintained articles
│   ├── outputs/               ← Formula sheets, revision notes
│   └── flashcards/            ← Spaced repetition cards
├── EN1213/                    ← Engineering Y1 (Mechanics + Thermofluids + Manufacturing)
│   ├── thermodynamics-fluid-mechanics/
│   ├── mechanics/
│   └── manufacturing-materials/
│       ├── raw/topic/         ← gitignored — add your lecture files here
│       ├── wiki/topic/        ← the useful bit — read these
│       ├── outputs/           ← formula sheets
│       ├── flashcards/        ← SR cards
│       └── practice-questions/
├── _system/                   ← Intake scripts and converter
│   ├── convert_to_md.py       ← Converts PDF/PPTX/DOCX to markdown (with OMML equation support)
│   ├── convert.sh
│   ├── intake.sh
│   └── watch.sh / watch.py
├── _modules/                  ← Module index files
├── _inbox/                    ← Drop zone for new files
├── CLAUDE.md                  ← AI instructions (read by Claude Code)
├── Dashboard.md               ← Dataview overview
└── INDEX.md                   ← Navigation
```

---

## Adapting to your institution

1. **Change module codes** — replace `EN1211`/`EN1213` with your own throughout `CLAUDE.md` and the folder structure
2. **Add your lecture files** — the `raw/` folders are gitignored so your university's copyright material stays local
3. **Update CLAUDE.md** — tell Claude who your lecturers are and what topics your modules cover
4. **Exam papers** — the `Exam papers/` folder is gitignored; add your own past papers locally

---

## DOCX equation support

The converter handles Word's native equation format (OMML). Equations are extracted and rendered as inline code:

```
# Old converters: blank
Differentiate the function f(x,y) =

# This converter: fully readable
Differentiate the function `f(x,y)=2x^2y-3x^3-2xy+x+3`
```

Supports: fractions, superscripts/subscripts, radicals, integrals/sums, matrices, vectors with overbars, and nested combinations.

---

## Licence

Wiki articles and system scripts: MIT.  
Lecture content in `raw/` folders: copyright of the respective institution — not included in this repo.
