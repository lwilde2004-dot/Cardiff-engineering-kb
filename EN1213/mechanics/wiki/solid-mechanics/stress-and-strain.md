---
title: Stress and Strain — Axial Loading and Indeterminate Structures
module: EN1213
topic: mechanics/solid-mechanics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Introduction - Pearson]]"
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Axial Loading - Pearson]]"
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Statically Indeterminate Axial Loading - Pearson]]"
module_index: "[[/_modules/EN1213]]"
tags: [solid-mechanics, mechanics]
---

# Stress and Strain — Axial Loading and Indeterminate Structures

Solid mechanics (also called mechanics of materials or strength of materials) studies how deformable bodies respond to applied loads — specifically the internal forces and deformations that arise. While [[statics-fundamentals|statics]] treats bodies as rigid, solid mechanics accounts for the fact that real materials deform under load, and that failure is governed by internal stress rather than net external forces. Lectured by Dr Matt Pearson as part of EN1213/1214/1218.

---

## Stress Elements

A **stress element** is an infinitesimally small cube used to represent the state of stress at a single point in a body. Although drawn to a large scale for clarity, it captures all stress components acting at that point.

In 3D, a stress element has **9 stress components**:
- **3 normal stresses**: σ_x, σ_y, σ_z (perpendicular to each face)
- **6 shear stresses**: τ_xy, τ_yx, τ_zy, τ_yz, τ_xz, τ_zx (parallel to each face)

Due to moment equilibrium, shear stresses are paired: τ_xy = τ_yx, etc., reducing independent components to 6. Most EN1213 problems involve simplified (1D or 2D) loading.

---

## Normal Stress

**Normal stress** σ is the internal force per unit area acting perpendicular to a cross-section:

$$\sigma = \frac{P}{A} \quad \text{(units: Pa = N/m²)}$$

where P = axial force and A = cross-sectional area.
- **Tensile stress** (+): force pulls away from the cross-section
- **Compressive stress** (−): force pushes toward the cross-section

### Normal Strain

**Strain** ε is the fractional change in length (dimensionless):

$$\varepsilon = \frac{\delta}{L}$$

where δ = elongation and L = original length.

**Hooke's Law** (within the elastic limit):

$$\sigma = E\varepsilon$$

where **E** = Young's modulus (material stiffness, units Pa or GPa). This gives deformation:

$$\delta = \frac{PL}{AE}$$

---

## Axial Loading

A member under **axial loading** is loaded along its longitudinal axis. The stress and deformation are uniform across any cross-section (for a prismatic member — constant cross-section):

$$\sigma = \frac{P}{A} \qquad \delta = \frac{PL}{AE}$$

**Statically determinate axial loading**: reaction forces can be solved from equilibrium alone (ΣF = 0). One unknown support reaction, one equation — directly solvable.

### Statically Indeterminate Axial Loading

**Statically indeterminate** problems have more unknown reactions than equilibrium equations — additional equations are needed from **compatibility** (the geometry of deformation):

1. Write equilibrium equations (insufficient to solve alone)
2. Write compatibility equation(s) — e.g. the total elongation of a fixed-fixed bar must be zero
3. Substitute stress-deformation relationships into the compatibility equation
4. Solve simultaneously

Example: a bar fixed at both ends and loaded in the middle has two unknown reactions but only one equilibrium equation. The compatibility condition is that the total change in length = 0.

---

## Saint-Venant's Principle

Away from the point of load application (at a distance roughly equal to the largest cross-sectional dimension), the stress distribution becomes uniform regardless of how the load was applied. This justifies using σ = P/A throughout the bulk of a member even when the load is applied via a pin or weld at the boundary.

---

## Stress Concentrations

Geometric discontinuities — holes, notches, fillets, shoulders — create local regions where stress is significantly higher than the nominal value. The **stress concentration factor** K is:

$$\sigma_{\max} = K \cdot \sigma_{\text{nom}}$$

K depends on geometry and is found from charts. Stress concentrations are critical near potential [[creep-fatigue-and-fracture|fatigue crack]] initiation sites.

---

## Links

- [[EN1213/mechanics/wiki/solid-mechanics/torsion-and-shear|Torsion and Shear Stress]]
- [[EN1213/mechanics/wiki/solid-mechanics/beam-bending|Beam Bending]]
- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[_modules/EN1213|EN1213 Module Index]]
