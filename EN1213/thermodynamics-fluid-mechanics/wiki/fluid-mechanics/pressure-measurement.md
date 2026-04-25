---
tags: [fluid-mechanics, thermofluids]
---

# Pressure Measurement

Pressure measurement is fundamental to fluid mechanics experiments and engineering systems. This article covers pressure terminology, manometers, and practical measurement devices. All manometer analysis is based on the [[hydrostatics|hydrostatic pressure equation]].

*Lecturer: Dr Syed Mashruk (mashruks@cardiff.ac.uk) — EN1213/EN2103 FM1 Lecture 2*

## Pressure Terminology

| Type | Reference | Value |
|---|---|---|
| **Absolute pressure** | Perfect vacuum (zero) | Always positive |
| **Gauge pressure** | Atmospheric pressure | Can be negative (vacuum) |
| **Atmospheric pressure** | — | 1.01325 × 10⁵ Pa = 760 mmHg at sea level |

$$p_{absolute} = p_{gauge} + p_{atmospheric}$$

> **Always use absolute pressure** in thermodynamics equations (ideal gas law, [[bernoullis|Bernoulli's equation]], etc.)

## Hydrostatic Pressure Relation
Pressure increases linearly with depth — see [[hydrostatics]] for full derivation:
$$p = p_{atm} + \rho g z$$

The [[fluid-properties|fluid density]] ρ appears in every manometer calculation.

## Manometers

### Simple U-tube Manometer
Liquid flowing in a pipeline — pressure at the datum (0–0) must be equal in both arms:

$$p_L = p_{datum} + \rho_L g h$$

Common manometric fluids: water (s=1), mercury (s=13.6) — see [[fluid-properties|specific gravity]] values.

### Differential U-tube Manometer
Two tapping points connected by a manometer — measures pressure *difference* (e.g. across a pipe bend or orifice plate):

$$p_1 - p_2 = (\rho_m - \rho_f)gh$$

**Manometer sensitivity** = ρ_manometric / ρ_fluid
- Air in water manometer: sensitivity ≈ 833 (water/air)
- Water in mercury manometer: (13.6 − 1) = 12.6 (NOT 13.6 — common error)

The same differential setup is used to measure pressure drop in [[laminar-turbulent-flow|pipe flow]] predicted by the Darcy-Weisbach equation.

### Inclined Manometer
Improves sensitivity for small pressure differences. The incline angle θ amplifies the reading:
- Column length S relates to vertical height by: H = S sin θ
- Useful when pressure differences are too small for a vertical U-tube to read accurately

## Practical Devices

**Barometer**: tube of mercury, measures atmospheric pressure — column height = 760 mm at sea level.

**Bourdon tube pressure gauge**: curved tube that straightens under pressure — mechanical, reads gauge pressure.

**Pressure transducer**: converts pressure to electrical signal — used for dynamic measurements and data logging.

**Pitot tube**: measures fluid velocity using [[bernoullis|Bernoulli's equation]] by converting dynamic pressure to static:
$$v = \sqrt{\frac{2(p_{stagnation} - p_{static})}{\rho}}$$

In [[momentum|momentum analysis]] of pipe bends, the inlet and outlet pressures measured by gauges feed directly into the momentum equation.

## Common Errors
- Using gauge pressure instead of absolute in calculations
- For water-in-mercury manometer: use (ρ_mercury/ρ_water − 1) = 12.6, not 13.6
- Forgetting to account for the density of the flowing fluid when the manometric fluid density dominates

## Links
- [[hydrostatics]] — hydrostatic pressure equation p = p_atm + ρgz is the basis of all manometer analysis
- [[fluid-properties]] — fluid density is required for every manometer pressure calculation
- [[bernoullis]] — Bernoulli distinguishes static, dynamic, and stagnation pressure; Pitot tubes measure velocity via pressure difference
- [[laminar-turbulent-flow]] — pressure drop along a pipe (Darcy-Weisbach) is measured using differential manometers
- [[momentum]] — measured inlet/outlet pressures feed directly into the momentum equation for pipe bends
- [[dimensional-analysis]] — pressure coefficient Eu = Δp/½ρv² is a dimensionless group from Buckingham Pi
