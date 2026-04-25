#!/bin/bash
# Convert a lecture file to markdown following the knowledge base protocol.
#
# Usage:
#   bash convert.sh "MODULE - Title - Lecturer.pptx"
#   bash convert.sh "EN1213 - Hydrostatics - Mashruk.pptx" EN1213 "fluid-mechanics/hydrostatics" Mashruk
#
# If module/topic/lecturer are omitted, they are inferred from the filename.

VAULT="/Users/Lewis/Documents/Uni shi/Claude Uni Brain"

if [ -z "$1" ]; then
  echo "Usage: $0 <file> [module] [topic] [lecturer]"
  echo "File must follow naming convention: MODULE - Title - Lecturer.ext"
  exit 1
fi

FILE="$1"
BASE=$(basename "$FILE")
NAME="${BASE%.*}"

# ── Infer module/lecturer from filename if not provided ──────────────────────
if [ -n "$2" ]; then
  MODULE="$2"
else
  MODULE=$(echo "$NAME" | sed 's/ - .*//')
fi

if [ -n "$4" ]; then
  LECTURER="$4"
else
  LECTURER=$(echo "$NAME" | sed 's/.*- //')
fi

if [ -n "$3" ]; then
  TOPIC="$3"
else
  TOPIC="unknown"
fi

# ── Validate naming convention ───────────────────────────────────────────────
if ! echo "$NAME" | grep -qE '^[A-Z]{2}[0-9]{4} - .+ - [A-Za-z]+$'; then
  echo ""
  echo "⚠  WARNING: '$BASE' does not follow the naming convention."
  echo "   Expected format: MODULE - Lecture Title - Lecturer"
  echo "   Example:         EN1213 - Hydrostatics - Mashruk"
  echo ""
  read -p "   Continue anyway? (y/n): " confirm
  [[ "$confirm" != "y" ]] && exit 1
fi

# ── Convert ──────────────────────────────────────────────────────────────────
echo "Converting: $BASE"
echo "  Module:   $MODULE"
echo "  Topic:    $TOPIC"
echo "  Lecturer: $LECTURER"
echo ""

python3 "$VAULT/_system/convert_to_md.py" "$FILE" "$MODULE" "$TOPIC" "$LECTURER" 2>/dev/null

if [ $? -eq 0 ]; then
  MD="${FILE%.*}.md"
  REL="${MD#$VAULT/}"

  # Suggest which wiki folder this likely updates
  WIKI_HINT=""
  case "$TOPIC" in
    thermodynamics*)        WIKI_HINT="EN1213/thermodynamics-fluid-mechanics/wiki/thermodynamics/" ;;
    fluid-mechanics*)       WIKI_HINT="EN1213/thermodynamics-fluid-mechanics/wiki/fluid-mechanics/" ;;
    mechanics/statics*)     WIKI_HINT="EN1213/mechanics/wiki/statics/" ;;
    mechanics/solid*)       WIKI_HINT="EN1213/mechanics/wiki/solid-mechanics/" ;;
    mechanics/dynamics*)    WIKI_HINT="EN1213/mechanics/wiki/dynamics/" ;;
    *manufacturing-proc*)   WIKI_HINT="EN1213/manufacturing-materials/wiki/manufacturing-processes/" ;;
    *materials-science*)    WIKI_HINT="EN1213/manufacturing-materials/wiki/materials-science/" ;;
    *materials-testing*)    WIKI_HINT="EN1213/manufacturing-materials/wiki/materials-testing/" ;;
  esac

  echo "✓ Created: $REL"
  echo ""
  echo "─── Tell Claude ──────────────────────────────────────────"
  echo "\"Process $REL into the wiki\""
  [[ -n "$WIKI_HINT" ]] && echo "Likely updates: $WIKI_HINT"
  echo "──────────────────────────────────────────────────────────"
else
  echo "Conversion failed."
  exit 1
fi
