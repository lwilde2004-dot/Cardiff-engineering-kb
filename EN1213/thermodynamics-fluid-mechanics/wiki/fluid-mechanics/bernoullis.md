---
tags: [fluid-mechanics, thermofluids]
---

# Bernoulli's Equation

Bernoulli's equation expresses conservation of energy along a streamline in steady, incompressible, inviscid flow. It is the [[../thermodynamics/first-law|SFEE]] simplified for incompressible flow with no heat or shaft work. Dr Allmark's module covers it in three forms and applies it to tanks, orifices, and open channel flows.

*Lecturer: Dr Matthew Allmark (Allmarkmj1@cardiff.ac.uk, C4.14) — EN1213/EN2103 FM2 Part 3*

## Assumptions (must state in exams)
1. Points 1 and 2 lie on the **same streamline**
2. Fluid has **constant [[fluid-properties|density]]** (incompressible)
3. Flow is **steady**
4. **No friction** (no energy loss) — if friction is present, see [[laminar-turbulent-flow|extended Bernoulli with head loss]]
5. **No work added** to the fluid (e.g. no pump between points)

When the velocity v = 0, Bernoulli reduces to the [[hydrostatics|hydrostatic pressure equation]]: p = p_atm + ρgz.

## Three Forms

**[1] Pressure form** (units: Pa)
$$p + \frac{1}{2}\rho v^2 + \rho g z = \text{constant}$$

**[2] Divided by ρg — Head form** (units: m)
$$\frac{p}{\rho g} + \frac{v^2}{2g} + z = H = \text{constant}$$

**[3] Between two points**
$$p_1 + \frac{1}{2}\rho v_1^2 + \rho g z_1 = p_2 + \frac{1}{2}\rho v_2^2 + \rho g z_2$$

> Bernoulli applies for a **given streamline** — neighbouring streamlines may have different constant values.

## Continuity (always use alongside Bernoulli)
$$A_1 v_1 = A_2 v_2 = \dot{V} \quad \text{(incompressible)}$$

Same continuity equation used in the [[momentum|momentum equation]] for pipe bends.

## Applications Covered in Lectures

### Case 1 — Tank with Small Orifice (Constant Level)
- Orifice small enough that [[pressure-measurement|pressure head]] is uniform across it → velocity is constant
- Datum at centre of orifice, H = constant
- Result: **v₂ = √(2gH)** (Torricelli's theorem)
- Volumetric discharge: **Q_theoretical = A_orifice · v₂**

### Coefficient of Discharge, C_d
Actual flow is less than theoretical due to contraction and [[fluid-properties|viscous]] friction:

$$Q_{actual} = C_d \cdot A \cdot \sqrt{2gH}$$

Where C_d = C_v × C_c
- **C_v** (velocity coefficient) ≈ 0.97 (determined experimentally)
- **C_c** (contraction coefficient): for sharp-edged orifice = **0.64**
- C_d values tabulated in British Standard specifications

### Case 2 — Tank with Large Orifice (Constant Level)
- Orifice large enough that [[hydrostatics|pressure head]] varies across it → velocity varies
- Must integrate across the orifice height
- Datum taken at tank surface level

### Case 3 — Tank with Small Orifice (Varying Level)
- Level drops as fluid exits
- Flow rate through orifice: Q = C_d · A · √(2gH)
- Volume leaving = volume drop in tank → solve ODE for H(t)
- Time to empty (orifice at bottom): integrate from H_initial to 0

### Open Channel Flow — Weirs
Two types:
- **Rectangular notch weir** — treated like large orifice (Case 2)
- **Vee notch weir** — triangular, velocity varies across notch width

The [[dimensional-analysis|Froude number]] Fr = v/√(gL) governs free-surface flows like these weirs.

## Common Exam Scenarios

**Pipe with reducer** (z₁ = z₂):
- A₂ < A₁ → v₂ > v₁ (continuity)
- v₂ > v₁ → p₂ < p₁ (Bernoulli) — measure with [[pressure-measurement|differential manometer]]

**Pitot tube** — measures stagnation pressure using [[pressure-measurement|a pressure transducer or manometer]]:
$$v = \sqrt{\frac{2(p_{stagnation} - p_{static})}{\rho}}$$

For pipe bends, use Bernoulli to find p₂ first, then apply the [[momentum|momentum equation]] for forces.


---

## Key Diagrams

![[EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/bernoullis/assets/EN1213 - Continuity and Bernoullis Equation - Mashruk/slide4-img8196.jpg]]

![[EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/bernoullis/assets/EN1213 - Continuity and Bernoullis Equation - Mashruk/slide5-img7.jpg]]

## Links
- [[hydrostatics]] — Bernoulli is the dynamic extension of hydrostatics; at v=0 it reduces to p = p_atm + ρgz
- [[fluid-properties]] — fluid density (ρ) appears in every form of the equation; viscosity explains why C_d < 1
- [[pressure-measurement]] — Pitot tubes and manometers use Bernoulli to convert pressure readings to velocity
- [[momentum]] — use Bernoulli first to find pressures at inlet/outlet, then apply momentum for forces
- [[laminar-turbulent-flow]] — real pipe flows add a head loss term h_L; Bernoulli only holds for ideal (inviscid) flow
- [[dimensional-analysis]] — Reynolds number determines whether Bernoulli's inviscid assumption is valid; Fr governs weir flows
