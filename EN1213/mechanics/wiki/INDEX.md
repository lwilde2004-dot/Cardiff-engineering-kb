---
title: EN1213 Mechanics Wiki Index
module: EN1213
type: index
tags: [mechanics]
---

# EN1213 Mechanics — Wiki Index

Wiki articles for EN1213/1214/1218 Mechanics (Statics, Solid Mechanics, Dynamics).

---

## Source Lectures

```dataview
TABLE lecturer, topic
FROM "EN1213/mechanics/raw"
WHERE module != null
SORT topic ASC, file.name ASC
```

---

## Recently Added

```dataview
TABLE module, source_file
FROM "EN1213/mechanics/raw"
WHERE module != null
SORT file.mtime DESC
LIMIT 8
```

---

## Statics
*Dr Zhangming Wu*

| Article | Topics |
|---------|--------|
| [[statics/statics-fundamentals\|Statics Fundamentals]] | Forces, equilibrium, moments, free body diagrams, Varignon's theorem |
| [[statics/trusses-and-frames\|Trusses and Frames]] | Two/three-force bodies, method of joints, method of sections, frame analysis |
| [[statics/friction\|Friction]] | Coulomb's laws, static vs kinetic friction, angle of friction |

---

## Solid Mechanics
*Dr Matt Pearson*

| Article | Topics |
|---------|--------|
| [[solid-mechanics/stress-and-strain\|Stress and Strain]] | Normal stress/strain, axial loading, Hooke's law, statically indeterminate |
| [[solid-mechanics/torsion-and-shear\|Torsion and Shear Stress]] | Shear stress, shear strain, torsion formula, angle of twist |
| [[solid-mechanics/beam-bending\|Beam Bending]] | SFD/BMD, flexure formula, section modulus, shear in beams |
| [[solid-mechanics/failure-criteria\|Failure Criteria]] | Principal stresses, Tresca, Von Mises, Rankine criteria |

---

## Dynamics
*Dr John McCrory*

| Article | Topics |
|---------|--------|
| [[dynamics/kinematics\|Kinematics]] | Vector differentiation, circular motion, relative motion, general plane motion |
| [[dynamics/kinetics-and-rotating-systems\|Kinetics and Rotating Systems]] | Moment of inertia, Newton's law for rotation, gear ratios, parallel axis theorem |

---

## Quick Links

[[_modules/EN1213|EN1213 Module Index]] · [[EN1213/manufacturing-materials/wiki/INDEX|Manufacturing & Materials Index]] · [[EN1213/thermodynamics-fluid-mechanics/wiki/INDEX|Thermodynamics & Fluids Index]]
