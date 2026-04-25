#!/usr/bin/env python3
"""
File watcher for the Cardiff University Knowledge Base.

Watches two things:
  1. All raw/ folders — converts files dropped directly into the right place.
  2. _inbox/ — routes, renames, converts, and prints the Claude prompt for
     anything dropped into the generic drop zone.

Usage:
    python3 watch.py
    bash watch.sh           # wrapper with --bg / --stop flags
"""

import os
import re
import sys
import time
import shutil
import subprocess
from pathlib import Path
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

VAULT     = Path("/Users/Lewis/Documents/Uni shi/Claude Uni Brain")
CONVERTER = Path(__file__).parent / "convert_to_md.py"
INBOX     = VAULT / "_inbox"
CONVERTIBLE = {".pptx", ".pdf", ".docx", ".xlsx", ".xls"}

# ── Topic routing ──────────────────────────────────────────────────────────────

ROUTES = [
    (r"ideal.gas|first.law|sfee|nfee|rankine|carnot|entropy|reversib|steam.power|thermo(?!dynamic.?fluid)",
     "EN1213/thermodynamics-fluid-mechanics/raw/thermodynamics",
     "thermodynamics"),
    (r"fluid.mech|hydrostatic|bernoulli|manometer|pitot|venturi|viscosity|reynolds|laminar|turbulent|pipe.loss|weir|orifice|dimensional.anal|fluid.prop|pressure.meas|fm[12]",
     "EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics",
     "fluid-mechanics"),
    (r"solid.mech|axial.load|shear.stress|torsion|beam.bend|beams.part|failure.crit|stress.element|young.s.modulus|statically.indet",
     "EN1213/mechanics/raw/solid-mechanics",
     "mechanics/solid-mechanics"),
    (r"statics|force.*result|moment.*torque|truss|frame.anal|varignon|couple.*load|friction.*coulomb|free.body.diag",
     "EN1213/mechanics/raw/statics",
     "mechanics/statics"),
    (r"dynamics|kinematic|kinetics|circular.motion|relative.motion|gear.ratio|moment.of.inertia|rotating.sys|general.plane|kinematic.chain",
     "EN1213/mechanics/raw/dynamics",
     "mechanics/dynamics"),
    (r"turning|milling|drilling|casting|forming|joining|edm|electrical.discharge|laser.mach|waterjet|chemical.mach|mems|3d.print|additive|broach",
     "EN1213/manufacturing-materials/raw/manufacturing-processes",
     "manufacturing-materials/manufacturing-processes"),
    (r"crystal|ceramic|phase.diagram|atom|bonding|material.prop|amorphous|dislocation|bcc|fcc|hcp|polycrystalline",
     "EN1213/manufacturing-materials/raw/materials-science",
     "manufacturing-materials/materials-science"),
    (r"creep|fatigue|fracture|heat.treat|harden|tempering|quench|hardenability|failure.anal|ttt.diagram|martensite|mechanical.test",
     "EN1213/manufacturing-materials/raw/materials-testing",
     "manufacturing-materials/materials-testing"),
]

WIKI_TARGETS = {
    "thermodynamics":                              "EN1213/thermodynamics-fluid-mechanics/wiki/thermodynamics/",
    "fluid-mechanics":                             "EN1213/thermodynamics-fluid-mechanics/wiki/fluid-mechanics/",
    "mechanics/statics":                           "EN1213/mechanics/wiki/statics/",
    "mechanics/solid-mechanics":                   "EN1213/mechanics/wiki/solid-mechanics/",
    "mechanics/dynamics":                          "EN1213/mechanics/wiki/dynamics/",
    "manufacturing-materials/manufacturing-processes": "EN1213/manufacturing-materials/wiki/manufacturing-processes/",
    "manufacturing-materials/materials-science":   "EN1213/manufacturing-materials/wiki/materials-science/",
    "manufacturing-materials/materials-testing":   "EN1213/manufacturing-materials/wiki/materials-testing/",
}


def route(name: str):
    """Return (dest_folder, topic) or (None, None) if no match."""
    n = name.lower()
    for pattern, folder, topic in ROUTES:
        if re.search(pattern, n):
            return VAULT / folder, topic
    return None, None


def infer_metadata(filepath: Path):
    """Extract module, topic, lecturer from path + filename."""
    name = filepath.stem
    parts = [p.strip() for p in name.split(" - ")]
    module   = parts[0] if re.match(r'^[A-Z]{2}[0-9]{4}$', parts[0]) else "EN1213"
    lecturer = parts[-1] if len(parts) >= 3 else "UNKNOWN"

    try:
        raw_idx = list(filepath.parts).index("raw")
        topic_parts = filepath.parts[raw_idx + 1:-1]
        # Build topic from subject folder + raw subfolder
        subject = filepath.parts[raw_idx - 1]  # e.g. "mechanics"
        sub = filepath.parts[raw_idx + 1] if len(filepath.parts) > raw_idx + 1 else "unknown"
        if subject in ("thermodynamics-fluid-mechanics",):
            topic = sub  # just "thermodynamics" or "fluid-mechanics"
        elif subject in ("mechanics", "manufacturing-materials"):
            topic = f"{subject}/{sub}"
        else:
            topic = sub
    except (ValueError, IndexError):
        topic = "unknown"

    return module, topic, lecturer


def run_convert(filepath: Path, module: str, topic: str, lecturer: str) -> bool:
    result = subprocess.run(
        [sys.executable, str(CONVERTER), str(filepath), module, topic, lecturer],
        capture_output=True, text=True
    )
    return result.returncode == 0


def print_box(lines):
    width = max(len(l) for l in lines) + 4
    print("  ┌" + "─" * (width - 2) + "┐")
    for l in lines:
        print(f"  │ {l:<{width-4}} │")
    print("  └" + "─" * (width - 2) + "┘")


# ── Handlers ───────────────────────────────────────────────────────────────────

class RawFolderHandler(FileSystemEventHandler):
    """Converts files dropped directly into an existing raw/ subfolder."""

    def on_created(self, event):
        if event.is_directory:
            return
        path = Path(event.src_path)
        if path.suffix.lower() not in CONVERTIBLE:
            return
        if path.name.startswith(("~", ".")):
            return
        if path.with_suffix(".md").exists():
            return

        time.sleep(1.5)
        if not path.exists():
            return

        module, topic, lecturer = infer_metadata(path)
        wiki = WIKI_TARGETS.get(topic, "check _modules/EN1213.md")

        print(f"\n{'─'*54}")
        print(f"  New file in raw/: {path.name}")
        print(f"  Module: {module}  |  Topic: {topic}  |  Lecturer: {lecturer}")

        if run_convert(path, module, topic, lecturer):
            rel = str(path.with_suffix(".md").relative_to(VAULT))
            print(f"  ✓ Converted → {path.stem}.md")
            print(f"\n  Tell Claude:")
            print(f"  \"Process {rel} into the wiki\"")
            print(f"  Likely updates: {wiki}")
        else:
            print(f"  ✗ Conversion failed")
        print(f"{'─'*54}")


class InboxHandler(FileSystemEventHandler):
    """Routes + renames + converts files dropped into _inbox/."""

    def on_created(self, event):
        if event.is_directory:
            return
        path = Path(event.src_path)
        if path.suffix.lower() not in CONVERTIBLE:
            return
        if path.name.startswith(("~", ".")):
            return

        time.sleep(1.5)
        if not path.exists():
            return

        name = path.stem
        dest_folder, topic = route(name)

        if dest_folder is None:
            print(f"\n  ⚠ Inbox: {path.name}")
            print(f"  Could not auto-route. Run:")
            print(f"  bash intake.sh \"{path}\"")
            return

        # Build canonical filename
        parts = [p.strip() for p in name.split(" - ")]
        module   = parts[0] if re.match(r'^[A-Z]{2}[0-9]{4}$', parts[0]) else "EN1213"
        lecturer = parts[-1] if len(parts) >= 3 else "UNKNOWN"
        # Use existing name if already canonical, else keep as-is (intake.sh handles rename)
        canonical = name if re.match(r'^[A-Z]{2}[0-9]{4} - .+ - [A-Za-z]+$', name) else name

        dest_folder.mkdir(parents=True, exist_ok=True)
        dest_path = dest_folder / f"{canonical}{path.suffix}"
        shutil.copy2(path, dest_path)
        path.unlink()  # remove from inbox

        wiki = WIKI_TARGETS.get(topic, "check _modules/EN1213.md")

        if run_convert(dest_path, module, topic, lecturer):
            rel = str(dest_path.with_suffix(".md").relative_to(VAULT))
            print_box([
                f"Inbox → {dest_folder.relative_to(VAULT)}/",
                f"File:   {canonical}{path.suffix}",
                f"",
                f"Tell Claude:",
                f"\"Process {rel} into the wiki\"",
                f"Likely updates: {wiki}",
            ])
        else:
            print(f"  ✗ Conversion failed for {path.name}")


# ── Setup ──────────────────────────────────────────────────────────────────────

def find_raw_dirs(roots):
    dirs = []
    for root in roots:
        if not root.exists():
            continue
        for dirpath, dirnames, _ in os.walk(root):
            dirnames[:] = [d for d in dirnames if not d.startswith(".")]
            p = Path(dirpath)
            if p.name == "raw" or "raw" in p.parts:
                dirs.append(str(dirpath))
    return list(set(dirs))


def main():
    watch_roots = [VAULT / "EN1213", VAULT / "maths", VAULT / "coding"]
    raw_dirs = find_raw_dirs(watch_roots)

    INBOX.mkdir(exist_ok=True)

    observer = Observer()
    raw_handler   = RawFolderHandler()
    inbox_handler = InboxHandler()

    for d in raw_dirs:
        observer.schedule(raw_handler, d, recursive=True)
    observer.schedule(inbox_handler, str(INBOX), recursive=False)

    print("\n╔══════════════════════════════════════════════════╗")
    print("║  Knowledge Base Watcher — running                ║")
    print("╠══════════════════════════════════════════════════╣")
    print(f"║  Watching {len(raw_dirs)} raw/ folders + _inbox/")
    print("║")
    print("║  Raw folders: drop a named lecture file in the")
    print("║  correct raw/topic/ subfolder → auto-converts.")
    print("║")
    print("║  _inbox/:  drop any file here → auto-routes,")
    print("║  renames, converts, and prints the Claude prompt.")
    print("║  (Use intake.sh if the auto-name needs editing.)")
    print("║")
    print("║  Press Ctrl+C to stop.")
    print("╚══════════════════════════════════════════════════╝\n")

    observer.start()
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
        print("\nWatcher stopped.")
    observer.join()


if __name__ == "__main__":
    main()
