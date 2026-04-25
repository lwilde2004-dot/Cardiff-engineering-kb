---
title: EN1213 Manufacturing & Materials Wiki Index
module: EN1213
type: index
tags: [manufacturing-materials]
---

# EN1213 Manufacturing & Materials — Wiki Index

Wiki articles for EN1213/EN1214/EN2101 Manufacturing and Materials Science (Dr Michael Ryan, Dr Mark Eaton, Franck Lacan).

---

## Source Lectures

```dataview
TABLE lecturer, topic
FROM "EN1213/manufacturing-materials/raw"
WHERE module != null
SORT topic ASC
```

---

## Recently Added

```dataview
TABLE lecturer, source_file
FROM "EN1213/manufacturing-materials/raw"
WHERE module != null
SORT file.mtime DESC
LIMIT 8
```

---

## Manufacturing Processes

| Article | Topics | Lecturer |
|---------|--------|----------|
| [[manufacturing-processes/conventional-machining\|Conventional Machining]] | Turning, milling, drilling, broaching | Ryan |
| [[manufacturing-processes/non-conventional-machining\|Non-Conventional Machining]] | EDM, laser, waterjet, chemical, MEMS | Ryan / Lacan |
| [[manufacturing-processes/forming-casting-joining\|Forming, Casting and Joining]] | Sand casting, forging, rolling, welding | Ryan |
| [[manufacturing-processes/additive-manufacturing\|Additive Manufacturing]] | FDM, SLA, SLS, DMLS, 3D printing | Lacan |

---

## Materials Science

| Article | Topics | Lecturer |
|---------|--------|----------|
| [[materials-science/atomic-structure-and-bonding\|Atomic Structure and Bonding]] | Atoms, shells, ionic, covalent, metallic bonds | Eaton |
| [[materials-science/crystal-structures\|Crystal Structures and Defects]] | BCC, FCC, HCP, dislocations, strengthening | Eaton |
| [[materials-science/ceramics-and-phase-diagrams\|Ceramics, Glasses and Phase Diagrams]] | Ceramics, Weibull, composites, iron-carbon diagram | Eaton |

---

## Materials Testing and Failure

| Article | Topics | Lecturer |
|---------|--------|----------|
| [[materials-testing/mechanical-properties\|Mechanical Properties and Testing]] | Stress-strain curve, E, yield stress, toughness, hardness | Eaton |
| [[materials-testing/creep-fatigue-and-fracture\|Creep, Fatigue and Fracture]] | Creep stages, Paris law, S-N curve, fracture toughness | Eaton |
| [[materials-testing/heat-treatment\|Heat Treatment of Steels]] | Annealing, quenching, tempering, martensite, hardenability | Eaton |

---

## Quick Links

[[_modules/EN1213|EN1213 Module Index]] · [[EN1213/mechanics/wiki/INDEX|Mechanics Index]] · [[EN1213/thermodynamics-fluid-mechanics/wiki/INDEX|Thermodynamics & Fluids Index]]
