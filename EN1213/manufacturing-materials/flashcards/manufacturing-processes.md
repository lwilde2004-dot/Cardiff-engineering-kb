---
tags: [flashcards, manufacturing-processes, EN1213]
---

# Manufacturing Processes Flashcards

<!-- Cards added by Claude. Format: ## FC[N] — Concept — Difficulty, then question, ?, answer, --- -->

## FC1 — Material Removal Rate — Formula

State the MRR formula for machining and define each variable and its units.
?
MRR = V_c × f × a_p
V_c = cutting speed (m/min), f = feed (mm/rev or mm/stroke), a_p = depth of cut (mm).
Result in mm³/min (or mm³/rev). Applies to turning, milling, and drilling. Increasing any variable raises productivity but also cutting forces, tool wear, and heat generation.

---

## FC2 — Turning vs Milling — Core

In turning and milling, which component moves (workpiece or cutter)? What machine performs each, and how many cutting teeth does each use?
?
Turning: workpiece rotates; single-point tool is fed longitudinally or transversely → lathe. One cutting edge in contact at a time.
Milling: multi-tooth cutter rotates; workpiece feeds relative to the cutter → milling machine. Multiple teeth engage intermittently → higher MRR possible; better for flat surfaces and profiles.

---

## FC3 — Sand Casting Steps — Core

Outline the five main steps of the sand casting process.
?
1. Pack moulding sand around the pattern in a flask (cope and drag); remove pattern.
2. Place sand cores to create internal cavities.
3. Assemble mould with gating system (sprue → runner → ingate) and riser.
4. Pour molten metal; allow to solidify.
5. Break mould away; clean and fettle the casting.

---

## FC4 — Sand Casting Design Rules — Application

Name four design rules for sand castings and the defect each prevents.
?
1. Draft angles (1–3°) on all vertical surfaces → allows pattern withdrawal without breaking the mould.
2. Avoid abrupt section changes and thick sections → prevents shrinkage porosity and hot tears.
3. Add machining allowance on tight-tolerance surfaces → allows post-cast machining.
4. Place risers above the heaviest sections; use chills → directs solidification and feeds shrinkage.

---

## FC5 — EDM Principle and Material Constraint — Core

How does EDM remove material? What is the key material constraint, and why does EDM suit hard materials that are difficult to machine conventionally?
?
Controlled electrical sparks discharge across a dielectric fluid gap between tool electrode and workpiece, melting and vaporising microscopic craters. Thousands of craters per second accumulate to remove material.
Constraint: workpiece must be electrically conductive. Hardness is irrelevant to the process — sparks erode material regardless, making EDM ideal for hardened steels, tungsten carbide, and Inconel that would destroy conventional cutting tools.

---

## FC6 — EDM vs Laser vs Waterjet — Core

Compare EDM, laser machining, and abrasive waterjet on workpiece material suitability, heat generation, and one key limitation each.
?
EDM: conductive materials only; generates HAZ and recast layer (heat); slow MRR.
Laser: most materials (poor on highly reflective metals like Al, Cu); generates HAZ; expensive equipment.
Abrasive waterjet (AWJM, up to ~400 MPa + garnet): any material; no heat → no HAZ → ideal for composites and heat-sensitive materials; slow and noisy.

---

## FC7 — Forging vs Casting Mechanical Properties — Core

Why does closed-die forging generally give better mechanical properties than sand casting for the same alloy?
?
Forging plastically deforms the material, aligning grain flow lines with the component shape. This improves strength, fatigue resistance, and toughness along the service-load direction. Casting produces a random, often coarser grain structure and may contain internal defects (porosity, shrinkage, hot tears) that act as stress concentrators.

---

## FC8 — SLS vs SLM — Definition

Distinguish SLS from SLM in terms of material, laser action, and whether support structures are needed.
?
SLS (Selective Laser Sintering): sinters nylon (polymer) powder; partial melting bonds particles. No support structures needed — surrounding unsintered powder supports the part during printing.
SLM (Selective Laser Melting): fully melts metal powder (Ti, Inconel, stainless, Al alloys); produces dense metal parts. Support structures required to conduct heat away and prevent distortion from residual stresses. Used in aerospace and medical implants.

---

## FC9 — Additive Manufacturing Workflow — Core

State the five steps common to all additive manufacturing processes, from design to finished part.
?
1. Create 3D CAD model.
2. Convert to STL (triangulated mesh) or 3MF.
3. Slice into layers (typically 0.01–0.3 mm thick).
4. Build layer by layer on machine.
5. Post-process: support removal, surface finishing, and heat treatment (for metal AM parts).

---

## FC10 — Welding HAZ — Definition

What is the heat affected zone (HAZ) in fusion welding, why is it a concern, and which welding method avoids it entirely?
?
The HAZ is the region adjacent to the weld that is not melted but is heated enough to alter microstructure (grain growth, phase changes, loss of precipitation hardening or work hardening). This can reduce strength, toughness, or corrosion resistance near the weld.
Solid-state welding processes (friction welding, ultrasonic welding) join materials without melting → no HAZ formed.
