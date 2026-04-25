---
title: Torsion and Shear Stress
module: EN1213
topic: mechanics/solid-mechanics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Torsion - Pearson]]"
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Shear Stress - Pearson]]"
module_index: "[[/_modules/EN1213]]"
tags: [solid-mechanics, mechanics]
---

# Torsion and Shear Stress

Shear stresses arise from forces applied parallel (tangential) to a cross-sectional plane, and from torsion — twisting loads that produce a torque about the longitudinal axis. Both are critical in engineering design: shear governs fastener design and guillotine cutting; torsion governs shaft design in motors and drive systems. Lectured by Dr Matt Pearson as part of EN1213/1214/1218.

---

## Shear Stress

**Shear stress** τ (tau) arises when a force acts parallel to a cross-section, inducing a sliding or slicing action:

$$\tau = \frac{V}{A} \quad \text{(units: Pa = N/m²)}$$

where V = shear force and A = shear plane area. This is the **average** shear stress; the actual distribution may vary across the section (see [[beam-bending|beam bending]] for the parabolic distribution in beams).

### Engineering Applications
- **Sheet metal fabrication**: guillotines and punching operations fail the material in shear
- **Fasteners**: bolted and riveted lap joints transmit load through shear in the bolt/rivet cross-section
- **Single shear** (one shear plane): τ = F/A
- **Double shear** (force splits across two planes): τ = F/(2A)

### Shear Strain

**Shear strain** γ (gamma) is the angular distortion (in radians):

$$\gamma = \frac{\tau}{G}$$

where **G** = shear modulus (modulus of rigidity). For isotropic materials:

$$G = \frac{E}{2(1+\nu)}$$

where E = Young's modulus and ν = Poisson's ratio.

---

## Torsion

**Torsion** is the twisting of a straight bar when loaded by torques (moments about the longitudinal axis). The torque T = F × d, where d is the moment arm.

Everyday examples: screwdrivers, drive shafts, propeller shafts, torsion bars in vehicle suspensions.

### Torsion Formula

For a solid circular shaft of radius r, with torque T and polar second moment of area J:

$$\frac{T}{J} = \frac{\tau}{r} = \frac{G\phi}{L}$$

where:
- **T** = applied torque (N·m)
- **J** = polar second moment of area (m⁴): J = πr⁴/2 for a solid circle; J = π(r_o⁴ − r_i⁴)/2 for a hollow circle
- **τ** = shear stress at radius r (Pa)
- **G** = shear modulus (Pa)
- **φ** = angle of twist (radians)
- **L** = length of shaft (m)

**Maximum shear stress** occurs at the outer surface (r = r_max):

$$\tau_{\max} = \frac{T \cdot r_{\max}}{J}$$

**Angle of twist**:

$$\phi = \frac{TL}{GJ}$$

### Torsion Testing (Lab)
The TQ torsion testing machine applies a measured twist to a circular specimen and records the reaction torque, enabling calculation of:
- Shear modulus G
- Yield shear stress τ_y

The specimen is mounted between a fixed reaction end and a rotating hand wheel. Observe how the stress element on the surface transforms from a square (no load) to a rotated shape as torque is applied — shear stresses appear on all four faces.

---

## Stress Transformation under Torsion

Under pure torsion, a stress element on the surface of the shaft experiences shear stresses τ on all four faces. By rotating the element 45°, these shear stresses transform into principal normal stresses of equal magnitude — one tensile (+τ) and one compressive (−τ). This is why brittle materials (which fail in tension) tend to fracture at 45° to the shaft axis under torsion.

---

## Links

- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain — Axial Loading]]
- [[EN1213/mechanics/wiki/solid-mechanics/beam-bending|Beam Bending]]
- [[EN1213/mechanics/wiki/solid-mechanics/failure-criteria|Failure Criteria]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[_modules/EN1213|EN1213 Module Index]]
