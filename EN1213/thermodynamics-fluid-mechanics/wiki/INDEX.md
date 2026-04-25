---
tags: [thermofluids]
---

# Thermodynamics & Fluid Mechanics — Wiki Index

## Thermodynamics
| Article | Description |
|---|---|
| [[thermodynamics/ideal-gases]] | Gas laws (Boyle, Charles, Avogadro), ideal gas equation, polytropic processes |
| [[thermodynamics/first-law]] | NFEE, SFEE, enthalpy, sign conventions, open/closed/isolated systems |
| [[thermodynamics/steam-power-cycles]] | Carnot and Rankine cycles, steam tables, dryness fraction — includes worked example |
| [[thermodynamics/second-law-entropy]] | Entropy, Clausius inequality, reversibility, Carnot efficiency, isentropic efficiency |
| [[thermodynamics/thermodynamics-practice-problems]] | Tutorial Qs: SFEE compressor/boiler, heat pump COP, 2nd law conceptuals |

## Fluid Mechanics
| Article | Description |
|---|---|
| [[fluid-mechanics/fluid-properties]] | Density, viscosity, shear stress, Newtonian vs non-Newtonian, temperature effects |
| [[fluid-mechanics/pressure-measurement]] | Gauge vs absolute, U-tube/differential/inclined manometers, Bourdon gauge |
| [[fluid-mechanics/hydrostatics]] | Hydrostatic pressure, force on plane/curved surfaces, centre of pressure, parallel axis theorem |
| [[fluid-mechanics/bernoullis]] | Three forms, orifice tanks (Cases 1–3), Cd coefficient, weirs |
| [[fluid-mechanics/momentum]] | Control volume, jets on plates/vanes, moving surfaces, pipe bends |
| [[fluid-mechanics/laminar-turbulent-flow]] | Reynolds number, pipe velocity profile, Darcy-Weisbach, Moody diagram |
| [[fluid-mechanics/dimensional-analysis]] | Buckingham Pi, Rayleigh method, similarity, dimensionless groups |

## Outputs — Revision
| File | Description |
|---|---|
| [[../outputs/thermodynamics-formula-sheet]] | All thermodynamics equations on one page |
| [[../outputs/fluid-mechanics-formula-sheet]] | All fluid mechanics equations on one page |

## Source Lectures

```dataview
TABLE lecturer, topic
FROM "EN1213/thermodynamics-fluid-mechanics/raw"
WHERE module != null
SORT topic ASC
```

## Recently Added

```dataview
TABLE source_file, topic
FROM "EN1213/thermodynamics-fluid-mechanics/raw"
WHERE module != null
SORT file.mtime DESC
LIMIT 5
```

---

## Cross-subject Links
- **Bernoulli ↔ SFEE**: Bernoulli is the SFEE simplified for steady incompressible inviscid flow
- **Ideal gas law ↔ Fluid properties**: Air properties (ρ, μ) in fluid mechanics come from ideal gas relations
- **Control volume**: Used identically in momentum (fluid mechanics) and SFEE (thermodynamics)
- **Carnot efficiency ↔ Dimensional analysis**: Both are dimensionless performance ratios

---
*Last updated: 2026-04-24*
