---
title: Additive Manufacturing — 3D Printing Technologies
module: EN1213
topic: manufacturing-materials/manufacturing-processes
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing 3D Printing and Additive Manufacturing - Lacan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing MEMS and Micro-Electro-Mechanical Systems - Lacan]]"
module_index: "[[/_modules/EN1213]]"
tags: [manufacturing, manufacturing-materials]
---

# Additive Manufacturing — 3D Printing Technologies

Additive manufacturing (AM) — commonly called 3D printing — builds parts by adding material layer by layer, directly from a digital CAD file. Unlike [[conventional-machining|subtractive machining]] (removing material) or [[forming-casting-joining|forming]] (reshaping material), AM adds only where needed. This enables geometries that are impossible to machine or cast: internal channels, lattice structures, and highly complex topology-optimised shapes. Lectured by Franck Lacan as part of EN1213/1214/EN2101.

---

## AM Process Categories

All additive manufacturing processes follow the same workflow:
1. Create a 3D CAD model
2. Convert to STL (triangulated surface mesh) or 3MF
3. Slice into layers (typically 0.01–0.3 mm thick)
4. Send to machine; build layer by layer
5. Post-processing (support removal, finishing, heat treatment)

### Extrusion-Based (FFF/FDM)

**Fused Filament Fabrication (FFF)** / Fused Deposition Modelling (FDM):
- Thermoplastic filament (PLA, ABS, PETG, Nylon) melted and extruded through a nozzle
- Nozzle traces each layer; material solidifies; platform lowers; next layer deposited on top
- Support structures needed for overhangs > ~45°
- Low cost; wide material range; anisotropic strength (weaker between layers)

### Vat Photopolymerisation (SLA / DLP)

- Liquid photopolymer resin cured by UV light (laser point-by-point for SLA; entire layer at once for DLP)
- Very high resolution (< 25 μm); smooth surface finish
- Brittle resins; parts degrade in UV over time; support removal required

### Powder Bed Fusion (SLS / SLM / DMLS)

- Powder bed (polymer for SLS, metal for SLM/DMLS) selectively melted or sintered by laser
- **SLS (Selective Laser Sintering)**: nylon powder sintered; no support structures needed (surrounding powder supports); good functional parts
- **SLM / DMLS**: metal powder fully melted; support structures required (conduct heat away, prevent distortion); produce dense metal parts (Ti, Inconel, stainless, Al alloys)
- Used in aerospace, medical implants, tooling

### Binder Jetting

- Liquid binder selectively deposited onto powder bed to bond particles
- No heat during printing → minimal distortion
- Post-processed by sintering (metal) or infiltration (plaster)
- Good dimensional accuracy; lower density than SLM/DMLS

### Material Jetting

- Droplets of photopolymer or wax deposited and cured layer by layer (similar to inkjet printing)
- Multiple materials/colours in one build; smooth finish; high accuracy
- **Drop on Demand (Solidscape)**: used for investment casting patterns

### Directed Energy Deposition (DED)

- Material (wire or powder) fed into a focused energy source (laser or electron beam) at the build point
- Can repair damaged metallic parts by adding material selectively
- Produces large near-net-shape structures; rougher surface than powder bed

---

## Design for Additive Manufacturing (DfAM)

AM enables:
- **Internal channels and lattice structures** impossible to machine
- **Consolidation of assemblies** — a multi-part assembly redesigned as a single printed part
- **Topology optimisation** — material removed computationally from regions of low stress, leaving organic-looking but structurally efficient shapes (common in aerospace)

Constraints:
- **Overhangs** require support (or clever orientation)
- **Anisotropy**: parts printed in layers are typically weaker perpendicular to the layer direction
- **Post-processing**: most AM processes require some finishing (machining datum surfaces, heat treatment for metals)

---

## AM vs Conventional Manufacturing

| | Conventional | Additive |
|--|-------------|---------|
| Geometry freedom | Limited by tooling | Very high |
| Lead time for first part | Long (tool design) | Short (direct from CAD) |
| Unit cost at high volume | Low | High (slow cycle times) |
| Unit cost at low volume | High | Competitive |
| Material waste | Can be high (machining) | Very low |

---

## Links

- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/conventional-machining|Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/non-conventional-machining|Non-Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/forming-casting-joining|Forming, Casting and Joining]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures]]
- [[_modules/EN1213|EN1213 Module Index]]
