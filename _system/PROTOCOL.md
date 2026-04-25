# Knowledge Base Protocol

Rules for adding, naming, and processing all content in this vault.

---

## 1. Naming Convention

Every raw lecture file must be named in this exact format:

```
MODULE CODE - Lecture Title - Lecturer Surname
```

**Examples:**
- `EN1213 - Ideal Gases and Gas Laws - Steer.pdf`
- `EN1213 - Hydrostatics and Submerged Surfaces - Mashruk.pptx`
- `MATHS101 - Integration by Parts - Jones.pdf`

**Rules:**
- Module code comes from the module handbook or lecture slide header (e.g. EN1213, EN2103, MATHS101)
- Lecture title is the actual topic covered — not "Lecture 3" or "Week 5"
- Lecturer surname only (no titles)
- Use title case for the lecture title
- No underscores — hyphens and spaces only

**If you cannot identify the module code or lecturer from the file**, name it:
```
UNKNOWN - Lecture Title - Unknown.ext
```
and flag it for correction at the next periodic check.

---

## 2. Intake Workflow

### Option A — Drop zone (recommended, fewest steps)

1. **Drop the file into `_inbox/`** — any filename, no renaming needed.
2. If the watcher is running (`bash watch.sh --bg`), it auto-routes, converts, and prints the Claude prompt.
3. If the watcher isn't running, run `bash intake.sh` to process everything in `_inbox/`.
4. **Tell Claude** the printed prompt, e.g.:
   > "Process EN1213/mechanics/raw/statics/EN1213 - Statics Forces and Resultants - Wu.md into the wiki"

### Option B — Direct drop into `raw/` (watcher handles conversion)

Start the watcher once:
```sh
bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/_system/watch.sh --bg
```
Then drop an already-named file (following the naming convention) directly into the correct `raw/` subfolder. The watcher converts it and prints the Claude prompt.

### Option C — Manual (full control)

```sh
bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/_system/intake.sh "path/to/file"
# or, if already in the right place:
bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/_system/convert.sh "path/to/file" EN1213 "topic/subtopic" Lecturer
```

---

### Folder map (for direct drops into `raw/`)

```
EN1213/
  thermodynamics-fluid-mechanics/raw/
    thermodynamics/     ← ideal gases, first law, steam cycles, entropy
    fluid-mechanics/    ← fluid properties, hydrostatics, Bernoulli, momentum, pipe flow
  mechanics/raw/
    statics/            ← forces, moments, trusses, friction
    solid-mechanics/    ← stress/strain, torsion, beams, failure criteria
    dynamics/           ← kinematics, rotating systems, gear ratios
  manufacturing-materials/raw/
    manufacturing-processes/  ← turning, milling, casting, forming, EDM, 3D printing
    materials-science/        ← atomic structure, crystal structures, phase diagrams
    materials-testing/        ← creep, fatigue, fracture, heat treatment
maths/raw/
coding/raw/
```

---

## 3. Processing Rules (for Claude)

When processing a new lecture file:

1. **Read** the converted `.md` file
2. **Identify** which wiki article(s) it belongs to — update existing articles or create new ones
3. **Add frontmatter** to the converted `.md` if not already present:
   ```yaml
   ---
   module: EN1213
   topic: fluid-mechanics/bernoullis
   lecturer: Allmark
   module_index: "[[/_modules/EN1213]]"
   ---
   ```
4. **Update the module index** at `_modules/MODULE-CODE.md` — add the new lecture to the correct section with a wikilink
5. **Update `thermodynamics-fluid-mechanics/wiki/INDEX.md`** if a new wiki article was created
6. **Check cross-links** — verify the new content links to related wiki articles

---

## 4. Module Linking Rule

All lectures from the same module link to each other through the module index file.

- Every converted `.md` file has `module_index: "[[/_modules/MODULE-CODE]]"` in its frontmatter
- The module index `_modules/MODULE-CODE.md` lists every lecture with a `[[wikilink]]`
- This creates the Obsidian graph connections between all lectures in the same module

**Current modules:**
| File | Module |
|---|---|
| [[_modules/EN1213]] | EN1213 / EN2103 — ThermoFluids |

When a new subject is added (e.g. Mechanics, Maths), create a new module index file in `_modules/`.

---

## 5. Web Clips (Obsidian Web Clipper)

Web clips bypass the naming convention — they come from the browser, not a file. They land in `_web-clips/[topic]/` and are processed separately.

### Importing templates
1. Open the Web Clipper extension → **Templates** → **Import**
2. Import each `.json` file from `_web-clipper-templates/`
3. Six templates are provided — one per subject plus a General fallback

### Clipping a page
1. Open Web Clipper in the browser
2. Select the matching template (e.g. *EN1213 — Thermodynamics*)
3. Optionally highlight key passages before clipping — they appear in the **Highlights** section
4. Clip — the note lands in `_web-clips/[topic]/YYYY-MM-DD - Title.md`

### Processing clips into the wiki
Open the [[_web-clips/Inbox|Web Clips Inbox]] in Obsidian to see all unprocessed clips, then tell Claude Code:

> "Read all web clips in `_web-clips/thermodynamics/` and update the relevant wiki articles."

Claude will read each clip, extract relevant content, update the matching wiki article(s), and remove the `unprocessed` tag from the clip's frontmatter.

### Web clip frontmatter
```yaml
---
type: web-clip
module: EN1213
topic: thermodynamics
source: https://...
author: ...
clipped: 2026-04-25
tags: [web-clip, unprocessed, thermodynamics]
---
```

Once processed, Claude changes `unprocessed` to `processed` so it disappears from the inbox.

---

## 6. Periodic Check

Run `check.sh` from the vault root to verify everything is in order:

```sh
bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/_system/check.sh
```

The script checks:
- All raw files follow the `MODULE CODE - Title - Lecturer` naming format
- All non-epub/doc files have a converted `.md` counterpart
- All converted `.md` files have YAML frontmatter
- Flags any files named `UNKNOWN` for review

Run this **at the start of each new semester** or whenever a batch of lectures is added.
