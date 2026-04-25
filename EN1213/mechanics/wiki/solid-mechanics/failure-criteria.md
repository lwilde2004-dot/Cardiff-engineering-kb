---
title: Failure Criteria
module: EN1213
topic: mechanics/solid-mechanics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Failure Criteria - Pearson]]"
  - "[[EN1213/mechanics/raw/solid-mechanics/EN1213 - Solid Mechanics Additional Questions L7 to L10 - Pearson]]"
module_index: "[[/_modules/EN1213]]"
tags: [solid-mechanics, mechanics]
---

# Failure Criteria

A failure criterion defines the stress state at which a material will yield or fracture. Since most engineering components experience multi-axial loading — normal stresses in multiple directions combined with shear — a single stress cannot characterise failure. Failure criteria combine stress components into a scalar measure that can be compared against the uniaxial yield or fracture stress obtained from a tensile test. Lectured by Dr Matt Pearson as part of EN1213/1214/1218.

---

## Background: Principal Stresses

At any point in a loaded body, the stress state can be expressed in terms of **principal stresses** σ₁, σ₂, σ₃ — the normal stresses acting on planes where shear stress is zero. These are found by rotating the stress element to eliminate shear components.

For 2D (plane stress):

$$\sigma_{1,2} = \frac{\sigma_x + \sigma_y}{2} \pm \sqrt{\left(\frac{\sigma_x - \sigma_y}{2}\right)^2 + \tau_{xy}^2}$$

$$\tau_{\max} = \sqrt{\left(\frac{\sigma_x - \sigma_y}{2}\right)^2 + \tau_{xy}^2}$$

---

## Maximum Normal Stress Criterion (Rankine)

> Failure occurs when the maximum principal stress reaches the uniaxial failure stress.

$$\sigma_1 \geq \sigma_{\text{failure}} \quad \text{or} \quad \sigma_3 \leq -\sigma_{\text{failure}}$$

This criterion is appropriate for **brittle materials** (cast iron, ceramics) which fail by fracture with little ductility. It is not appropriate for ductile materials, which yield before fracture.

---

## Maximum Shear Stress Criterion (Tresca)

> Failure (yielding) occurs when the maximum shear stress reaches half the uniaxial yield stress.

$$\tau_{\max} = \frac{\sigma_1 - \sigma_3}{2} \geq \frac{\sigma_y}{2}$$

Equivalently: σ₁ − σ₃ ≥ σ_y

This criterion is conservative and widely used for **ductile materials** (mild steel). It predicts that yielding is driven by the maximum shear, consistent with slip-plane theory of plastic deformation.

---

## Von Mises Criterion (Distortion Energy)

> Failure occurs when the distortion (shape-change) energy stored per unit volume equals that at yield in a uniaxial test.

For plane stress (σ₃ = 0):

$$\sigma_1^2 - \sigma_1\sigma_2 + \sigma_2^2 \geq \sigma_y^2$$

More generally:

$$\sigma_{\text{VM}} = \frac{1}{\sqrt{2}}\sqrt{(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2} \geq \sigma_y$$

The von Mises criterion is generally more accurate than Tresca for ductile metals and is the default in most engineering software (FEA). It gives a slightly less conservative (and more accurate) prediction than Tresca.

---

## Comparison of Criteria

| Criterion | Material type | Shape (2D) |
|-----------|--------------|------------|
| Max Normal Stress (Rankine) | Brittle | Square rotated 45° |
| Max Shear Stress (Tresca) | Ductile | Hexagon |
| Von Mises | Ductile | Ellipse |

Tresca is inscribed inside the Von Mises ellipse — predicting failure at a slightly lower stress, making it conservative.

---

## Relationship to Other Failure Modes

For long-term loading, the static failure criteria above are insufficient:
- **[[creep-fatigue-and-fracture|Fatigue]]**: cyclic loading causes failure below the yield stress
- **[[creep-fatigue-and-fracture|Creep]]**: sustained loading at elevated temperature causes time-dependent deformation
- **[[creep-fatigue-and-fracture|Fracture mechanics]]**: pre-existing cracks grow when the stress intensity factor K exceeds fracture toughness K_IC

---

## Links

- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain — Axial Loading]]
- [[EN1213/mechanics/wiki/solid-mechanics/torsion-and-shear|Torsion and Shear Stress]]
- [[EN1213/mechanics/wiki/solid-mechanics/beam-bending|Beam Bending]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/creep-fatigue-and-fracture|Creep, Fatigue and Fracture]]
- [[_modules/EN1213|EN1213 Module Index]]
