---
title: Differential Equations
module: EN1211
topic: differential-equations
type: wiki
source: "[[EN1211/raw/differential-equations/EN1211 - Differential Equations - Staff]]"
tags: [EN1211, maths, differential-equations]
---

# Differential Equations

A differential equation (DE) relates an unknown function to one or more of its derivatives. Solving it means finding the function. DEs are central to engineering: they model capacitor charging, beam deflection, oscillation, fluid flow, and structural dynamics.

---

## 1. Classification

**Order:** the highest derivative present (1st, 2nd, etc.)
**Degree:** the power of the highest derivative (usually 1)
**ODE:** ordinary DE — one independent variable, full derivatives (dy/dx)
**PDE:** partial DE — multiple independent variables, partial derivatives (∂y/∂x)

---

## 2. First Order ODEs — Separation of Variables

Applicable when the DE can be written as: g(y) dy = f(x) dx

**Method:**
1. Rearrange to separate variables: all y terms one side, all x terms other
2. Integrate both sides
3. Apply initial/boundary condition to find the constant c

*Example:* dy/dx = xy → dy/y = x dx → ln|y| = x²/2 + c → y = Ae^(x²/2)

---

## 3. First Order Linear ODEs — Integrating Factor

Form: dy/dx + P(x)y = Q(x)

**Method:**
1. Find the integrating factor: μ(x) = e^∫P(x)dx
2. Multiply both sides by μ(x): d/dx[μy] = μQ(x)
3. Integrate both sides: μy = ∫μQ(x) dx + c
4. Solve for y

*Example:* dy/dx + y/x = x → P = 1/x → μ = e^(ln x) = x → d/dx[xy] = x² → xy = x³/3 + c → y = x²/3 + c/x

---

## 4. Second Order ODEs — Homogeneous

Form: a(d²y/dx²) + b(dy/dx) + cy = 0

**Method:**
1. Write the **auxiliary (characteristic) equation**: am² + bm + c = 0
2. Solve for m (roots m₁, m₂)
3. Write the **complementary function (CF)** based on root type:

| Root type | Condition | Complementary function |
|---|---|---|
| Two distinct real roots | b²−4ac > 0 | y = Ae^(m₁x) + Be^(m₂x) |
| Repeated real root | b²−4ac = 0 | y = (A + Bx)e^(mx) |
| Complex roots m = α ± jβ | b²−4ac < 0 | y = e^(αx)(A cos βx + B sin βx) |

---

## 5. Second Order ODEs — Non-Homogeneous

Form: a(d²y/dx²) + b(dy/dx) + cy = f(x)

**General solution = CF + PI** (Particular Integral)

The PI is a particular solution that satisfies the full equation. Choose its form based on f(x):

| f(x) | Trial PI |
|---|---|
| Constant k | y = C |
| Polynomial xⁿ | y = Axⁿ + Bxⁿ⁻¹ + … + C |
| e^(kx) | y = Ce^(kx) (if k ≠ m₁, m₂) |
| sin(kx) or cos(kx) | y = C sin(kx) + D cos(kx) |
| e^(kx)·sin(kx) | y = e^(kx)(C sin(kx) + D cos(kx)) |

**If the trial PI duplicates a term in the CF**, multiply by x (or x² if needed).

**Method:** Substitute trial PI into DE → equate coefficients → find constants.

---

## 6. Applying Conditions

**Initial conditions** (values given at x = 0): substitute after finding the general solution.
**Boundary conditions** (values given at two different points): set up two equations and solve simultaneously for A and B.

The number of conditions needed equals the order of the DE.

---

## 7. Engineering Applications

- **RC circuit:** dV/dt + V/(RC) = V_source/RC → first order, exponential charging/discharging
- **Mass-spring-damper:** m·ẍ + c·ẋ + kx = F(t) → second order; overdamped/critically damped/underdamped based on discriminant
- **Beam deflection:** EI·d⁴y/dx⁴ = w(x) → fourth order ODE

---

## Links
- [[EN1211/wiki/differentiation/differentiation|Differentiation]] — derivatives used in DE formulation
- [[EN1211/wiki/partial-differentiation/partial-differentiation|Partial Differentiation]] — leads to PDEs
- [[EN1211/wiki/INDEX|Module Index]]
