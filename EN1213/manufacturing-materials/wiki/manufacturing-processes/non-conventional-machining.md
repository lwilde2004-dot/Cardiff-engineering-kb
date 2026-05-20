---
title: Non-Conventional Machining — EDM, Laser, Waterjet, Chemical and MEMS
module: EN1213
topic: manufacturing-materials/manufacturing-processes
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Electrical Discharge Machining - Ryan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Chemical Machining and Waterjet - Lacan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Machine Specificities and Laser Machining - Lacan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing MEMS and Micro-Electro-Mechanical Systems - Lacan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing 3D Printing and Additive Manufacturing - Lacan]]"
module_index: "[[/_modules/EN1213]]"
tags: [manufacturing, manufacturing-materials]
---

# Non-Conventional Machining — EDM, Laser, Waterjet, Chemical and MEMS

Non-conventional (advanced) machining processes use **thermal, chemical, or electrochemical energy** rather than mechanical cutting forces to remove material. They are used when [[conventional-machining|conventional machining]] is impractical — for very hard materials, intricate geometries, heat-sensitive materials, or micro-scale features. Lectured by Dr Michael Ryan (EDM) and Franck Lacan (laser, chemical, MEMS, 3D printing) as part of EN1213/1214/EN2101.

---

## Electro-Discharge Machining (EDM)

EDM removes material from a **conductive** workpiece through controlled electrical discharges (sparks).

**Principle**: Tool electrode and workpiece are both submerged in a dielectric fluid (typically hydrocarbon oil or deionised water) and separated by a small gap. Pulses of electrical voltage cause breakdown of the dielectric fluid across the gap, generating sparks that melt and vaporise tiny craters in both the tool and workpiece. Material removal accumulates from thousands of craters per second.

**Key parameters**:
- Voltage (V)
- Peak current (A)
- Pulse on-time (μs) — longer = more energy per spark = larger crater = higher MRR but rougher surface
- Pulse off-time — allows dielectric to recover

**Advantages**:
- Can machine **any conductive material** regardless of hardness (hardened steel, tungsten carbide, Inconel)
- No cutting forces → no distortion of thin or fragile workpieces
- Complex 3D cavities via **die-sinking EDM**
- Precision holes and slots via **wire EDM** (a thin wire is used as the electrode)

**Disadvantages**: slow MRR; only conductive materials; surface has a heat-affected zone (recast layer); electrode wear.

---

## Laser Machining (Laser Ablation)

A focused laser beam delivers high-intensity energy to the workpiece surface, melting or vaporising material.

**Process variants**:
- **Laser drilling**: high-aspect-ratio micro-holes in aerospace components (e.g. turbine blade cooling holes) where conventional drilling cannot achieve the required depth/diameter ratio
- **Laser cutting**: traversing the beam cuts complex 2D profiles with narrow kerf and no tool wear
- **Laser ablation**: precise, controlled material removal layer by layer

**Advantages**: non-contact (no tool wear, no forces); precise; suitable for brittle materials (ceramics, glass); very fine features.

**Disadvantages**: heat-affected zone; limited depth for a single pass; expensive equipment; may not suit all materials (highly reflective metals).

**Machine selection principle**: the material determines which energy form can be applied — reflective metals (aluminium, copper) absorb laser energy less efficiently and may need UV or pulsed lasers.

---

## Abrasive Waterjet Machining (AWJM)

A high-pressure water jet (up to ~400 MPa) mixed with abrasive particles (garnet) erodes the workpiece through mechanical impact.

**Advantages**: no heat generation (suitable for composites, plastics, glass, stone); can cut very thick sections; no HAZ; no dust (wet process).

**Disadvantages**: slow; noisy; high water/abrasive consumption; not suitable for very hard ceramics.

---

## Chemical Machining (CHM)

Material is removed by controlled chemical dissolution using an etchant (acid or alkali):
- **Maskant** is applied to areas to be protected
- Etchant dissolves exposed areas uniformly

Applications: weight reduction in aerospace panels (chem-milling); PCB circuit board etching (photochemical machining).

**Electrochemical machining (ECM)** uses the same principle but adds electrical current — the workpiece is the anode and dissolves at controlled rate. Very high MRR for hard conductive materials; no tool wear.

---

## MEMS (Micro-Electro-Mechanical Systems)

MEMS devices (accelerometers, pressure sensors, gyroscopes, microphones) are fabricated using processes derived from the semiconductor industry.

**How to make a micro-geometry**:
| Method | Energy |
|--------|--------|
| Conventional/EDM/Laser/Waterjet/Chemical machining | Subtraction |
| Deformation (microforming) | Plastic deformation |
| 3D printing / thin film deposition | Addition |

**Key MEMS fabrication steps**:
- **Photolithography**: UV light through a patterned mask exposes photoresist on a silicon wafer; developer removes exposed (or unexposed) resist to create the pattern
- **Etching**: exposed silicon etched chemically (wet etch) or with plasma (dry/RIE etch)
- **Deposition**: thin films of materials added by CVD, PVD, or sputtering
- **Wafer bonding**: layers bonded together to create 3D structures

Silicon wafers are sliced from a crystal ingot; ingot ends are ground to the correct diameter and surface finish before slicing.

---

## Machine Specificities and Process Selection

Key considerations when selecting a machining process:
1. **Material** — what energy can the material absorb? Hard materials suit EDM; conductive materials suit ECM; all materials suit waterjet
2. **Geometry** — deep holes suit EDM or laser drilling; complex 3D cavities suit wire EDM; flat contours suit laser cutting or waterjet
3. **Quality** — tolerance requirements and surface finish determine the process and parameters
4. **Cost** — setup costs, cycle time, and tool wear all contribute; conventional machining is cheapest for large volumes of machinable materials

---


---

## Key Diagrams

![[EN1213/manufacturing-materials/raw/manufacturing-processes/assets/EN1213 - Manufacturing Electrical Discharge Machining - Ryan/page1-img1.jpeg]]

![[EN1213/manufacturing-materials/raw/manufacturing-processes/assets/EN1213 - Manufacturing Electrical Discharge Machining - Ryan/page1-img2.jpeg]]

## Links

- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/conventional-machining|Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/forming-casting-joining|Forming, Casting and Joining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/additive-manufacturing|Additive Manufacturing — 3D Printing]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures — Materials Effects on Machinability]]
- [[_modules/EN1213|EN1213 Module Index]]
