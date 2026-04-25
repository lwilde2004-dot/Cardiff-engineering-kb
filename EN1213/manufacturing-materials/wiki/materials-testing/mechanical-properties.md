---
title: Mechanical Properties and Testing
module: EN1213
topic: manufacturing-materials/materials-testing
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/materials-science/EN1213 - Materials Properties and Classification - Eaton]]"
module_index: "[[/_modules/EN1213]]"
tags: [materials, manufacturing-materials]
---

# Mechanical Properties and Testing

Mechanical properties describe how a material responds to applied forces. They are measured through standardised tests that produce data used directly in [[stress-and-strain|structural design]] and material selection. The choice of material for any application depends on matching these properties to the required performance. Lectured by Dr Mark Eaton as part of EN1213/EN1214/EN2101.

---

## The Stress-Strain Curve

The engineering **tensile test** applies an increasing axial load to a standard specimen and records load vs. extension. Converting to stress (σ = F/A₀) and strain (ε = ΔL/L₀) gives the engineering stress-strain curve.

### Key Points on the Curve

| Feature | Description |
|---------|-------------|
| **Elastic region** | Linear; strain recovers fully when load removed; slope = E (Young's modulus) |
| **Proportional limit** | Last point where Hooke's law applies (σ = Eε) |
| **Yield point / 0.2% proof stress** | Onset of permanent plastic deformation; σ_y |
| **Strain hardening region** | Plastic deformation increases dislocation density → material strengthens |
| **Ultimate Tensile Strength (UTS)** | Maximum engineering stress on the curve; neck begins to form |
| **Fracture stress** | Stress at failure (lower than UTS for ductile materials due to necking) |

For materials without a clear yield point (e.g. aluminium alloys), the **0.2% offset proof stress** is used: draw a line parallel to the elastic slope offset by 0.2% strain; intersection with the curve = σ_0.2.

---

## Key Mechanical Properties

### Young's Modulus (E)
Measure of stiffness — resistance to elastic deformation. Determined primarily by the [[atomic-structure-and-bonding|bond type and strength]]:
- Covalent solids (diamond): ~1000 GPa
- Steels: ~200 GPa
- Aluminium alloys: ~70 GPa
- Polymers: ~1–5 GPa

### Yield Strength (σ_y)
The stress at which permanent deformation begins. Can be increased by [[crystal-structures|strengthening mechanisms]]: solid solution, work hardening, precipitation hardening, grain refinement.

### Ductility
Ability to deform plastically before fracture. Measured as:
- **% elongation**: (L_f − L₀)/L₀ × 100
- **% area reduction**: (A₀ − A_f)/A₀ × 100

Ductile materials give warning before failure (visible deformation). Brittle materials fracture suddenly with no warning.

### Toughness
Energy absorbed per unit volume up to fracture = area under the stress-strain curve (units J/m³). A tough material is both strong and ductile.

### Hardness
Resistance to localised plastic deformation (indentation). Measured by:
- **Vickers (HV)**: diamond pyramid indenter; calculated from diagonal of indentation
- **Brinell (HB)**: spherical indenter; used for softer metals and castings
- **Rockwell**: measures depth of indentation under a fixed load; fast and widely used in production

Approximate relationship: UTS (MPa) ≈ 3.3 × HV

---

## Material Classes — Typical Ranges

| Class | E (GPa) | σ_y (MPa) | UTS (MPa) | Ductility |
|-------|---------|----------|----------|-----------|
| Carbon steel | 200 | 250–500 | 400–700 | High |
| Stainless steel (austenitic) | 195 | 200–300 | 500–700 | Very high |
| Aluminium alloy (7075-T6) | 70 | 500 | 570 | Moderate |
| Titanium alloy (Ti-6Al-4V) | 110 | 880 | 950 | Moderate |
| Cast iron | 100–170 | — | 150–400 | Very low (brittle) |
| CFRP | 50–150 (direction dependent) | — | 500–1500 | Low (brittle-like) |

---

## Other Mechanical Tests

### Charpy Impact Test
A notched specimen is struck by a pendulum; the energy absorbed is measured. Used to determine **toughness** (particularly the brittle-ductile transition temperature for steels). Results expressed in Joules.

### Creep Test
A constant load is applied at elevated temperature; strain is measured over time. See [[creep-fatigue-and-fracture|creep article]] for full details.

### Fatigue Test (S-N Curve)
Cyclic load applied at a given stress amplitude; the number of cycles to failure N is recorded. Repeated across a range of amplitudes to produce the S-N (Wöhler) curve. See [[creep-fatigue-and-fracture|fatigue article]] for full details.

---

## Links

- [[EN1213/manufacturing-materials/wiki/materials-science/atomic-structure-and-bonding|Atomic Structure and Bonding]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures and Strengthening]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/heat-treatment|Heat Treatment]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Solid Mechanics — Stress and Strain]]
- [[EN1213/mechanics/wiki/solid-mechanics/failure-criteria|Failure Criteria]]
- [[_modules/EN1213|EN1213 Module Index]]
