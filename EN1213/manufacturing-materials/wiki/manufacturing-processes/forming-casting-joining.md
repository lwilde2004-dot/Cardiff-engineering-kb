---
title: Forming, Casting and Joining
module: EN1213
topic: manufacturing-materials/manufacturing-processes
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Casting Sand Casting and Design - Ryan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Forming Introduction - Ryan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Joining Processes - Ryan]]"
module_index: "[[/_modules/EN1213]]"
tags: [manufacturing, manufacturing-materials]
---

# Forming, Casting and Joining

While [[conventional-machining|machining]] removes material from a billet, forming and casting **shape material without significant material loss**. Joining then combines separately manufactured parts into assemblies. These three process families — along with [[non-conventional-machining|advanced machining]] and [[additive-manufacturing|additive manufacturing]] — cover the full range of manufacturing routes. Lectured by Dr Michael Ryan as part of EN1213/1214/EN2101.

---

## Casting

Casting introduces molten material into a mould and allows it to solidify. It is the most versatile shaping process — complex 3D internal and external geometries can be produced in a single step.

### Sand Casting
The oldest and most flexible casting process:
1. **Pattern** (replica of the desired part) is placed in a flask of moulding sand; the sand is compacted around it
2. **Parting line** defined; cope (top half) and drag (bottom half) of the mould are separated; pattern removed
3. **Cores** (sand inserts) placed to create internal cavities
4. **Gating system**: sprue (vertical down-feed), runner (horizontal), ingate (final entry to cavity); **riser** (reservoir to feed solidification shrinkage)
5. Metal poured; allowed to solidify; mould broken away; casting cleaned (fettling)

**Design considerations for sand casting**:
- Add **draft angles** (taper, typically 1–3°) so the pattern can be withdrawn without breaking the mould
- Avoid thin sections (solidify rapidly → cold shuts) and thick sections (solidify slowly → shrinkage porosity)
- Allow material for machining on surfaces requiring tight tolerances (machining allowance)
- Place risers above the heaviest sections; use chills (metal inserts) to control solidification direction

**Defects to avoid**: porosity (gas or shrinkage), misrun (insufficient metal), cold shut (two streams meeting before solidification), hot tear (restrained contraction during solidification).

### Other Casting Processes

| Process | Mould type | Volume | Typical use |
|---------|-----------|--------|-------------|
| Die casting | Permanent metal | High | Automotive (Al, Zn, Mg alloys) |
| Investment (lost wax) | Ceramic shell | Med/Low | Complex aerospace/jewellery |
| Centrifugal casting | Rotating permanent | Med | Pipes, cylinder liners |

---

## Forming

Forming processes use plastic deformation to shape material **without removing it**. Material is stressed beyond yield but not to fracture; the shape is retained after load removal.

### Bulk Forming

**Rolling**: material passed between rotating rolls to reduce thickness and increase length. Used for plates, sheets, rails, structural sections (I-beams, channels).

**Forging**: compressive force applied by hammer or press to shape the workpiece. 
- **Open-die forging**: simple dies; workpiece shaped by localised compression
- **Closed-die (impression-die) forging**: workpiece pressed into die cavities that define the final shape; flash forms at the parting line and is later trimmed
- Forging aligns [[crystal-structures|grain structure]] with the component shape, improving mechanical properties vs casting

**Extrusion**: material forced through a shaped die. Produces constant cross-sections (rods, tubes, structural profiles). Forward extrusion: material flows in the direction of ram movement. Backward extrusion: material flows opposite.

### Sheet Forming

**Sheet metal forming** (pressing/stamping): blank cut from sheet, then drawn, bent, or stretched into shape in a press:
- **Drawing**: cup or shell formed by pulling the blank into a die with a punch
- **Bending**: material bent over a radius; springback (elastic recovery) must be allowed for
- **Deep drawing**: large depth-to-diameter ratio; requires controlled blank holding force to prevent wrinkling

---

## Joining

Joining combines separately manufactured parts permanently or semi-permanently.

### Welding

**Fusion welding**: base materials locally melted; filler metal may be added; joint solidifies on cooling.
- **MIG (GMAW)**: consumable wire electrode; shielded by inert/active gas; widely used for steel and aluminium
- **TIG (GTAW)**: non-consumable tungsten electrode; filler rod added separately; higher quality but slower; preferred for stainless steel and critical joints
- **Resistance spot welding**: electrical current through overlapping sheets; resistance heating melts the interface; no filler; fast; used in automotive bodywork

Key considerations: **heat affected zone (HAZ)** — region adjacent to weld where thermal cycle alters [[crystal-structures|microstructure]] and mechanical properties; distortion from thermal contraction; residual stresses.

**Solid-state welding** (friction welding, ultrasonic welding): joins materials without melting — no HAZ.

### Mechanical Fasteners

**Bolted joints**: removable; bolt in tension (pre-tensioned for critical connections); shear through bolt cross-section for [[torsion-and-shear|shear loading]].

**Riveted joints**: permanent; rivet expanded at one end to clamp parts together; used in aerospace where weight matters and welding is impractical for aluminium alloys (work-hardens in HAZ).

### Adhesive Bonding

Structural adhesives (epoxy, acrylic, anaerobic) bond large surfaces with no stress concentrations from fastener holes. Key in CFRP bonding (aviation, wind turbines). Sensitive to surface preparation, moisture, and temperature.

---

## Links

- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/conventional-machining|Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/non-conventional-machining|Non-Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/additive-manufacturing|Additive Manufacturing]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/heat-treatment|Heat Treatment]]
- [[_modules/EN1213|EN1213 Module Index]]
