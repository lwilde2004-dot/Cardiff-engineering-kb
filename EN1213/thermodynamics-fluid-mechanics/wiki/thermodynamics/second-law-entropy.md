---
tags: [thermodynamics, thermofluids]
---

# Second Law of Thermodynamics & Entropy

The second law states that the total entropy of an isolated system always increases over time — you cannot convert heat completely into work. It introduces **entropy** as a measure of energy "quality" or "spread", and sets the upper limit on heat engine efficiency (Carnot). Where the [[first-law|first law]] tells you *how much* energy is transferred, the second law tells you *which direction* it can go.

*Lecturer: Prof Richard Marsh (marshr@cardiff.ac.uk) — EN1213/EN2103*

## Statements of the Second Law
- **Kelvin-Planck**: No heat engine can convert all heat input into work.
- **Clausius**: Heat cannot spontaneously flow from cold to hot. The flow of heat from hot to cold is called **spontaneous**.

## Quality of Energy
Not just *how much* energy, but *how useful* it is. A cup of tea at 80°C (353 K) is more useful than a swimming pool at 30°C (303 K) even if the pool contains far more energy total.

| Hot source T_H (K) | Carnot efficiency (T_cold = 303 K) |
|---|---|
| 1000 | 69.7% |
| 800 | 62.1% |
| 600 | 49.5% |
| 400 | 24.3% |

**The cold sink is essential** — energy leaving the hot source decreases entropy; transferring energy to work leaves entropy unchanged; heat entering the cold sink increases entropy. Overall entropy must increase for spontaneous operation.

## Entropy

$$S_2 - S_1 = \int_1^2 \frac{dQ}{T_{rev}}$$

- Entropy is a **property** (like [[first-law|internal energy U]] from the 1st law) — its change is path-independent
- Entropy arises from the 2nd law the same way internal energy arises from the 1st law
- Key difference: entropy can only be expressed in terms of **reversible** changes

## Clausius Inequality

$$\oint \frac{dQ}{T} \leq 0$$

- = 0 for a reversible cycle
- < 0 for an irreversible cycle

## Combined 1st and 2nd Law Equations

Combining the [[first-law|NFEE]] (dQ − dW = dU) with the entropy definition gives:

$$T\,ds = du + p\,dv$$
$$T\,ds = dh - v\,dp$$

These allow entropy values to be calculated from other thermodynamic properties — for [[ideal-gases|ideal gases]] this gives Δs = c_v ln(T₂/T₁) + R_s ln(v₂/v₁). For steam, values are tabulated in [[steam-power-cycles|steam tables]].

## Reversibility
A reversible process is idealised — never achievable in practice. A process is reversible only if the fluid is in **thermal equilibrium** throughout (infinitesimally small temperature differences at each step).

- **Isentropic** = reversible adiabatic → Δs = 0
- Any real process → Δs > 0

Isentropic processes are used in the [[steam-power-cycles|Rankine cycle]] to model ideal turbine and pump behaviour.

## Carnot Cycle (4 non-flow processes)

| Process | Description |
|---|---|
| 1 → 2 | Isothermal heat addition |
| 2 → 3 | Isentropic expansion |
| 3 → 4 | Isothermal heat rejection |
| 4 → 1 | Isentropic compression |

$$\eta_{Carnot} = \frac{T_1 - T_3}{T_1} = 1 - \frac{T_{cold}}{T_{hot}}$$

All temperatures in Kelvin. No real engine exceeds Carnot efficiency. See [[thermodynamics-practice-problems|Q3 (heat pump COP)]] for a worked application of these efficiency limits.

## Isentropic Efficiency (real machines)

For real [[steam-power-cycles|turbines and pumps]] that deviate from ideal isentropic behaviour:

$$\eta_{turbine} = \frac{h_3 - h_{4,actual}}{h_3 - h_{4,s}}$$

$$\eta_{pump} = \frac{h_{2,s} - h_1}{h_{2,actual} - h_1}$$

## External Irreversibility
When entropy increases in the **surroundings** rather than the system itself. Energy is said to be "wasted" or "degraded". Example: heat conducted through an insulated block between two temperature reservoirs — the block itself is isentropic, but the surroundings gain entropy.

## Cardiff Self-Check Questions
1. Is entropy a thermodynamic property? *(Yes)*
2. Which system increases in entropy — irreversible or reversible? *(Irreversible)*
3. Increasing entropy is a change in quantity or quality of energy? *(Quality)*
4. Is there an entropy change in a reversible process? *(No)*
5. Can entropy be measured directly? *(No — only from reversible heat transfer)*

## Links
- [[first-law]] — 1st law gives the energy balance; 2nd law constrains direction and limits efficiency
- [[ideal-gases]] — Tds equations reduce to Δs = c_v ln(T₂/T₁) + R_s ln(v₂/v₁) for ideal gases
- [[steam-power-cycles]] — isentropic turbine (s₃=s₄) and pump (s₁=s₂) are direct applications of 2nd law; Carnot gives the efficiency ceiling
- [[thermodynamics-practice-problems]] — Q3 (heat pump COP) and Q5 (efficiency conceptuals) test 2nd law understanding
- [[../fluid-mechanics/dimensional-analysis]] — thermodynamic efficiency and COP are dimensionless groups analogous to those in fluid mechanics
