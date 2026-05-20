#!/bin/bash
# intake.sh — One-step intake for any lecture file.
#
# Drop a file anywhere, run this script — it routes, renames, converts,
# and prints the exact Claude prompt to paste.
#
# Usage:
#   bash intake.sh                       # process every file in _inbox/
#   bash intake.sh "Week 1 Turning.pdf"  # one specific file
#   bash intake.sh *.pptx                # glob

VAULT="/Users/Lewis/Documents/Uni shi/Claude Uni Brain"
CONVERTER="$VAULT/_system/convert_to_md.py"
CONVERTIBLE_RE='\.(pptx|pdf|docx|xlsx|xls)$'

green()  { echo "  ✓ $1"; }
yellow() { echo "  ⚠ $1"; }
red()    { echo "  ✗ $1"; }

# ── Topic routing ──────────────────────────────────────────────────────────────

route_file() {
  local name_lower
  name_lower=$(echo "$1" | tr '[:upper:]' '[:lower:]')

  if echo "$name_lower" | grep -qiE "exam|past.paper|formula.sheet|revision|specimen.paper|mock|test.paper"; then
    echo "EN1213/Exam papers/Year 1 Spring"; return; fi
  if echo "$name_lower" | grep -qiE "ideal.gas|first.law|sfee|nfee|rankine|carnot|entropy|reversib|steam.cycle|steam.power|thermo"; then
    echo "EN1213/thermodynamics-fluid-mechanics/raw/thermodynamics"; return; fi
  if echo "$name_lower" | grep -qiE "fluid.mech|hydrostatic|bernoulli|manometer|pitot|venturi|viscosity|reynolds|laminar|turbulent|pipe.loss|weir|orifice|dimensional.anal|fluid.prop|pressure.meas|fm1|fm2"; then
    echo "EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics"; return; fi
  if echo "$name_lower" | grep -qiE "solid.mech|axial.load|shear.stress|torsion|beam.bend|beams.part|failure.crit|stress.element|young.s.modulus|statically.indet"; then
    echo "EN1213/mechanics/raw/solid-mechanics"; return; fi
  if echo "$name_lower" | grep -qiE "statics|force.*result|moment.*torque|truss|frame.anal|varignon|couple.*load|friction.*coulomb|free.body.diag"; then
    echo "EN1213/mechanics/raw/statics"; return; fi
  if echo "$name_lower" | grep -qiE "dynamics|kinematic|kinetics|circular.motion|relative.motion|gear.ratio|moment.of.inertia|rotating.sys|general.plane|kinematic.chain"; then
    echo "EN1213/mechanics/raw/dynamics"; return; fi
  if echo "$name_lower" | grep -qiE "turning|milling|drilling|casting|forming|joining|edm|electrical.discharge|laser.mach|waterjet|water.jet|chemical.mach|mems|3d.print|additive|broach"; then
    echo "EN1213/manufacturing-materials/raw/manufacturing-processes"; return; fi
  if echo "$name_lower" | grep -qiE "crystal|ceramic|phase.diagram|atom|bonding|material.prop|amorphous|dislocation|bcc|fcc|hcp|polycrystalline"; then
    echo "EN1213/manufacturing-materials/raw/materials-science"; return; fi
  if echo "$name_lower" | grep -qiE "creep|fatigue|fracture|heat.treat|harden|tempering|quench|hardenability|failure.anal|ttt.diagram|martensite|mechanical.test"; then
    echo "EN1213/manufacturing-materials/raw/materials-testing"; return; fi
  echo ""
}

topic_for_folder() {
  local folder="$1"
  case "$folder" in
    *thermodynamics-fluid-mechanics/raw/thermodynamics) echo "thermodynamics" ;;
    *thermodynamics-fluid-mechanics/raw/fluid-mechanics) echo "fluid-mechanics" ;;
    *mechanics/raw/statics)                             echo "mechanics/statics" ;;
    *mechanics/raw/solid-mechanics)                     echo "mechanics/solid-mechanics" ;;
    *mechanics/raw/dynamics)                            echo "mechanics/dynamics" ;;
    *manufacturing-materials/raw/manufacturing-processes) echo "manufacturing-materials/manufacturing-processes" ;;
    *manufacturing-materials/raw/materials-science)     echo "manufacturing-materials/materials-science" ;;
    *manufacturing-materials/raw/materials-testing)     echo "manufacturing-materials/materials-testing" ;;
    *) echo "unknown" ;;
  esac
}

wiki_target() {
  case "$1" in
    thermodynamics)                              echo "EN1213/thermodynamics-fluid-mechanics/wiki/thermodynamics/" ;;
    fluid-mechanics)                             echo "EN1213/thermodynamics-fluid-mechanics/wiki/fluid-mechanics/" ;;
    mechanics/statics)                           echo "EN1213/mechanics/wiki/statics/" ;;
    mechanics/solid-mechanics)                   echo "EN1213/mechanics/wiki/solid-mechanics/" ;;
    mechanics/dynamics)                          echo "EN1213/mechanics/wiki/dynamics/" ;;
    manufacturing-materials/manufacturing-*)     echo "EN1213/manufacturing-materials/wiki/manufacturing-processes/" ;;
    manufacturing-materials/materials-science)   echo "EN1213/manufacturing-materials/wiki/materials-science/" ;;
    manufacturing-materials/materials-testing)   echo "EN1213/manufacturing-materials/wiki/materials-testing/" ;;
    *) echo "check _modules/EN1213.md" ;;
  esac
}

select_topic_menu() {
  echo "" >&2
  echo "  Topic not detected. Select one:" >&2
  echo "" >&2
  echo "    1) Thermodynamics        5) Dynamics" >&2
  echo "    2) Fluid Mechanics       6) Manufacturing Processes" >&2
  echo "    3) Statics               7) Materials Science" >&2
  echo "    4) Solid Mechanics       8) Materials Testing" >&2
  echo "" >&2
  echo "    9) New subject — create a new folder" >&2
  echo "    0) Skip this file" >&2
  echo "" >&2
  printf "  Choice [0-9]: " >&2
  read -r choice
  case "$choice" in
    1) echo "EN1213/thermodynamics-fluid-mechanics/raw/thermodynamics" ;;
    2) echo "EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics" ;;
    3) echo "EN1213/mechanics/raw/statics" ;;
    4) echo "EN1213/mechanics/raw/solid-mechanics" ;;
    5) echo "EN1213/mechanics/raw/dynamics" ;;
    6) echo "EN1213/manufacturing-materials/raw/manufacturing-processes" ;;
    7) echo "EN1213/manufacturing-materials/raw/materials-science" ;;
    8) echo "EN1213/manufacturing-materials/raw/materials-testing" ;;
    9)
      echo "" >&2
      echo "  What is this subject? (e.g. 'Chemistry' or 'Maths - Calculus')" >&2
      printf "  Subject name: " >&2
      read -r new_subject
      local new_folder
      new_folder=$(echo "$new_subject" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr '/' '-')
      local new_path="EN1213/$new_folder/raw"
      mkdir -p "$VAULT/$new_path"
      echo "" >&2
      echo "  ✓ Created: $new_path/" >&2
      echo "  Tell Claude: 'Set up a wiki and formula sheet for $new_subject'" >&2
      echo "$new_path"
      ;;
    *) echo "" ;;
  esac
}

# ── Name parsing ───────────────────────────────────────────────────────────────

parse_module() {
  # Return module code if filename starts with one, else "EN1213"
  local name="$1"
  if echo "$name" | grep -qE '^[A-Z]{2}[0-9]{4} - '; then
    echo "$name" | sed 's/ - .*//'
  else
    echo "EN1213"
  fi
}

parse_lecturer() {
  local name="$1"
  # If already canonical "MODULE - Title - Lecturer", take the last part
  if echo "$name" | grep -qE '^[A-Z]{2}[0-9]{4} - .+ - [A-Za-z]+$'; then
    echo "$name" | sed 's/.* - //'
  else
    echo "UNKNOWN"
  fi
}

build_canonical() {
  local name="$1" module="$2" lecturer="$3"
  # If already canonical, return as-is
  if echo "$name" | grep -qE '^[A-Z]{2}[0-9]{4} - .+ - [A-Za-z]+$'; then
    echo "$name"; return
  fi
  # Clean up the raw name to use as title
  local title
  title=$(echo "$name" \
    | sed 's/^[0-9]* //g' \
    | sed 's/ ([0-9_\-]*)//g' \
    | sed 's/ - [A-Za-z]*$//g' \
    | sed 's/^Lecture [0-9.]* - //I' \
    | sed 's/^Week [0-9A-Z]* - //I' \
    | sed 's/^STATICS - LECTURE [0-9]* - //I' \
    | sed 's/ *$//g')
  echo "$module - $title - $lecturer"
}

# ── Main processing function ───────────────────────────────────────────────────

process_file() {
  local src="$1"
  local base ext name
  base=$(basename "$src")
  ext="${base##*.}"
  name="${base%.*}"

  echo ""
  echo "┌── $base"

  # Route
  local dest_folder
  dest_folder=$(route_file "$name")
  if [[ -z "$dest_folder" ]]; then
    dest_folder=$(select_topic_menu)
  fi
  if [[ -z "$dest_folder" ]]; then
    echo "└── skipped"
    return 1
  fi

  # Build canonical name
  local module lecturer canonical
  module=$(parse_module "$name")
  lecturer=$(parse_lecturer "$name")
  canonical=$(build_canonical "$name" "$module" "$lecturer")

  local dest_path="$VAULT/$dest_folder/$canonical.$ext"
  local topic
  topic=$(topic_for_folder "$dest_folder")

  echo "│  Rename →  $canonical.$ext"
  echo "│  Route  →  $dest_folder/"
  printf "│\n│  Confirm? [y / type new name / n]: "
  read -r answer

  case "$answer" in
    n|N) echo "└── skipped"; return 1 ;;
    y|Y|"") ;;  # use canonical as-is
    *) canonical="$answer"; dest_path="$VAULT/$dest_folder/$canonical.$ext" ;;
  esac

  # Move
  mkdir -p "$VAULT/$dest_folder"
  cp "$src" "$dest_path"

  # Convert
  python3 "$CONVERTER" "$dest_path" "$module" "$topic" "$lecturer" 2>/dev/null
  if [[ $? -ne 0 ]]; then
    echo "└── ✗ conversion failed"; return 1
  fi

  local rel="${dest_path#$VAULT/}"
  local rel_md="${rel%.*}.md"
  local wiki
  wiki=$(wiki_target "$topic")

  echo "│  ✓ Created: $canonical.md"
  echo "│"
  echo "│  ── Tell Claude ─────────────────────────────────────"
  echo "│  \"Process $rel_md into the wiki\""
  echo "│  Likely updates: $wiki"
  echo "└──────────────────────────────────────────────────────"

  # Remove from inbox if that's where it came from
  if [[ "$src" == "$VAULT/_inbox/"* ]]; then
    rm "$src"
    echo "   (removed from _inbox)"
  fi
}

# ── Entry point ────────────────────────────────────────────────────────────────

echo ""
echo "══════════════════════════════════════════════════"
echo "  Lecture Intake"
echo "══════════════════════════════════════════════════"

if [[ $# -eq 0 ]]; then
  # Process all files in _inbox/
  shopt -s nullglob
  files=("$VAULT/_inbox/"*.pptx "$VAULT/_inbox/"*.pdf "$VAULT/_inbox/"*.docx "$VAULT/_inbox/"*.xlsx "$VAULT/_inbox/"*.xls)
  if [[ ${#files[@]} -eq 0 ]]; then
    echo "  _inbox/ is empty. Drop files there or pass paths as arguments."
    echo "  Usage: bash intake.sh [file ...]"
    echo ""
    exit 0
  fi
  for f in "${files[@]}"; do
    process_file "$f"
  done
else
  for f in "$@"; do
    if [[ -f "$f" ]]; then
      process_file "$f"
    else
      red "Not found: $f"
    fi
  done
fi

echo ""
