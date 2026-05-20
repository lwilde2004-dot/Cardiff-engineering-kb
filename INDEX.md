---
tags: [EN1213, EN1211]
---

# Cardiff University Knowledge Base

Personal AI-assisted knowledge base for Cardiff University engineering. Drop lecture files into a subject's `raw/` folder, then ask Claude to process them into the wiki.

---

## EN1211 — Engineering Maths and Computation

| Topic | Wiki |
|---|---|
| Differentiation, Integration, Applications of Integration | [[EN1211/wiki/INDEX\|EN1211 Wiki Index]] |
| Differential Equations, Partial Differentiation, Series | ↑ |
| Complex Numbers, Matrices, Vectors, Probability & Statistics | ↑ |

```
EN1211/
  raw/topic/   wiki/topic/   outputs/   flashcards/
```

---

## EN1213 — Engineering Modules

| Subject | Wiki Index | Formula Sheet |
|---|---|---|
| [[thermodynamics-fluid-mechanics/wiki/INDEX\|Thermodynamics & Fluid Mechanics]] | EN1213 | [[thermodynamics-fluid-mechanics/outputs/thermodynamics-formula-sheet\|Thermo]] · [[thermodynamics-fluid-mechanics/outputs/fluid-mechanics-formula-sheet\|Fluids]] |
| Mechanics (Statics & Dynamics) | *No lectures yet* | — |
| [[manufacturing-materials/wiki/INDEX\|Manufacturing & Materials]] | EN1213 | *No formula sheet yet* |

```
EN1213/
  thermodynamics-fluid-mechanics/   raw/  wiki/  outputs/
  mechanics/                        raw/  wiki/  outputs/
  manufacturing-materials/          raw/  wiki/  outputs/
```

---

## Other Modules

| Subject | Location |
|---|---|
| Mathematics | `maths/` |
| Coding (C++) | `coding/` |

---

## Module Index

| Module | Index |
|---|---|
| EN1211 — Engineering Maths | [[_modules/EN1211]] |
| EN1213 / EN2103 — ThermoFluids | [[_modules/EN1213]] |

---

## How to Add a New Lecture

1. **Rename** the file: `MODULE - Lecture Title - Lecturer.ext`
2. **Drop** into the correct `EN1213/subject/raw/topic/` folder in Obsidian
3. **Convert** — watcher does this automatically if running, otherwise manually:
   ```sh
   bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/convert.sh "path/to/file"
   ```
4. **Tell Claude Code:** *"Process EN1213 - Title - Lecturer.md into the wiki"*

**Supported formats:** `.pptx` `.pdf` `.docx` `.xlsx` `.xls`

**Watcher** (auto-converts on file drop):
```sh
bash watch.sh --bg    # start in background
bash watch.sh --stop  # stop
```

**Run protocol check:** `bash ~/Documents/Uni\ shi/Claude\ Uni\ Brain/check.sh`

---

## Useful Prompts

**After adding lectures:**
> "Process the new file in `EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/bernoullis/` into the wiki."

**Revision:**
> "Write a 500-word revision summary on entropy using only what's in the wiki."

**Practice questions:**
> "Give me 3 exam-style questions on the Rankine cycle with worked solutions."

**Monthly health check:**
> "Review `EN1213/thermodynamics-fluid-mechanics/wiki/`. Flag contradictions, missing topics, and suggest 3 new articles."

**Generate flashcards:**
> "Make 10 flashcards for thermodynamics — cover the First Law, enthalpy, and steam cycles."

**Quiz session:**
> "Quiz me on fluid mechanics flashcards."
> "Flashcard session — statics, Core cards only."
