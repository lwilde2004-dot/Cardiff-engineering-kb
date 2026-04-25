---
tags: [thermodynamics, thermofluids]
---

# Thermodynamics Practice Problems

Tutorial questions from EN1213/EN2103 — Dr Julian Steer & Prof Richard Marsh.

---

## SFEE Questions

These problems apply the [[first-law|Steady Flow Energy Equation]]: Q̇ − Ẇ = ṁ(h₂ − h₁)

### Q1 — Compressor Power (SFEE)
A compressor delivers fluid at **45 kg/min**. Specific [[first-law|enthalpy]] at inlet: **46 kJ/kg**; at outlet: **175 kJ/kg**. Heat lost to surroundings: **105 kJ/min**. Drive efficiency: **85%**.

Find: power required to drive the compressor.

**Hints:**
- Neglect elevation and velocity terms (standard for compressors)
- Apply [[first-law|SFEE]]: Q̇ − Ẇ = ṁ(h₂ − h₁)
- Q̇ is negative (heat lost from system)
- Ẇ is the shaft work — then divide by efficiency to get drive power
- 1 kJ/s = 1 kW

---

### Q2 — Steam Boiler (SFEE with KE and PE)
A [[steam-power-cycles|steam boiler]] at **15 bar** evaporates fluid at **1000 kg/hr**. Inlet enthalpy: **165 kJ/kg**; outlet enthalpy: **2200 kJ/kg**. Outlet pipe is **16 m above** inlet. Inlet velocity: **13 m/s**; outlet velocity: **33 m/s**. Only **65%** of heat supplied evaporates the fluid. Fuel energy: **32,000 kJ/kg**.

Find: rate of fuel consumption (kg/hr).

**Hints:**
- This problem requires the **full [[first-law|SFEE]]** including KE and PE terms
- Find Q̇ required using SFEE → Q̇_to_fluid = ṁ[(h₂−h₁) + (v₂²−v₁²)/2 + g(z₂−z₁)]
- Since only 65% of fuel heat goes to fluid: Q̇_fuel = Q̇_to_fluid / 0.65
- Convert to fuel consumption using 32,000 kJ/kg

---

### Q3 — Heat Pump COP
A heat pump maintains a house at **21°C** when outside temperature is **−5°C**. Heat loss rate: **135,000 kJ/h**.

Find: minimum power to drive the heat pump.

**Hints:**
- Minimum power = reversible ([[second-law-entropy|Carnot]]) operation
- For a heat pump: COP_HP = Q_H / W = T_H / (T_H − T_C) [temperatures in Kelvin]
- T_H = 21 + 273 = 294 K, T_C = −5 + 273 = 268 K
- Q_H = 135,000 kJ/h (heat delivered to house)
- W = Q_H / COP_HP → convert to kW

---

## 2nd Law / Efficiency Conceptual Questions

These test understanding of the [[second-law-entropy|second law of thermodynamics]].

### Q5 — Efficiency and Performance (Short Answer)

1. Can we construct a system that continuously extracts heat and converts it all to work?
   *(No — violates [[second-law-entropy|Kelvin-Planck]] statement of the 2nd law)*

2. In order to do work, must a system be in contact with reservoirs at the same or different temperatures?
   *(Different temperatures — need a temperature difference)*

3. In thermodynamic terms, is the work associated with a refrigerator +W or −W?
   *(−W — work is done ON the refrigerator, i.e. work input)*

4. Which way did [[second-law-entropy|Clausius]] say heat flows without work being done: cold to hot, or hot to cold?
   *(Hot to cold — spontaneous direction)*

5. What two conditions must be satisfied for a cycle to be [[second-law-entropy|reversible]]?
   *(1) No friction or irreversibilities; (2) heat exchange with infinitesimally small temperature differences*

---

## Ideal Gas / Process Questions

*(To be added as tutorial sheets are provided — see [[ideal-gases]] for relevant equations)*

## Steam Tables Questions

*(To be added — see [[steam-power-cycles]] for the Carnot worked example)*

## Links
- [[first-law]] — SFEE and NFEE used in Q1, Q2, Q3
- [[second-law-entropy]] — Carnot efficiency, COP, reversibility tested in Q3, Q5
- [[steam-power-cycles]] — Q2 uses steam boiler enthalpy values
- [[ideal-gases]] — process work and ΔU equations for gas questions
