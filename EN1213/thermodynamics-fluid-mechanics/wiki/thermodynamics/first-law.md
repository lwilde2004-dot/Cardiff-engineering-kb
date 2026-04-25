---
tags: [thermodynamics, thermofluids]
---

# First Law of Thermodynamics

The first law is the law of conservation of energy: energy cannot be created or destroyed, only transferred as heat or work. It gives us the **Non-Flow Energy Equation (NFEE)** for closed systems and the **Steady Flow Energy Equation (SFEE)** for open systems. The [[second-law-entropy|second law]] then constrains the *direction* of that energy transfer.

*Lecturers: Prof Richard Marsh (marshr@cardiff.ac.uk) & Dr Julian Steer — EN1213/EN2103*

## Thermodynamic Systems

| Type | Mass exchange | Heat exchange |
|---|---|---|
| Isolated | No | No |
| Closed | No | Yes |
| Open (steady) | Yes | Yes |
| Open (unsteady) | Yes | Yes |

- **Non-flow processes** act on fluids in closed systems
- **Flow processes** act on fluids in open systems
- The **thermodynamic state** is determined by two independent properties (e.g. T and p)

## Zeroth Law
If two bodies are each in thermal equilibrium with a third body, they are in equilibrium with each other. This is the basis of temperature measurement.

## Sign Convention (Cardiff)
- Heat **into** system: **+Q**
- Heat **out** of system: **−Q**
- Work done **by** system: **+W**
- Work done **on** system: **−W**

## Non-Flow Energy Equation (NFEE)

For a **closed system**:

$$Q - W = U_2 - U_1 \quad \text{(or } dQ - dW = dU\text{)}$$

- U = internal energy (kJ) — this IS a property of the system
- Q and W are **not** properties — they depend on the path taken

For an [[ideal-gases|ideal gas]]: **ΔU = m · c_v · ΔT**

Proof that U is a property: for any two paths A and B between the same states, (Q−W) is identical → Q−W depends only on the endpoints, not the path. Therefore it is a state property.

## Enthalpy

$$H = U + pV \quad \text{(specific: } h = u + pv\text{)}$$

Enthalpy is the total heat content of a system. It simplifies open-system analysis because h appears naturally in the SFEE and in [[steam-power-cycles|steam cycle]] calculations.

## Steady Flow Energy Equation (SFEE)

For **open systems** (turbines, compressors, boilers, nozzles) — the framework used throughout [[steam-power-cycles|the Rankine cycle]]:

$$\dot{Q} - \dot{W} = \dot{m}\left[(h_2 - h_1) + \frac{V_2^2 - V_1^2}{2} + g(z_2 - z_1)\right]$$

In most engineering problems, KE and PE terms are negligible:

$$\dot{Q} - \dot{W} = \dot{m}(h_2 - h_1)$$

See [[thermodynamics-practice-problems]] for worked SFEE examples (compressor, steam boiler, heat pump).

## Work in Common Processes

These work expressions come from [[ideal-gases|ideal gas process equations]]:

| Process | Work per unit mass |
|---|---|
| Isobaric | w = p(v₂ − v₁) |
| Isochoric | w = 0 |
| Isothermal (ideal gas) | w = R_s T ln(v₂/v₁) |
| Adiabatic | w = (p₁v₁ − p₂v₂)/(γ − 1) |

## Cardiff Exam Note
The module covers: Introduction → Heat & Work → 1st Law → Heat Flow → SFEE → Efficiency → Temperature → [[second-law-entropy|2nd Law → Reversibility → Entropy]] (Parts 1–10 of Dr Steer's section).

## Links
- [[ideal-gases]] — ΔU = mc_vΔT and process work expressions rely on ideal gas properties
- [[second-law-entropy]] — 1st law gives the energy balance; 2nd law determines the direction and limits efficiency
- [[steam-power-cycles]] — SFEE is applied to each component (boiler, turbine, condenser, pump) in the Rankine cycle
- [[thermodynamics-practice-problems]] — Q1 (compressor), Q2 (boiler), Q3 (heat pump) are all SFEE problems
- [[../fluid-mechanics/bernoullis]] — Bernoulli's equation is the SFEE simplified for steady incompressible flow with no heat or shaft work
