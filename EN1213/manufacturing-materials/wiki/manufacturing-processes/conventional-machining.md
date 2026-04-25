---
title: Conventional Machining — Turning, Milling, Drilling and Broaching
module: EN1213
topic: manufacturing-materials/manufacturing-processes
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Turning and Lathe Operations - Ryan]]"
  - "[[EN1213/manufacturing-materials/raw/manufacturing-processes/EN1213 - Manufacturing Milling Drilling and Broaching - Ryan]]"
module_index: "[[/_modules/EN1213]]"
tags: [manufacturing, manufacturing-materials]
---

# Conventional Machining — Turning, Milling, Drilling and Broaching

Machining is a **subtractive manufacturing** process: material is removed from a starting workpiece using cutting tools to produce the final component. Machining produces high-dimensional accuracy and good surface finish but generates waste material (swarf). The key processes — turning, milling, drilling — differ in how the tool and workpiece move relative to each other. Lectured by Dr Michael Ryan as part of EN1213/1214/EN2101.

---

## Key Parameters Common to All Machining

| Parameter | Symbol | Description |
|-----------|--------|-------------|
| Cutting speed | V_c | Speed at which the tool moves through the material (m/min or m/s) |
| Feed | f | Distance the tool advances per revolution or per stroke (mm/rev or mm/stroke) |
| Depth of cut | a_p | How deep the tool cuts into the workpiece (mm) |
| Material Removal Rate | MRR | Volume of material removed per unit time = V_c × f × a_p |

---

## Turning

**Process**: the workpiece revolves; the single-point cutting tool is held stationary (or fed slowly longitudinally/transversely). Carried out on a **lathe**.

Key lathe components:
- **Headstock** (spindle/chuck drives workpiece rotation)
- **Tailstock** (supports the other end of long workpieces)
- **Carriage and cross-slide** (controls tool position in X and Z)
- **Lead screw** (automatic feed, thread cutting)

Turning operations:
- **Plain turning**: reducing diameter along the length
- **Facing**: machining the end face flat
- **Parting off**: cutting the workpiece off the bar
- **Boring**: enlarging an existing hole with a single-point tool
- **Thread cutting**: single-point tool engaged at precise feed rate to match thread pitch
- **Knurling**: embossing a pattern on the surface (no material removal)

Most versatile machine tool; lathes are typically 2-axis (Z along the spindle, X radial) but can be 3-axis with live tooling.

---

## Milling

**Process**: the multi-tooth **cutter revolves** while the **workpiece travels** (feeds) relative to it. Most widely used for flat surfaces, slots, gear teeth, and complex CNC profiles.

Types of milling machine:
- **Vertical mill**: spindle vertical; cavities and pockets can be plunged directly — cantilevered tool grip
- **Horizontal mill**: spindle horizontal; arbor-mounted cutter; better rigidity for heavy cuts
- Both available as manual or CNC; CNC can be 5-axis for complex shapes

Common milling operations:
- **Face milling**: flat top surface with shell mill (many teeth)
- **Peripheral milling**: machining the side of the workpiece
- **Slot/key-seat milling**: end mill cuts slots, T-slots, dovetails
- **Copy milling / CNC profiling**: for complex 2D or 3D contours

Milling direction:
- **Up-cut (conventional) milling**: chip thickness increases from zero — tool tends to lift workpiece
- **Down-cut (climb) milling**: chip thickness decreases — better surface finish, requires backlash-free lead screws

---

## Drilling

**Process**: the rotating drill bit advances axially into the stationary workpiece. Primarily used to produce cylindrical holes.

Drill types:
- **Twist drill** (most common): two cutting edges with helical flutes to eject chips
- **Centre drill**: short and rigid; used to start a hole precisely before drilling
- **Spot drill**: creates a conical indentation to guide the drill
- **Spade drill**: flat insert; used for very large diameter holes

Drill geometry: helix angle, point angle (typically 118° for general use), chisel edge (non-cutting section at the tip — creates thrust force).

Related operations: **reaming** (finishing a drilled hole to tight tolerance), **countersinking**, **counterboring**, **tapping** (cutting internal threads after drilling).

---

## Broaching

**Process**: a multi-tooth **broach** (a long tool with progressively deeper teeth) is pushed or pulled through or across the workpiece in a single stroke. Each tooth removes a small chip; the finished surface matches the final tooth profile.

Applications:
- Internal splines, keyways, square/irregular holes (internal broaching)
- Flat surfaces on high-production components (surface broaching)

Advantages: very high production rates for suitable shapes; excellent surface finish; dimensional repeatability. Disadvantage: expensive tooling; only economic for high volumes.

---

## Links

- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/non-conventional-machining|Non-Conventional Machining]]
- [[EN1213/manufacturing-materials/wiki/manufacturing-processes/forming-casting-joining|Forming, Casting and Joining]]
- [[EN1213/manufacturing-materials/wiki/materials-science/atomic-structure-and-bonding|Atomic Structure and Bonding]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain]]
- [[_modules/EN1213|EN1213 Module Index]]
