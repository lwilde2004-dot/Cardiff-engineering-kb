# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working in this Obsidian vault.

## Purpose

Personal AI-assisted knowledge base for Cardiff University engineering. Lewis drops raw lecture materials into each subject's `raw/` folder; Claude builds and maintains the wiki from them.

## Vault Structure

```
Claude Uni Brain/
  EN1213/                              ← Engineering module folder
    thermodynamics-fluid-mechanics/    ← Thermo, FM1, FM2
    mechanics/                         ← Statics & Dynamics
    manufacturing-materials/           ← Materials science, processes, testing
  maths/                               ← Engineering Mathematics
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

## Naming Convention

`MODULE CODE - Lecture Title - Lecturer Surname`

Example: `EN1213 - Hydrostatics and Submerged Surfaces - Mashruk.pptx`

## Context

Lewis is a Cardiff University engineering student (EN1213/EN2103). Modules span thermodynamics, fluid mechanics, mechanics (statics & dynamics), manufacturing, materials, maths, and C++.
