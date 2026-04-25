---
title: Beam Bending — Shear Force and Bending Moment Diagrams
module: EN1213
topic: mechanics/solid-mechanics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Beams Part 1 - Pearson]]"
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Beams Part 2 - Pearson]]"
module_index: "[[/_modules/EN1213]]"
tags: [solid-mechanics, mechanics]
---

# Beam Bending — Shear Force and Bending Moment Diagrams

When a beam is loaded laterally (perpendicular to its axis), internal **shear forces** and **bending moments** develop along its length. These internal interactions govern the [[stress-and-strain|stresses]] in the beam and determine where and how it might fail. Understanding beam bending is fundamental to structural design — bridges, aircraft wings, machine frames, and virtually all load-carrying structures contain bending members. Lectured by Dr Matt Pearson as part of EN1213/1214/1218.

---

## Concepts

A **prismatic beam** is a straight member with a constant cross-section throughout its length. When subject to lateral loads, it deflects — and the material at the top is compressed while material at the bottom is stretched (or vice versa depending on load direction).

Key relationships:
- **Shear force V** at a section: the algebraic sum of vertical forces on one side of the cut
- **Bending moment M** at a section: the algebraic sum of moments of all forces on one side of the cut

---

## Shear Force and Bending Moment Diagrams

SFD and BMD are graphical representations of V and M along the beam length.

**Sign conventions**:
- Shear force: positive if the left face of a cut acts upward (or right face acts downward)
- Bending moment: positive (sagging) if it causes the beam to concave upward

**Key relationships**:
$$\frac{dV}{dx} = -w(x) \qquad \frac{dM}{dx} = V$$

where w(x) = distributed load intensity (downward positive). Therefore:
- Between loads: V is constant; M is linear
- Under a distributed load: V is linear; M is parabolic
- At a concentrated force: V has a step change equal to the force magnitude
- At a concentrated moment: M has a step change equal to the moment magnitude

### Steps to Construct SFD/BMD:
1. Find support reactions using [[statics-fundamentals|equilibrium equations]]
2. Move from left to right along the beam; track V and M
3. At each force or reaction: V steps up (upward force) or down (downward force)
4. At each moment applied: M steps up or down by the moment value
5. Between loads: V is constant → M is linear

---

## Bending Stress (Flexure Formula)

The normal stress at a distance y from the neutral axis due to bending moment M:

$$\sigma = \frac{M y}{I}$$

where:
- **M** = bending moment at the section (N·m)
- **y** = distance from the neutral axis (m)
- **I** = second moment of area of the cross-section about the neutral axis (m⁴)

**Maximum bending stress** occurs at the outermost fibre (y = c):

$$\sigma_{\max} = \frac{M c}{I} = \frac{M}{Z}$$

where Z = I/c = **section modulus** (m³). Maximising Z (by choosing a cross-section with area far from the neutral axis) gives the stiffest beam for a given amount of material — which is why I-sections are so efficient.

**For a solid rectangle** (width b, depth d):
$$I = \frac{bd^3}{12} \qquad Z = \frac{bd^2}{6}$$

---

## Shear Stress in Beams

Horizontal shear stresses also develop in beams due to bending. For a rectangular cross-section, the shear stress distribution is **parabolic**, maximum at the neutral axis:

$$\tau = \frac{VQ}{Ib}$$

where Q = first moment of area of the section above (or below) the point of interest about the neutral axis, and b = width at that level.

---

## Engineering Context

Beam bending tests are used to determine material properties:
- **3-point and 4-point bend tests**: measure modulus of elasticity and ultimate bending stress
- **Fracture toughness testing**: controlled crack growth under bending
- Full-scale aircraft certification testing (e.g. Airbus A350 wing tip deflection tests) apply massive bending loads to validate computer simulations and determine ultimate strength

---

## Links

- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain — Axial Loading]]
- [[EN1213/mechanics/wiki/solid-mechanics/torsion-and-shear|Torsion and Shear Stress]]
- [[EN1213/mechanics/wiki/solid-mechanics/failure-criteria|Failure Criteria]]
- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals]]
- [[_modules/EN1213|EN1213 Module Index]]
