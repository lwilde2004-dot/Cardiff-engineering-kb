---
title: Differentiation
module: EN1211
topic: differentiation
type: wiki
source: "[[EN1211/raw/differentiation/EN1211 - Differentiation - Staff]]"
tags: [EN1211, maths, differentiation]
---

# Differentiation

Differentiation is the process of finding the rate of change of a function — how quickly it increases or decreases at any point. The result is the **derivative**, which gives the gradient of the curve at every point. In engineering, differentiation models velocity, acceleration, beam deflection, and circuit behaviour.

---

## 1. The Derivative from First Principles

The derivative of y = f(x) is defined as the limit:

$$\frac{dy}{dx} = \lim_{\delta x \to 0} \frac{f(x + \delta x) - f(x)}{\delta x}$$

This is the gradient of the tangent to the curve at point x. For a straight line the gradient is constant; for a curve it varies with x.

**Alternative notations:** dy/dx = f'(x) = y' = Df(x)

---

## 2. Standard Derivatives

| f(x) | f'(x) |
|---|---|
| xⁿ | nxⁿ⁻¹ |
| eˣ | eˣ |
| eᵃˣ | aeᵃˣ |
| ln x | 1/x |
| sin x | cos x |
| cos x | −sin x |
| tan x | sec²x |
| sin(ax) | a cos(ax) |
| cos(ax) | −a sin(ax) |
| aˣ | aˣ ln a |

---

## 3. Rules of Differentiation

### Product Rule
If y = u·v where u and v are both functions of x:
$$\frac{dy}{dx} = u\frac{dv}{dx} + v\frac{du}{dx}$$

### Quotient Rule
If y = u/v:
$$\frac{dy}{dx} = \frac{v\frac{du}{dx} - u\frac{dv}{dx}}{v^2}$$

### Chain Rule (Composite Functions)
If y = f(g(x)), let u = g(x), then y = f(u):
$$\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$$

*Example:* y = sin(x²) → dy/dx = cos(x²) · 2x = 2x cos(x²)

---

## 4. Implicit Differentiation

When y is not expressed explicitly in terms of x, differentiate both sides with respect to x and use the chain rule on any y terms (since y is a function of x):

$$\frac{d}{dx}[f(y)] = f'(y)\frac{dy}{dx}$$

*Example:* x² + y² = 25 → 2x + 2y(dy/dx) = 0 → dy/dx = −x/y

---

## 5. Parametric Differentiation

When x = f(t) and y = g(t):
$$\frac{dy}{dx} = \frac{dy/dt}{dx/dt}$$

Second derivative: d²y/dx² = (d/dt)(dy/dx) / (dx/dt)

---

## 6. Exponentials and Logarithms

- d/dx[eˣ] = eˣ (unique — its own derivative)
- d/dx[ln x] = 1/x
- d/dx[aˣ] = aˣ ln a
- d/dx[logₐx] = 1/(x ln a)

For functions like y = xˣ, take ln of both sides first (logarithmic differentiation).

---

## 7. Leibniz's Theorem (nth Derivative of a Product)

The nth derivative of y = u·v is:

$$\frac{d^n y}{dx^n} = \sum_{r=0}^{n} \binom{n}{r} u^{(r)} v^{(n-r)}$$

where u^(r) denotes the rth derivative of u and ⁿCᵣ = n!/(r!(n−r)!).

---

## 8. Stationary Points

At a stationary point: **dy/dx = 0**

| d²y/dx² | Type |
|---|---|
| > 0 | Minimum |
| < 0 | Maximum |
| = 0 | Inflection (check further) |

*Method:* Set dy/dx = 0, solve for x, substitute back for y, then evaluate d²y/dx² to classify.

---

## Links
- [[EN1211/wiki/integration/integration|Integration]] — the reverse process
- [[EN1211/wiki/partial-differentiation/partial-differentiation|Partial Differentiation]] — extension to functions of multiple variables
- [[EN1211/wiki/differential-equations/differential-equations|Differential Equations]] — equations involving derivatives
- [[EN1211/wiki/INDEX|Module Index]]
