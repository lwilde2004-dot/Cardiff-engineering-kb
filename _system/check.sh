#!/bin/bash
# Periodic protocol check for the Cardiff University Knowledge Base.
# Usage: bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/check.sh

VAULT="/Users/Lewis/Documents/Uni shi/Claude Uni Brain"
PASS=0
WARN=0
FAIL=0

green()  { echo "  ✓ $1"; ((PASS++)); }
yellow() { echo "  ⚠ $1"; ((WARN++)); }
red()    { echo "  ✗ $1"; ((FAIL++)); }

echo ""
echo "═══════════════════════════════════════════════════"
echo "  Knowledge Base Protocol Check"
echo "  $(date '+%Y-%m-%d %H:%M')"
echo "═══════════════════════════════════════════════════"

# ── CHECK 1: Naming convention ────────────────────────────────────────────────
echo ""
echo "[ 1 ] Naming convention (MODULE - Title - Lecturer)"
echo "──────────────────────────────────────────────────"

while IFS= read -r -d '' file; do
  base=$(basename "$file")
  ext="${base##*.}"
  name="${base%.*}"

  [[ "$base" == .* ]] && continue

  if [[ "$ext" == "epub" ]]; then
    if [[ "$name" =~ ^[A-Z]{2}[0-9]{4}\ -\ .+$ ]]; then
      green "$base"
    else
      yellow "$base — epub without module code"
    fi
    continue
  fi

  if [[ "$name" =~ ^[A-Z]{2}[0-9]{4}\ -\ .+\ -\ [A-Za-z]+$ ]]; then
    if [[ "$name" == *"UNKNOWN"* ]]; then
      yellow "$base — contains UNKNOWN, needs review"
    else
      green "$base"
    fi
  else
    red "$base — does not match 'MODULE - Title - Lecturer' format"
  fi
done < <(find "$VAULT/EN1213" -type f -not -name ".DS_Store" -path "*/raw/*" -not -path "*/assets/*" -not -name "*.html" -print0)

# ── CHECK 2: Every source file has a converted .md ───────────────────────────
echo ""
echo "[ 2 ] Converted .md counterparts"
echo "──────────────────────────────────────────────────"

while IFS= read -r -d '' file; do
  base=$(basename "$file")
  ext="${base##*.}"

  [[ "$ext" == "md" ]] && continue
  [[ "$ext" == "epub" ]] && continue
  [[ "$ext" == "doc" ]] && continue
  [[ "$base" == .* ]] && continue

  md="${file%.*}.md"
  if [[ -f "$md" ]]; then
    green "${base} → .md exists"
  else
    red "${base} → no .md found (run convert.sh)"
  fi
done < <(find "$VAULT/EN1213" -type f -not -name ".DS_Store" -path "*/raw/*" -not -path "*/assets/*" -not -name "*.html" -print0)

# ── CHECK 3: Converted .md files have frontmatter ────────────────────────────
echo ""
echo "[ 3 ] YAML frontmatter in converted .md files"
echo "──────────────────────────────────────────────────"

while IFS= read -r -d '' file; do
  base=$(basename "$file")
  [[ "$base" == .* ]] && continue

  first=$(head -1 "$file" 2>/dev/null)
  if [[ "$first" == "---" ]]; then
    green "$base — frontmatter present"
  else
    yellow "$base — missing frontmatter (run processing step)"
  fi
done < <(find "$VAULT/EN1213" -path "*/raw/*.md" -not -name ".DS_Store" -print0)

# ── CHECK 4: Module index files exist ────────────────────────────────────────
echo ""
echo "[ 4 ] Module index files"
echo "──────────────────────────────────────────────────"

modules=$(find "$VAULT/EN1213" -name "*.md" -path "*/raw/*" \
          -exec grep -h "^module:" {} \; 2>/dev/null | \
          awk '{print $2}' | sort -u)

for mod in $modules; do
  idx="$VAULT/_modules/$mod.md"
  if [[ -f "$idx" ]]; then
    green "_modules/$mod.md exists"
  else
    red "_modules/$mod.md missing — create module index for $mod"
  fi
done

# ── CHECK 5: Subject folders present under EN1213 ────────────────────────────
echo ""
echo "[ 5 ] EN1213 subject folders"
echo "──────────────────────────────────────────────────"

for subject in thermodynamics-fluid-mechanics mechanics manufacturing-materials; do
  if [[ -d "$VAULT/EN1213/$subject" ]]; then
    green "EN1213/$subject exists"
  else
    red "EN1213/$subject missing"
  fi
done

# ── CHECK 6: Web clips inbox ─────────────────────────────────────────────────
echo ""
echo "[ 6 ] Web clips inbox"
echo "──────────────────────────────────────────────────"

unsorted=$(find "$VAULT/_web-clips/unsorted" -name "*.md" -not -name "Inbox.md" 2>/dev/null | wc -l | tr -d ' ')
total=$(find "$VAULT/_web-clips" -name "*.md" -not -name "Inbox.md" 2>/dev/null | wc -l | tr -d ' ')

if [[ "$total" -eq 0 ]]; then
  green "No unprocessed web clips"
elif [[ "$unsorted" -gt 0 ]]; then
  yellow "$total clip(s) waiting — $unsorted in unsorted/ (need topic assigned)"
else
  yellow "$total clip(s) waiting to be processed into wiki"
fi

# ── CHECK 7: Web clipper templates present ───────────────────────────────────
echo ""
echo "[ 7 ] Web clipper templates"
echo "──────────────────────────────────────────────────"

expected=("EN1213 - Thermodynamics" "EN1213 - Fluid Mechanics" "EN1213 - Manufacturing and Materials" "EN1213 - Mechanics" "Maths" "General - Unsorted")
for t in "${expected[@]}"; do
  if [[ -f "$VAULT/_web-clipper-templates/$t.json" ]]; then
    green "$t.json"
  else
    red "$t.json missing"
  fi
done

# ── CHECK 8: No lecture files stranded outside EN1213/ ───────────────────────
echo ""
echo "[ 8 ] Stranded lecture files (outside EN1213/)"
echo "──────────────────────────────────────────────────"

stranded=0
while IFS= read -r -d '' file; do
  rel="${file#$VAULT/}"
  # Skip known non-content locations
  [[ "$rel" == .obsidian/* ]] && continue
  [[ "$rel" == _tools/* ]] && continue
  [[ "$rel" == _web-clipper-templates/* ]] && continue
  yellow "$rel — outside EN1213/, should be moved or deleted"
  ((stranded++))
done < <(find "$VAULT" -maxdepth 2 -type f \
  \( -name "*.pptx" -o -name "*.pdf" -o -name "*.docx" -o -name "*.xlsx" -o -name "*.xls" \) \
  -not -path "*/EN1213/*" -not -path "*/.obsidian/*" -print0)

[[ $stranded -eq 0 ]] && green "No stranded lecture files"

# ── CHECK 9: _inbox/ backlog ──────────────────────────────────────────────────
echo ""
echo "[ 9 ] _inbox/ backlog"
echo "──────────────────────────────────────────────────"

inbox_count=$(find "$VAULT/_inbox" -type f \
  \( -name "*.pptx" -o -name "*.pdf" -o -name "*.docx" -o -name "*.md" \) 2>/dev/null | wc -l | tr -d ' ')

if [[ "$inbox_count" -eq 0 ]]; then
  green "_inbox/ is clear"
else
  yellow "$inbox_count file(s) in _inbox/ waiting to be processed (run intake.sh)"
fi

# ── SUMMARY ──────────────────────────────────────────────────────────────────
echo ""
echo "═══════════════════════════════════════════════════"
echo "  Summary: $PASS passed · $WARN warnings · $FAIL failed"
echo "═══════════════════════════════════════════════════"

if [[ $FAIL -gt 0 ]]; then
  echo "  Action needed — fix failures before adding new content."
elif [[ $WARN -gt 0 ]]; then
  echo "  Minor issues to review when convenient."
else
  echo "  All checks passed."
fi
echo ""
