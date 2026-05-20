---
title: Partial Differentiation
module: EN1211
topic: partial-differentiation
type: wiki
source: "[[EN1211/raw/partial-differentiation/EN1211 - Partial Differentiation - Staff]]"
tags: [EN1211, maths, partial-differentiation]
---

# Partial Differentiation

When a function depends on more than one variable — such as pressure depending on both temperature and volume — partial differentiation finds the rate of change with respect to one variable while holding all others constant. This is essential for engineering thermodynamics, fluid mechanics, and optimisation.

---

## 1. Functions of Several Variables

A function of two variables, f(x, y), produces a surface above the x-y plane.

**Example:** P = f(T, V) = nRT/V — pressure depends on both T and V.

---

## 2. First Order Partial Derivatives

**∂f/∂x** — differentiate with respect to x, treating all other variables as constants.
**∂f/∂y** — differentiate with respect to y, treating all other variables as constants.

*Example:* f(x, y) = x³y + 2xy²
- ∂f/∂x = 3x²y + 2y²
- ∂f/∂y = x³ + 4xy

**Notation:** ∂f/∂x = fₓ = f_x (subscript notation also common)

---

## 3. Second Order Partial Derivatives

Four possible second partial derivatives for f(x, y):

| Notation | Meaning |
|---|---|
| ∂²f/∂x² | Differentiate with respect to x twice |
| ∂²f/∂y² | Differentiate with respect to y twice |
| ∂²f/∂x∂y | Differentiate w.r.t. y first, then x |
| ∂²f/∂y∂x | Differentiate w.r.t. x first, then y |

**Symmetry (Clairaut's theorem):** For well-behaved functions, ∂²f/∂x∂y = ∂²f/∂y∂x (mixed partials are equal).

---

## 4. Total Differential

The total change in f(x, y) when both x and y change by small amounts δx and δy:

$$\delta f \approx \frac{\partial f}{\partial x}\delta x + \frac{\partial f}{\partial y}\delta y$$

In the limit: df = (∂f/∂x)dx + (∂f/∂y)dy

**Engineering use:** error propagation — if x and y have measurement uncertainties δx and δy, the uncertainty in f is approximately |∂f/∂x|δx + |∂f/∂y|δy.

---

## 5. Chain Rule for Partial Derivatives

If f depends on x and y, and both x and y are functions of a parameter t:

$$\frac{df}{dt} = \frac{\partial f}{\partial x}\frac{dx}{dt} + \frac{\partial f}{\partial y}\frac{dy}{dt}$$

More generally, if f = f(x, y) and x = x(u, v), y = y(u, v):

$$\frac{\partial f}{\partial u} = \frac{\partial f}{\partial x}\frac{\partial x}{\partial u} + \frac{\partial f}{\partial y}\frac{\partial y}{\partial u}$$

---

## 6. Stationary Points of f(x, y)

At a stationary point: ∂f/∂x = 0 **and** ∂f/∂y = 0 simultaneously.

**Classification using the discriminant Δ:**

Let A = ∂²f/∂x², B = ∂²f/∂x∂y, C = ∂²f/∂y², and Δ = AC − B²

| Condition | Type |
|---|---|
| Δ > 0 and A > 0 | Minimum |
| Δ > 0 and A < 0 | Maximum |
| Δ < 0 | Saddle point |
| Δ = 0 | Inconclusive — further investigation needed |

---

## 7. Exact Differentials

A differential P dx + Q dy is **exact** if ∂P/∂y = ∂Q/∂x (i.e. it equals df for some f).

If exact, the function f can be found by integration:
1. Integrate P w.r.t. x to get f (treating y as constant); include arbitrary function g(y)
2. Differentiate result w.r.t. y, equate to Q, solve for g(y)

---

## Links
- [[EN1211/wiki/differentiation/differentiation|Differentiation]] — single-variable foundation
- [[EN1211/wiki/differential-equations/differential-equations|Differential Equations]] — DEs involving partial derivatives become PDEs
- [[EN1211/wiki/INDEX|Module Index]]
