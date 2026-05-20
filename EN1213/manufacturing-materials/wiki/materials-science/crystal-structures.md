---
title: Crystal Structures, Defects and Strengthening
module: EN1213
topic: manufacturing-materials/materials-science
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/materials-science/EN1213 - Materials Crystal Structures and Defects - Eaton]]"
module_index: "[[/_modules/EN1213]]"
tags: [materials, manufacturing-materials]
---

# Crystal Structures, Defects and Strengthening

The mechanical properties of metals are not determined solely by [[atomic-structure-and-bonding|bonding type]] — they depend critically on how atoms are **arranged** in space (crystal structure) and the **imperfections** (defects) in that arrangement. A perfect crystal is very strong; real metals are weak because dislocations (line defects) allow slip at stresses far below the theoretical strength. Understanding this connection between microstructure and properties explains why [[heat-treatment|heat treatment]] and alloying can dramatically change a metal's behaviour. Lectured by Dr Mark Eaton as part of EN1213/EN1214/EN2101.

---

## Crystalline vs Amorphous

**Crystalline solid**: atoms arranged in a regular, repeating 3D pattern described by a **unit cell** (the smallest repeating unit).

**Amorphous solid**: no identifiable repeating pattern. Common in polymers (entangled long chains), glasses, and rapidly quenched metals.

**Polycrystalline**: most engineering metals consist of many small crystals (**grains**) with random orientations, separated by **grain boundaries**. Individual grains are crystalline; the grain boundary regions are disordered.

---

## Common Metallic Crystal Structures

### Body-Centred Cubic (BCC)
- Atom at each corner + 1 atom at centre of cube
- Atoms per unit cell: 2
- Packing factor: 0.68
- Examples: iron (α-Fe below 912°C), chromium, tungsten, molybdenum
- Properties: strong but less ductile than FCC; fewer slip systems (48 vs 12)

### Face-Centred Cubic (FCC)
- Atom at each corner + 1 atom at centre of each face
- Atoms per unit cell: 4
- Packing factor: 0.74 (most efficient cubic packing)
- Examples: aluminium, copper, nickel, iron (γ-Fe above 912°C), lead, gold
- Properties: highest ductility of the three structures due to 12 slip systems

### Hexagonal Close-Packed (HCP)
- Hexagonal arrangement; alternating close-packed layers (ABABAB stacking)
- Atoms per unit cell: 6 (effective)
- Packing factor: 0.74 (same as FCC — both are close-packed)
- Examples: titanium, zinc, magnesium, cobalt
- Properties: limited ductility (only 3 slip systems at room temperature); deformation requires twinning at higher stresses

---

## Defects in Crystalline Materials

### Point Defects
- **Vacancy**: a missing atom. Present in all real crystals; concentration increases with temperature
- **Substitutional atom**: a foreign atom occupies a lattice site (e.g. Zn in Cu → brass)
- **Interstitial atom**: a small atom fits between lattice sites (e.g. carbon in iron → steel)

Point defects distort the surrounding lattice, creating local strain fields that impede dislocation movement → solid solution strengthening.

### Linear Defects — Dislocations

A **dislocation** is a line of disrupted bonding through the crystal. Two types:
- **Edge dislocation**: an extra half-plane of atoms inserted into the lattice; the line is perpendicular to the Burgers vector
- **Screw dislocation**: lattice sheared; atomic planes spiral around the dislocation line; Burgers vector parallel to dislocation line

**Why dislocations matter**: plastic deformation occurs by dislocations moving (gliding) on slip planes. The stress required to move a dislocation is far lower than the stress required to shear a perfect crystal — this explains why real metals yield at 1/100th to 1/1000th of the theoretical strength.

**Slip system** = one slip plane + one slip direction. Metals with more slip systems are more ductile (FCC → 12 systems; HCP → 3 systems at room temperature).

### Interfacial Defects
- **Grain boundaries**: disordered interfaces between adjacent grains of different orientations. Obstruct dislocation motion → fine-grained metals are stronger (Hall-Petch relationship: σ_y ∝ d^(-½))
- **Stacking faults**: local region where stacking sequence deviates (e.g. ABAB in an FCC region)
- **Twin boundaries**: mirror-symmetry across the boundary; important deformation mechanism in HCP metals

---

## Strengthening Mechanisms

All strengthening mechanisms work by **impeding dislocation movement**:

| Mechanism | Method | Example |
|-----------|--------|---------|
| **Solid solution strengthening** | Add solute atoms that distort lattice | Carbon in iron (steel); Zinc in copper (brass) |
| **Work hardening (strain hardening)** | Plastically deform → dislocation density increases → dislocations tangle | Cold-rolled sheet, drawn wire |
| **Grain refinement** | Reduce grain size → more grain boundaries | Controlled rolling (HSLA steels) |
| **Precipitation hardening** | Fine second-phase particles pin dislocations | 7075 aluminium alloy, maraging steels |

[[heat-treatment|Heat treatment]] controls precipitation hardening and grain size. Work hardening can be reversed by **annealing** (heating → recrystallisation removes tangled dislocations).

---


---

## Key Diagrams

![[EN1213/manufacturing-materials/raw/materials-science/assets/EN1213 - Materials Crystal Structures and Defects - Eaton/page4-img1.png]]

![[EN1213/manufacturing-materials/raw/materials-science/assets/EN1213 - Materials Crystal Structures and Defects - Eaton/page5-img1.png]]

## Links

- [[EN1213/manufacturing-materials/wiki/materials-science/atomic-structure-and-bonding|Atomic Structure and Bonding]]
- [[EN1213/manufacturing-materials/wiki/materials-science/ceramics-and-phase-diagrams|Ceramics and Phase Diagrams]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/mechanical-properties|Mechanical Properties and Testing]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/heat-treatment|Heat Treatment]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[_modules/EN1213|EN1213 Module Index]]
