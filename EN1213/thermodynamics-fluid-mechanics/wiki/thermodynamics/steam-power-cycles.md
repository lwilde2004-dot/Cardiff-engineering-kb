---
tags: [thermodynamics, thermofluids]
---

# Steam Power Cycles

Steam power cycles convert heat into mechanical work using water/steam as the working fluid. The **Carnot cycle** is the theoretical ideal; the **Rankine cycle** is the practical implementation used in real power plants. Unlike [[ideal-gases|ideal gases]], steam properties must be read from **steam tables** because steam deviates significantly from ideal behaviour near its saturation curve.

*Lecturer: Dr Julian Steer (SteerJ1@cardiff.ac.uk) — EN1213/EN2103*

## Carnot Cycle (Theoretical)

The Carnot cycle sets the maximum possible efficiency between two temperature reservoirs — see [[second-law-entropy|Carnot efficiency]] for the derivation. Four non-flow processes applied to steam:

| Process | Device | Description |
|---|---|---|
| 1 → 2 | Boiler | Isothermal evaporation at T_b |
| 2 → 3 | Turbine (expander) | Isentropic expansion — work out |
| 3 → 4 | Condenser | Isothermal condensation at T_a |
| 4 → 1 | Compressor | Isentropic compression |

**Energy balance** — each term uses the [[first-law|SFEE]] (Q̇ − Ẇ = ṁΔh):
- Q₁₂ = h₂ − h₁ (heat in, boiler)
- W₂₃ = −(h₃ − h₂) (work out, turbine)
- Q₃₄ = h₄ − h₃ (heat rejected, condenser) — condensation stops when s₄ = s₁
- W₄₁ = −(h₁ − h₄) (work in, compressor)

$$\eta_{Carnot} = \frac{T_1 - T_3}{T_1}$$

### Carnot Worked Example (from lecture)
Upper: 50 bar, 264°C | Lower: 0.02 bar, 18°C

From steam tables:
- h₁ = hf@50bar = 1155 kJ/kg, h₂ = hg@50bar = 2794 kJ/kg
- s₁ = sf@50bar = 2.921 kJ/kgK, s₂ = sg@50bar = 5.973 kJ/kgK
- x₃ = (5.973 − 0.261)/8.462 = **0.675** → h₃ = 73 + 0.675 × 2460 = **1734 kJ/kg**
- x₄ = (2.921 − 0.261)/8.462 = **0.314** → h₄ = 73 + 0.314 × 2460 = **845 kJ/kg**
- W_net = (2794 − 1734) + (845 − 1155) = **750 kJ/kg**
- Q_in = 2794 − 1155 = **1639 kJ/kg**
- **η = 750/1639 = 46%**

### Limitations of Carnot
- Difficult to control partial condensation in practice
- Pumping a wet vapour-liquid mixture is impractical (mixture separates)
- Compressor cost and complexity vs. a simple water pump

## Rankine Cycle (Practical)

Improves on Carnot by:
- Replacing the compressor with a **pump** (pumps liquid, much simpler)
- Condensing steam **completely to liquid** before pumping

```
    Boiler (2→3)
  ┌─────────────┐
  │  Heat in    │
2 ↑             ↓ 3 (steam)
  │             │
Pump         Turbine
(1→2)        (3→4)
  │             │
  └─────────────┘
  1 (liquid)  ↑ 4
    Condenser (4→1)
       Heat out
```

| Process | Device | First Law |
|---|---|---|
| 1 → 2 | Pump | w_P = h₂ − h₁ ≈ v₁(p₂ − p₁) |
| 2 → 3 | Boiler | q_in = h₃ − h₂ |
| 3 → 4 | Turbine | w_T = h₃ − h₄ |
| 4 → 1 | Condenser | q_out = h₄ − h₁ |

$$\eta_{Rankine} = \frac{w_T - w_P}{q_{in}}$$

All components are **steady-state steady-flow** → use [[first-law|SFEE]] for each. The turbine and pump are assumed [[second-law-entropy|isentropic]] in the ideal case (s₃ = s₄, s₁ = s₂).

## Reading Steam Tables

Properties available: h (enthalpy), s (entropy), v (specific volume), u (internal energy)

**Saturated region** — use dryness fraction x:
$$x = \frac{m_{vapour}}{m_{total}} \quad (0 \leq x \leq 1)$$
$$h = h_f + x \cdot h_{fg} \qquad s = s_f + x \cdot s_{fg}$$

Where h_fg = h_g − h_f (latent heat of vaporisation)

**Superheated region** — interpolate between table entries for T and p.

## Key Steam Table Values to Know
- h_f = enthalpy of saturated liquid
- h_g = enthalpy of saturated vapour (dry)
- h_fg = latent heat
- s_f, s_g, s_fg — entropy equivalents

## Suggested Text
Rogers and Mayhew — *Thermodynamic and Transport Properties of Fluids* (~£11) — contains steam tables.

## Links
- [[first-law]] — SFEE (Q̇ − Ẇ = ṁΔh) is applied to every cycle component
- [[second-law-entropy]] — isentropic processes (s₃=s₄, s₁=s₂) come from 2nd law; Carnot efficiency sets the upper bound
- [[ideal-gases]] — steam cannot use ideal gas equations; properties must come from tables; contrast highlights where ideal gas assumption breaks down
- [[thermodynamics-practice-problems]] — Q2 (steam boiler SFEE) uses steam enthalpies; steam tables questions to be added
- [[../fluid-mechanics/momentum]] — turbines and pumps are steady-flow devices; the same control-volume framework applies to both fluid mechanics and thermodynamic open systems
