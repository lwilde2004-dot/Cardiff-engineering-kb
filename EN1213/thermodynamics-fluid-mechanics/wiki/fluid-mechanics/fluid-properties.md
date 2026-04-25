---
tags: [fluid-mechanics, thermofluids]
---

# Fluid Properties

A fluid is a substance that deforms continuously under the action of shearing forces — it has no preferred shape. Understanding fluid properties (density, viscosity, shear stress) is the foundation of fluid mechanics and feeds directly into [[dimensional-analysis|dimensional analysis]], [[laminar-turbulent-flow|flow regime prediction]], and [[hydrostatics|hydrostatic force calculations]].

*Lecturers: Dr Syed Mashruk & Dr Matthew Allmark — EN1213/EN2103 FM1 Lecture 1 & FM2 Part 1*

## What is a Fluid?
- **Fluid at rest**: no shearing forces can exist — all forces are perpendicular to surfaces (see [[hydrostatics]])
- **Fluid in motion**: shear stresses develop when fluid particles move relative to each other
- **Ideal fluid**: assumed inviscid (no viscosity) and incompressible — the assumption behind [[bernoullis|Bernoulli's equation]]

## Key Properties

### Density (ρ)
Mass per unit volume — kg/m³. Appears in every equation: [[hydrostatics|hydrostatic pressure]], [[bernoullis|Bernoulli]], [[momentum|momentum]], and [[dimensional-analysis|Reynolds number]].

| Fluid | Density |
|---|---|
| Water | 1000 kg/m³ |
| Air | ~1.2 kg/m³ |
| Mercury | ~13,600 kg/m³ |

**Specific gravity (s)**: ratio of fluid density to water density (dimensionless) — used in [[pressure-measurement|manometer calculations]]
- Mercury: s = 13.6
- Sea water: s ≈ 1.03

**Specific weight (w)**: weight per unit volume — N/m³
$$w = \rho g$$

### Dynamic (Absolute) Viscosity (μ)
Viscosity measures a fluid's resistance to flow. It is the property that distinguishes real flows from the ideal fluid assumed in [[bernoullis|Bernoulli's equation]], and is the key input to the [[laminar-turbulent-flow|Reynolds number]]. Units: Pa·s = kg·m⁻¹·s⁻¹

| Fluid | μ |
|---|---|
| Water | ~10⁻³ Pa·s |
| Air | ~2×10⁻⁵ Pa·s |

**Kinematic viscosity (ν)**: ν = μ/ρ (units: m²/s) — used directly in Re = ūD/ν

### Shear Stress (τ)
Shear stress develops when fluid layers move at different velocities — this is how [[laminar-turbulent-flow|viscous pipe flow]] resists motion.

**Newton's Law of Viscosity:**
$$\tau = \mu \frac{du}{dy}$$

Where du/dy is the velocity gradient (rate of shear strain). Negative sign sometimes included to ensure τ > 0 (velocity decreases from centreline to wall).

**No-slip condition**: velocity of fluid at a solid wall = zero. This creates the velocity gradient that drives the [[laminar-turbulent-flow|boundary layer]] growth in pipe flow.

## Newtonian vs Non-Newtonian Fluids

**Newtonian**: viscosity (μ) is constant regardless of shear rate. Examples: water, air, most gases. These obey [[dimensional-analysis|standard Re-based]] similarity scaling.

**Non-Newtonian** — viscosity varies with shear rate:

| Type | Behaviour | Example |
|---|---|---|
| Bingham plastic | Rigid at low stress, flows at high stress | Mayonnaise, toothpaste |
| Dilatant (shear thickening) | Viscosity increases with shear rate | Cornstarch + water (Oobleck) |
| Pseudo-plastic (shear thinning) | Viscosity decreases with shear rate | Paint, blood |

## Effect of Temperature on Viscosity

| Fluid type | Temperature ↑ | Reason |
|---|---|---|
| **Liquids** | Viscosity **decreases** | Higher kinetic energy overcomes intermolecular forces |
| **Gases** | Viscosity **increases** | More molecular interchange/collisions |

This matters for [[laminar-turbulent-flow|Re calculations]] — changing temperature changes viscosity which changes the flow regime.

## Solid vs Fluid Under Shear

- **Solid**: deforms by a fixed amount under shear (elastic); returns when force removed
- **Fluid**: deforms continuously and indefinitely as long as shear force is applied; cannot maintain fixed shear strain

## Links
- [[hydrostatics]] — density is the key input to all hydrostatic pressure and force calculations
- [[pressure-measurement]] — manometer calculations depend on fluid density and specific gravity
- [[bernoullis]] — Bernoulli assumes ideal (inviscid) fluid; viscosity is why real flows deviate
- [[laminar-turbulent-flow]] — viscosity and density together determine Re and the flow regime
- [[dimensional-analysis]] — viscosity (μ) gives rise to Re; density (ρ) gives rise to Fr and other groups
- [[momentum]] — fluid density appears in ṁ = ρAv used throughout momentum calculations
