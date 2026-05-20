---
title: Friction — Coulomb's Laws and Equilibrium
module: EN1213
topic: mechanics/statics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Friction and Dry Contact - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Friction Worked Examples - Wu]]"
module_index: "[[/_modules/EN1213]]"
tags: [statics, mechanics]
---

# Friction — Coulomb's Laws and Equilibrium

Friction is the resistive force that opposes relative motion between bodies in contact. Statics deals with **dry (Coulomb) friction** — the friction between two solid surfaces — as opposed to fluid friction. Understanding friction is essential for predicting whether a body will slide, tip, or remain in equilibrium under applied loading. Lectured by Dr Zhangming Wu as part of EN1213/1214/1218.

---

## Laws of Coulomb Friction

Consider a block of mass M resting on a surface under an applied horizontal force P:
- The normal reaction **N** acts perpendicular to the surface: N = Mg (if surface is horizontal)
- The friction force **F** acts tangentially, opposing impending or actual motion

**Key observations (determined empirically):**
1. As P increases from zero, F increases to match it — the block remains in static equilibrium
2. F cannot exceed a maximum limiting value: **F_max = μ_s × N**
3. Once sliding begins, a lower kinetic friction force resists motion: **F_k = μ_k × N**

$$F \leq \mu_s N \quad \text{(static)} \qquad F_k = \mu_k N \quad \text{(kinetic)}$$

where:
- **μ_s** = coefficient of static friction (always ≥ μ_k)
- **μ_k** = coefficient of kinetic friction
- **N** = normal contact force

These coefficients depend on the materials in contact but are independent of contact area and sliding speed (within the usual range).

---

## The Four Cases of Equilibrium with Friction

| Case | Condition | Result |
|------|-----------|--------|
| 1 | Forces do not tend to cause motion | F = 0; N = applied normal load |
| 2 | Forces tend to cause motion but P < F_max | F = P; equilibrium (static friction) |
| 3 | Motion just about to take place | F = μ_s N (limiting case) |
| 4 | Body already sliding | F = μ_k N (kinetic friction) |

Cases 3 and 4 define the boundary: at the limit of equilibrium, F = μ_s N; once moving, F drops to μ_k N.

---

## Angle of Friction

The normal force **N** and friction force **F** can be replaced by their resultant **R**, which acts at an angle φ from the normal to the contact surface:

$$\tan\phi = \frac{F}{N} = \mu$$

At the limiting condition: **φ_s = arctan(μ_s)** — the **angle of static friction**. This is the maximum angle from the normal at which the resultant contact force can act before the body slides.

The angle of friction concept is particularly useful for wedge problems and screw threads.

---

## Solving Friction Problems

1. Draw the [[statics-fundamentals|Free Body Diagram]], assuming a direction of impending motion
2. Write equilibrium equations with F as an unknown
3. Check: is F ≤ μ_s N? If yes, the body is in static equilibrium
4. If F required for equilibrium exceeds μ_s N, the body slides — use F = μ_k N for kinetic analysis

**Tipping vs sliding**: For a body on a surface under a horizontal force, both tipping (rotation about a corner) and sliding must be checked. The one that occurs first (at a lower applied force) governs.

---


---

## Key Diagrams

![[EN1213/mechanics/raw/statics/assets/EN1213 - Statics Friction and Dry Contact - Wu/slide4-img7.wmf]]

![[EN1213/mechanics/raw/statics/assets/EN1213 - Statics Friction and Dry Contact - Wu/slide4-img9.png]]

## Links

- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals — Forces and Moments]]
- [[EN1213/mechanics/wiki/statics/trusses-and-frames|Trusses and Frames]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain]]
- [[_modules/EN1213|EN1213 Module Index]]
