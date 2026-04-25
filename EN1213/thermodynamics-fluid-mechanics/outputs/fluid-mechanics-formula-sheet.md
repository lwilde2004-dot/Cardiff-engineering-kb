---
tags: [fluid-mechanics, thermofluids]
---

# Fluid Mechanics Formula Sheet

*EN1213/EN2103 — Cardiff University. Quick reference for exams.*

---

## Key Properties

| Property | Symbol | Units | Water | Air |
|---|---|---|---|---|
| Density | ρ | kg/m³ | 1000 | 1.2 |
| Dynamic viscosity | μ | Pa·s | 10⁻³ | 2×10⁻⁵ |
| Specific gravity | s | — | 1.0 | — |
| Mercury s | — | — | 13.6 | — |

Specific weight: w = ρg &ensp;|&ensp; Kinematic viscosity: ν = μ/ρ

**Newton's Law of Viscosity:** $\tau = \mu \frac{du}{dy}$

---

## Hydrostatics

**Pressure with depth:** $p = p_{atm} + \rho g z$

**Force on plane surface:** $F_R = \rho g \bar{h} A$

**Centre of pressure:** $y_R = \bar{y}_C + \frac{I_{xx}}{\bar{y}_C A}$

**Parallel axis theorem:** $I_{OO} = I_{xx} + A\bar{h}^2$

**Vertical rect. wall:** Centre of pressure at **H/3 from base**

**Second moments of area:**

| Shape | I_xx (centroidal) |
|---|---|
| Rectangle b×d | bd³/12 |
| Circle radius R | πR⁴/4 |

**Curved surfaces:** F_H = force on vertical projection; F_V = weight of fluid above

---

## Continuity

$$A_1 v_1 = A_2 v_2 = \dot{V} \qquad \dot{m} = \rho A v$$

---

## Bernoulli's Equation

$$p_1 + \tfrac{1}{2}\rho v_1^2 + \rho g z_1 = p_2 + \tfrac{1}{2}\rho v_2^2 + \rho g z_2$$

**Head form:** $\frac{p}{\rho g} + \frac{v^2}{2g} + z = H$

**Assumptions:** steady, incompressible, inviscid, same streamline, no pump/turbine

**Torricelli:** $v = \sqrt{2gH}$

**Discharge with C_d:** $Q = C_d A \sqrt{2gH}$ &ensp;where C_d = C_v × C_c (sharp edge: C_c = 0.64, C_v ≈ 0.97)

---

## Momentum Equation

$$\sum F_x = \dot{m}(v_{2x} - v_{1x}) \qquad \sum F_y = \dot{m}(v_{2y} - v_{1y})$$

- Pressure forces act **into** the CV
- Force on structure = equal and opposite to force on fluid
- Moving plate/vane: superimpose −v_plate to make stationary

---

## Reynolds Number & Flow Regimes

$$Re = \frac{\rho \bar{u} D_h}{\mu} = \frac{\bar{u} D_h}{\nu} \qquad D_h = \frac{4A}{P}$$

Re < 2100: **laminar** &ensp;|&ensp; Re > 4000: **turbulent**

---

## Pipe Flow Losses (Darcy-Weisbach)

$$h_f = f \frac{L}{D} \frac{\bar{u}^2}{2g}$$

Laminar: $f = 64/Re$ &ensp;|&ensp; Turbulent: use Moody diagram

**Extended Bernoulli:**
$$\frac{p_1}{\rho g} + \frac{v_1^2}{2g} + z_1 = \frac{p_2}{\rho g} + \frac{v_2^2}{2g} + z_2 + h_L$$

---

## Dimensional Analysis

**Buckingham Pi:** n variables − k dimensions = number of Pi groups

**Repeating variables:** choose ρ, v, L (span all of M, L, T)

| Group | Formula |
|---|---|
| Reynolds | ρvL/μ |
| Froude | v/√(gL) |
| Pressure coeff. | Δp/½ρv² |

**Similarity:** geometric + kinematic + dynamic → complete similarity
