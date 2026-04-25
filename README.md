# Cardiff Engineering Knowledge Base

An AI-assisted Obsidian vault for organising Cardiff University engineering lecture notes into a searchable, linked wiki — with Claude integration for study assistance.

Built for EN1213/EN1214 (ThermoFluids, Mechanics, Manufacturing & Materials) but adaptable to any engineering module.

---

## What's included

- **Wiki articles** for every topic across all three subject areas
- **Formula sheets** for Thermodynamics, Fluid Mechanics, Mechanics, and Manufacturing & Materials
- **Practice questions** with full worked solutions, organised by topic
- **Smart intake pipeline** — drop any file, one command routes + renames + converts it
- **Claude Copilot** integration for in-Obsidian AI chat about your notes
- **Graph view** with colour-coded topic groups

---

## Prerequisites

**1. Python 3** with these packages:
```sh
pip3 install pymupdf python-pptx python-docx openpyxl xlrd watchdog
```

**2. Obsidian** — obsidian.md (free)

**3. Claude Code** (optional — for AI processing of new lectures)
```sh
npm install -g @anthropic-ai/claude-code
```

**4. API keys** (for Copilot chat inside Obsidian):
- Anthropic API key → console.anthropic.com
- OpenRouter API key → openrouter.ai (for Vault QA embeddings — nearly free)

---

## Setup

**1. Clone the repo:**
```sh
git clone https://github.com/YOUR_USERNAME/cardiff-engineering-kb.git
cd cardiff-engineering-kb
```

**2. Configure Copilot API keys:**
```sh
cp .obsidian/plugins/copilot/data.json.template .obsidian/plugins/copilot/data.json
```
Edit `data.json` and replace `YOUR_ANTHROPIC_API_KEY` and `YOUR_OPENROUTER_API_KEY`.

**3. Open in Obsidian:**
File → Open Vault → select this folder.

In Obsidian:
- Settings → Community Plugins → enable all (Dataview, Templater, Copilot)
- Settings → Copilot → verify API keys are loaded

**4. (Optional) Start the file watcher:**
```sh
bash _system/watch.sh --bg
```
This auto-converts any lecture file you drop into a `raw/` subfolder or `_inbox/`.

---

## Adding your own lectures

Drop any lecture file (PDF, PPTX, DOCX) into `_inbox/`, then:
```sh
bash _system/intake.sh
```
The script routes the file to the correct subject folder, renames it, converts it to markdown, and prints the Claude prompt to update the wiki.

Or if you have Claude Code installed:
> "Process EN1213/mechanics/raw/statics/EN1213 - Statics Forces - Wu.md into the wiki"

---

## Folder structure

```
_inbox/              ← drop new lecture files here
_modules/            ← auto-generated module indexes
_system/             ← all scripts and tooling
_web-clips/          ← clipped web content (Obsidian Web Clipper)
EN1213/
  thermodynamics-fluid-mechanics/
    raw/             ← your lecture files go here (not tracked by git)
    wiki/            ← AI-maintained notes
    outputs/         ← formula sheets
    practice-questions/
  mechanics/
    raw/
    wiki/
    outputs/
    practice-questions/
  manufacturing-materials/
    raw/
    wiki/
    outputs/
    practice-questions/
```

---

## Running a protocol check

```sh
bash _system/check.sh
```

Verifies naming conventions, converted counterparts, frontmatter, and flags any files in the wrong place.
