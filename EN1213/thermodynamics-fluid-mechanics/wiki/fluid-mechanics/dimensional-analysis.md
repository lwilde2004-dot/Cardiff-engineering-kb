---
tags: [fluid-mechanics, thermofluids]
---

# Dimensional Analysis

Dimensional analysis (DA) identifies the dimensionless groups that govern a physical system, without needing complex mathematics. It is the basis for **scaled model testing** used across aerospace, automotive, motorsport, and marine engineering. The two key groups for this module are the [[laminar-turbulent-flow|Reynolds number]] (viscous pipe flow) and the Froude number (free-surface flow).

*Lecturer: Dr Matthew Allmark (Allmarkmj1@cardiff.ac.uk) — EN1213/EN2103 FM2 Part 5*

## Why It Matters
- Reduces expensive full-scale testing — a 60% scale model uses only **0.6³ = 21.6%** of the material volume
- Enables fast design iteration
- Used by: Boeing, NASA, Safehaven Marine, Mercedes-AMG F1

## Fundamental Dimensions (MLT System)

| Dimension | Symbol |
|---|---|
| Mass | M |
| Length | L |
| Time | T |

All other fluid mechanics quantities derive from these three.

## Key Derived Dimensions

The [[fluid-properties|fluid properties]] that appear most often in dimensional analysis:

| Quantity | Derivation | Dimensions | SI Unit |
|---|---|---|---|
| Force | M × LT⁻² | [MLT⁻²] | N = kg·m/s² |
| Pressure | Force/Area | [ML⁻¹T⁻²] | Pa = kg·m⁻¹·s⁻² |
| Viscosity (μ) | Stress/(vel/distance) | [ML⁻¹T⁻¹] | Pa·s = kg·m⁻¹·s⁻¹ |
| Density | M/L³ | [ML⁻³] | kg/m³ |
| Velocity | L/T | [LT⁻¹] | m/s |

See [[fluid-properties]] for typical values of ρ and μ for water and air.

## Method 1: Rayleigh's Indical Method
Three steps:
1. Identify all flow variables and their dimensions
2. Substitute dimensions into a power-law expression
3. Satisfy dimensional homogeneity (equate exponents of M, L, T)

Useful for deriving an expression when you can guess the functional form.

**Example — freely falling body:**
Guess v = f(h, g) → v = C · hᵃ · gᵇ → solve exponents → v = C√(gh)

## Method 2: Buckingham Pi Theorem
If a problem has **n** variables and **k** fundamental dimensions:

$$\text{Number of dimensionless Pi groups} = n - k$$

**Steps:**
1. List all relevant variables and their dimensions
2. Count n and k
3. Choose **k repeating variables** — must together span all dimensions (M, L, T); typically choose ρ, v, L from [[fluid-properties]]
4. Combine each remaining variable with the repeating variables to form each Pi group
5. Make each group dimensionless by solving exponents

**Selection rule:** do NOT choose the dependent variable as a repeating variable.

**Example result (from lecture):** Pi groups obtained were Pressure Coefficient, [[laminar-turbulent-flow|Reynolds Number (Re)]], and Froude Number (Fr).

## Common Dimensionless Groups

| Group | Formula | Ratio | Where used |
|---|---|---|---|
| Reynolds (Re) | ρvL/μ | Inertia / Viscous | [[laminar-turbulent-flow\|Pipe flow]], boundary layers |
| Froude (Fr) | v/√(gL) | Inertia / Gravity | [[hydrostatics\|Free-surface flows]], weirs |
| Mach (Ma) | v/c | Flow speed / Sound speed | Compressible flow |
| Pressure Coeff. | Δp/½ρv² | Pressure / Dynamic pressure | [[pressure-measurement\|Pitot tubes]], [[bernoullis\|Bernoulli]] |

**Re is used most often** for evaluating how a model behaves under fluid flow.

## Similarity — Three Conditions for Valid Model Testing

| Type | Requirement |
|---|---|
| **Geometric** | Same shape; all dimensions in fixed ratio to prototype |
| **Kinematic** | Same velocity ratios; streamlines are similar |
| **Dynamic** | Force ratios identical (same Re, Fr, etc. as applicable) |

All three must be satisfied for **complete similarity**. In practice this can be difficult — e.g. reproducing surface finish or rivet heads at scale.

## Links
- [[fluid-properties]] — viscosity (μ) and density (ρ) are the physical quantities that make Re and Fr meaningful
- [[laminar-turbulent-flow]] — Re is the most important result of dimensional analysis for internal pipe flow
- [[bernoullis]] — Re determines when Bernoulli's inviscid assumption holds; pressure coefficient links to Bernoulli
- [[momentum]] — dimensionless force coefficients (drag, lift) arise from dimensional analysis of momentum problems
- [[hydrostatics]] — Fr governs free-surface flows where gravity and inertia interact
- [[pressure-measurement]] — pressure coefficient Eu = Δp/½ρv² is the dimensionless form of manometer readings
