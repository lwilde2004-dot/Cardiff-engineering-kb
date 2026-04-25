---
tags: [thermodynamics, thermofluids]
---

# Ideal Gases

Ideal gases are a theoretical model where gas molecules have negligible volume and no intermolecular forces. Real gases obey ideal behaviour at comparatively low pressures, where molecular size is negligible compared to separation distances. The model underpins all introductory [[first-law|thermodynamics]] calculations.

*Lecturer: Dr Julian Steer (SteerJ1@cardiff.ac.uk) — EN1213/EN2103 Autumn Semester*

## Nomenclature (Cardiff convention)
- Uppercase = absolute quantities (H, S, U, V)
- Lowercase = mass-specific quantities (h, s, u, v)
- T in **Kelvin**, P in **Pa** (absolute, not gauge), V in m³

## The Four Gas Properties
A gas is fully described by: **P** (pressure), **T** (temperature), **V** (volume), **n** (amount in moles)

## The Gas Laws

| Law | Constant | Relation | Use when... |
|---|---|---|---|
| Boyle's | T, n | P₁V₁ = P₂V₂ | P and V change, T fixed |
| Charles's | P, n | V₁/T₁ = V₂/T₂ | V and T change, P fixed |
| Avogadro's | T, P | V₁/n₁ = V₂/n₂ | Amount changes, T and P fixed |

> **Exam tip (Dr Steer):** "The real trick is knowing when to use which law — ask yourself: what is known/unknown? What is constant/variable?"

## Ideal Gas Law (Combined)

$$pV = nRT \qquad R = 8.314 \text{ J/mol/K}$$

For a specific gas (per unit mass):

$$pV = mR_sT \qquad R_s = \frac{R}{M}$$

Example: R_s for oxygen = 8.314 / 32 = 0.260 J/g/K

## Specific Heat Capacities
- **c_p** — at constant pressure (J/kg·K)
- **c_v** — at constant volume (J/kg·K)
- **γ = c_p / c_v** — ratio of specific heats
- **R_s = c_p − c_v**

These are used directly in the [[first-law|Non-Flow Energy Equation]]: ΔU = mc_vΔT, and in calculating work for each process type.

**Air:** R_s = 287 J/kg·K, c_p = 1005 J/kg·K, c_v = 718 J/kg·K, γ = 1.4

## Process Types

| Process | Constant | Work |
|---|---|---|
| Isothermal | T | w = R_s T ln(v₂/v₁) |
| Isobaric | P | w = p(v₂ − v₁) |
| Isochoric | V | w = 0 |
| Adiabatic | No heat (Q=0) | w = (p₁v₁ − p₂v₂)/(γ − 1) |

The adiabatic process with no heat transfer and no irreversibility is **isentropic** — see [[second-law-entropy]] for why Δs = 0 in this case.

## Polytropic Processes
General form: **pVⁿ = constant**
- n = 0: isobaric
- n = 1: isothermal
- n = γ: adiabatic (isentropic) → links to [[second-law-entropy|Carnot and reversibility]]
- n = ∞: isochoric

## Non-Ideal Behaviour
Real gases deviate from ideal behaviour at high pressures and low temperatures (molecules are closer together and intermolecular forces become significant). Compressibility factor Z accounts for this: pV = ZnRT. [[steam-power-cycles|Steam]] is the key example in this module where the ideal gas assumption breaks down entirely.

## Suggested Text
Rogers and Mayhew — *Thermodynamic and Transport Properties of Fluids* (~£11) — the [[steam-power-cycles|steam tables]] book, also contains gas property data.

## Links
- [[first-law]] — ΔU = mc_vΔT and work expressions for each process come directly from ideal gas relations
- [[second-law-entropy]] — entropy change equations (Tds = du + pdv) reduce to calculable forms for ideal gases
- [[steam-power-cycles]] — contrast: steam deviates from ideal behaviour and requires tables instead of equations
- [[thermodynamics-practice-problems]] — ideal gas process questions in the tutorial sheets
- [[../fluid-mechanics/fluid-properties]] — ideal gas law (pV=nRT) is the equation of state for compressible fluid flows; air properties (ρ, μ) used in Re calculations
