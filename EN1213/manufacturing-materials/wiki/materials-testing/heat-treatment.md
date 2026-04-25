---
title: Heat Treatment of Steels
module: EN1213
topic: manufacturing-materials/materials-testing
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Heat Treatment - Eaton]]"
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Hardenability and Hardening - Eaton]]"
module_index: "[[/_modules/EN1213]]"
tags: [materials, manufacturing-materials]
---

# Heat Treatment of Steels

Heat treatment exploits the [[ceramics-and-phase-diagrams|iron-carbon phase diagram]] to control the microstructure — and therefore the mechanical properties — of steels. By heating to different temperatures and cooling at different rates, engineers can produce microstructures ranging from soft and ductile (annealed) to extremely hard (quenched martensite). Lectured by Dr Mark Eaton as part of EN1213/EN1214/EN2101.

---

## The Iron-Carbon Phase Diagram Revisited

Key reference temperatures for a eutectoid steel (0.77 wt% C):
- **A1 (727°C)**: eutectoid temperature — austenite ↔ pearlite (ferrite + cementite)
- **A3**: upper critical temperature for hypoeutectoid steels (ferrite dissolved into austenite on heating)
- **Acm**: upper critical line for hypereutectoid steels (cementite dissolved)

Carbon content determines microstructure:
- **Hypoeutectoid** (< 0.77% C): proeutectoid ferrite + pearlite
- **Eutectoid** (0.77% C): 100% pearlite
- **Hypereutectoid** (> 0.77% C): proeutectoid cementite + pearlite

---

## Time-Temperature Transformation (TTT) Diagrams

The TTT diagram shows how phases form as a function of **holding temperature** and **time** after rapid cooling from the austenite region. It is constructed by quenching specimens to different temperatures and monitoring transformation.

Key regions on the TTT diagram:
- **Pearlite region** (high temperature nose): formed by slow diffusion; fine pearlite (higher hardness) at lower temperatures, coarse pearlite (softer) at higher temperatures
- **Bainite region** (intermediate): mixed microstructure of ferrite and fine carbides; tougher than martensite at similar hardness; formed by intermediate cooling rates
- **Martensite start (M_s) and finish (M_f) lines** (low temperature): if austenite is cooled rapidly below M_s, it transforms to martensite without diffusion (diffusionless transformation)

**Critical cooling rate**: the minimum quench rate required to avoid the pearlite/bainite nose and obtain fully martensitic structure.

---

## Martensite

**Martensite** forms when austenite is quenched so fast that carbon atoms have no time to diffuse. The FCC austenite structure transforms to a body-centred **tetragonal** (BCT) structure with carbon atoms trapped in interstitial sites, creating large lattice distortion.

Properties:
- Very **hard and brittle** (hardness up to 65 HRC depending on carbon content)
- High residual stresses due to volume change on transformation
- Must be **tempered** before use to reduce brittleness

---

## Heat Treatment Processes

### Annealing
Heat above A3 (or A1 for process annealing), hold, then **cool very slowly** (in furnace). Result: coarse pearlite → softest, most ductile state. Used to relieve internal stresses or to soften before machining.

**Recrystallisation annealing**: below A1; removes work hardening from cold-worked metal → soft, formable state.

### Normalising
Heat above A3, hold, then **air cool**. Produces fine pearlite — slightly harder and stronger than annealed, more uniform grain structure. Used to improve properties over cast or heavily worked steel.

### Quenching (Hardening)
Heat above A3 (into full austenite region), hold to homogenise carbon distribution, then **quench rapidly** (water, oil, or polymer quench) to form martensite.

Quench media (in order of quench severity): water > oil > polymer > air. More severe quench → higher risk of distortion and cracking (thermal and transformation stresses).

### Tempering
After quenching, martensite is too brittle for most applications. **Tempering** reheats the martensitic steel to 150–700°C, held for 1–2 hours, then air cooled. Carbon atoms partially precipitate as fine carbides → reduces hardness but dramatically improves toughness.

Tempering temperature vs properties:
- Low temperature (150–250°C): slightly reduced hardness; high hardness retained; used for cutting tools, bearings
- Medium temperature (350–500°C): good balance of strength and toughness; springs, hand tools
- High temperature (550–700°C): lower hardness but very tough; structural components

---

## Hardenability

**Hardenability** is the ability of a steel to form martensite at depth when quenched — not to be confused with hardness (which is a property of fully martensitic steel).

Low hardenability steel: only the surface hardens on quench; interior is pearlite/bainite → non-uniform properties.

### Jominy End-Quench Test

Standard test for hardenability:
1. Austenitise a standard bar specimen
2. End-quench with water jet (one end quenches rapidly, the other cools slowly)
3. Grind a flat and measure hardness at 1.5 mm intervals from the quenched end

The **Jominy curve** plots hardness vs distance from quenched end. A steel with high hardenability maintains high hardness far from the quenched end.

**Effect of alloying elements** on hardenability: Mn, Cr, Mo, Ni dissolve in austenite and shift the TTT curve to the right (slower transformation) → lower critical cooling rate needed → higher hardenability.

---

## Surface Hardening

To achieve a hard, wear-resistant surface with a tough core:
- **Case hardening / carburising**: component heated in carbon-rich atmosphere; carbon diffuses into surface (increase C content) → surface can be quenched to high hardness while core remains tough
- **Nitriding**: nitrogen diffuses into surface at 500–570°C; forms hard iron nitrides; no quench required (minimal distortion); produces very hard, wear-resistant surface
- **Induction hardening**: surface rapidly heated by induced eddy currents, then quenched; localised surface hardening without affecting core or bulk chemistry

---

## Links

- [[EN1213/manufacturing-materials/wiki/materials-science/ceramics-and-phase-diagrams|Phase Diagrams — Iron-Carbon System]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures and Defects]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/mechanical-properties|Mechanical Properties and Testing]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[_modules/EN1213|EN1213 Module Index]]
