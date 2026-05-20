# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this Obsidian vault.

## Purpose

Personal AI-assisted knowledge base for Cardiff University engineering. Lewis drops raw lecture materials into each subject's `raw/` folder; Claude builds and maintains the wiki from them.

## Vault Structure

```
Claude Uni Brain/
  EN1211/                              ← Engineering Maths and Computation
    raw/topic/                         ← Source PDFs per topic
    wiki/topic/                        ← AI-maintained articles
  EN1213/                              ← Engineering module folder
    thermodynamics-fluid-mechanics/    ← Thermo, FM1, FM2
    mechanics/                         ← Statics & Dynamics
    manufacturing-materials/           ← Materials science, processes, testing
  coding/                              ← C++ and computational methods
  _modules/                            ← Module index files (EN1213.md etc.)
  _inbox/                              ← Drop zone for new lecture files
  _modules/                            ← Module index files (EN1213.md etc.)
  _web-clips/                          ← Clipped web content
  _system/                             ← All vault tooling (scripts, templates, protocol)
    check.sh                           ← Protocol compliance check
    convert.sh                         ← Manual file conversion
    intake.sh                          ← Smart intake (route + rename + convert)
    watch.sh / watch.py                ← File watcher (auto-converts on file drop)
    PROTOCOL.md                        ← Full intake and naming rules
  INDEX.md                             ← Vault navigation
  Dashboard.md                         ← Live Dataview dashboard
```

Each subject follows the same internal structure:
- `raw/` — source material named `MODULE - Title - Lecturer.ext`. Never modify.
- `wiki/` — AI-maintained articles. One `.md` per topic, always with an `INDEX.md`.
- `outputs/` — revision notes, formula sheets, worked answers.
- `practice-questions/` — exam-style questions with full worked solutions, one `.md` per topic.

## Practice Questions

When generating practice questions, **always append them to the correct file**:

| Topic | File |
|-------|------|
| Thermodynamics | `EN1213/thermodynamics-fluid-mechanics/practice-questions/thermodynamics.md` |
| Fluid Mechanics | `EN1213/thermodynamics-fluid-mechanics/practice-questions/fluid-mechanics.md` |
| Statics | `EN1213/mechanics/practice-questions/statics.md` |
| Solid Mechanics | `EN1213/mechanics/practice-questions/solid-mechanics.md` |
| Dynamics | `EN1213/mechanics/practice-questions/dynamics.md` |
| Manufacturing Processes | `EN1213/manufacturing-materials/practice-questions/manufacturing-processes.md` |
| Materials Science | `EN1213/manufacturing-materials/practice-questions/materials-science.md` |
| Materials Testing | `EN1213/manufacturing-materials/practice-questions/materials-testing.md` |

Each question must follow this format:
```
## Q[N] — [Topic] — [Easy/Medium/Hard]

**Given:** ...
**Find:** ...

---

**Solution:**
[Step-by-step working]

**Answer:** [numerical result with units]
```

Number questions sequentially within each file (check the last Q number before adding). Always include units, show full working, and verify answers numerically where possible.

## Flashcards

### File locations

| Topic | File |
|-------|------|
| Thermodynamics | `EN1213/thermodynamics-fluid-mechanics/flashcards/thermodynamics.md` |
| Fluid Mechanics | `EN1213/thermodynamics-fluid-mechanics/flashcards/fluid-mechanics.md` |
| Statics | `EN1213/mechanics/flashcards/statics.md` |
| Solid Mechanics | `EN1213/mechanics/flashcards/solid-mechanics.md` |
| Dynamics | `EN1213/mechanics/flashcards/dynamics.md` |
| Manufacturing Processes | `EN1213/manufacturing-materials/flashcards/manufacturing-processes.md` |
| Materials Science | `EN1213/manufacturing-materials/flashcards/materials-science.md` |
| Materials Testing | `EN1213/manufacturing-materials/flashcards/materials-testing.md` |
| Exam 2 Materials MCQ (exam-targeted) | `EN1213/manufacturing-materials/flashcards/exam2-materials-mcq.md` |

### Plugin required

**Obsidian Spaced Repetition** (community plugin, by st3v3nmw). Install via: Settings → Community plugins → Browse → search "Spaced Repetition". No extra configuration needed — it detects files tagged `flashcard` automatically.

This plugin provides:
- A flip-card review interface (question shown → click **Show Answer** to reveal back)
- An **Edit** pencil icon during review that jumps directly to that card in the file
- Spaced repetition scheduling (Easy / Good / Hard buttons after reveal)

### Card format

Each flashcard file has `tags: [flashcard]` in its frontmatter — the plugin treats every `?`-separated block in that file as a card. No inline `#flashcard` tags needed.

```
## FC[N] — [Concept] — [Core/Formula/Definition/Application]

[Question — clear, single-concept, exam-style]
?
[Answer — concise, include units and key conditions where relevant]

---
```

- Number cards sequentially within the file — check the last FC number before appending.
- Do **not** modify any `sr-due` / `sr-interval` / `sr-ease` frontmatter fields the plugin adds — those are its scheduling state.
- Keep answers tight: 1–4 lines maximum. Full derivations belong in the wiki.
- Difficulty labels: `Core` (must-know), `Formula` (equation recall), `Definition`, `Application` (worked-step recall).

### Editing cards

- **During review**: click the pencil (Edit) icon in the SR plugin review panel — it opens the file scrolled to that card.
- **Any time**: open the `.md` file in Obsidian and edit directly. The heading and `?` separator must be preserved; everything else is free to change.
- When Lewis says *"edit FC[N] in [topic]"*, Claude reads the file, locates the card by its number, and applies the requested change in place.

### Generating flashcards

When Lewis says *"make flashcards for [topic]"* or *"add flashcards on [concept]"*:
1. Read the relevant wiki article(s) to source content.
2. Generate cards covering: key definitions, named equations with variable meanings, conditions/assumptions, and one application-type card per major concept.
3. Default to **10 cards** unless a number is specified.
4. Append to the correct file from the table above.
5. Report how many cards were added and which file.

### Interactive quiz session

When Lewis says *"quiz me on [topic]"* or *"flashcard session — [topic]"*:
1. Read the flashcard file for that topic.
2. State the number of cards available and ask if Lewis wants all or a subset (e.g. "Core only", "10 random").
3. For each card:
   - Display the card number and question only.
   - Wait for Lewis to answer or type `reveal`.
   - Show the answer.
   - Ask Lewis to self-rate: **got it** / **shaky** / **missed it**.
4. After all cards, report the session score (e.g. "8/10 got it, 1 shaky, 1 missed").
5. Optionally offer to re-run only the missed/shaky cards.

Do **not** show the answer before Lewis responds or types `reveal`.

## Protocol

See `PROTOCOL.md` for the full intake workflow. In brief:

1. Rename file: `MODULE - Lecture Title - Lecturer.ext`
2. Place in correct `raw/topic/` subfolder
3. Convert: `bash convert.sh "path/to/file"`
4. Tell Claude: *"Process EN1213 - Title - Lecturer.md into the wiki"*

When processing a new lecture, Claude must:
- Read the converted `.md`
- Update or create the relevant wiki article(s)
- Ensure the converted `.md` has YAML frontmatter
- Add the lecture to `_modules/MODULE-CODE.md`
- Update `wiki/INDEX.md` if a new article was created
- **Include key diagrams**: scan the converted `.md` for `![[assets/...]]` image references that appear near important content (equations, named concepts, worked examples). Add a `## Key Diagrams` section to the wiki article before the `## Links` section containing the most relevant 2–4 images. Images are stored at `assets/{source-file-stem}/slide{N}-img{ID}.{ext}` relative to the raw subfolder.

## Naming Convention

`MODULE CODE - Lecture Title - Lecturer Surname`

Example: `EN1213 - Hydrostatics and Submerged Surfaces - Mashruk.pptx`

## Context

Lewis is a Cardiff University engineering student (EN1213/EN2103). Modules span thermodynamics, fluid mechanics, mechanics (statics & dynamics), manufacturing, materials, maths, and C++.
