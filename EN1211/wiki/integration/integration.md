---
title: Integration
module: EN1211
topic: integration
type: wiki
source: "[[EN1211/raw/integration/EN1211 - Integration - Staff]]"
tags: [EN1211, maths, integration]
---

# Integration

Integration is the reverse of differentiation — given a derivative, find the original function. It also calculates areas under curves and is fundamental to engineering analysis of signals, energy, and accumulated quantities. Because differentiating a constant gives zero, integration always introduces an **arbitrary constant of integration, c**.

---

## 1. Standard Integrals

| f(x) | ∫f(x) dx |
|---|---|
| xⁿ (n ≠ −1) | xⁿ⁺¹/(n+1) + c |
| x⁻¹ = 1/x | ln|x| + c |
| eˣ | eˣ + c |
| eᵃˣ | eᵃˣ/a + c |
| sin x | −cos x + c |
| cos x | sin x + c |
| sin(ax) | −cos(ax)/a + c |
| cos(ax) | sin(ax)/a + c |
| sec²x | tan x + c |
| 1/√(1−x²) | arcsin x + c |
| 1/(1+x²) | arctan x + c |

---

## 2. Definite vs Indefinite Integrals

**Indefinite:** ∫f(x) dx = F(x) + c (result is a function)

**Definite:** ∫ₐᵇ f(x) dx = [F(x)]ₐᵇ = F(b) − F(a) (result is a number; c cancels)

The definite integral gives the **area** under f(x) between x = a and x = b (positive if above x-axis; negative if below).

---

## 3. Integration by Substitution

Used when the integrand contains a composite function. Let u = g(x), so du = g'(x) dx:

$$\int f(g(x))\,g'(x)\,dx = \int f(u)\,du$$

*Example:* ∫ 2x cos(x²) dx — let u = x², du = 2x dx → ∫ cos(u) du = sin(u) + c = sin(x²) + c

**Key:** Choose u so that du appears (or nearly appears) in the integrand.

---

## 4. Integration by Parts

Used for products of functions. Derived from the product rule:

$$\int u\,\frac{dv}{dx}\,dx = uv - \int v\,\frac{du}{dx}\,dx$$

**LIATE priority for choosing u:** Logarithm, Inverse trig, Algebraic, Trigonometric, Exponential (choose u from whichever comes first).

*Example:* ∫ x eˣ dx — let u = x, dv = eˣ dx → uv − ∫v du = xeˣ − eˣ + c

Sometimes must apply twice (e.g. ∫ x² eˣ dx).

---

## 5. Partial Fractions

Used to integrate rational functions P(x)/Q(x) by splitting into simpler fractions.

**Types:**
- Distinct linear factors: A/(x−a) + B/(x−b)
- Repeated linear factors: A/(x−a) + B/(x−a)²
- Irreducible quadratic: (Ax+B)/(x²+bx+c)

*Method:* Factorise denominator → set up partial fractions → multiply through → equate coefficients (or substitute convenient values of x) → integrate each term.

---

## 6. Trigonometric Integrals

**Useful identities:**
- sin²x = ½(1 − cos 2x)
- cos²x = ½(1 + cos 2x)
- sin x cos x = ½ sin 2x

For ∫sinⁿx dx or ∫cosⁿx dx:
- Odd power: save one factor, convert rest using sin²+cos²=1, then substitute
- Even power: use half-angle identities above

---

## Links
- [[EN1211/wiki/differentiation/differentiation|Differentiation]] — the reverse process
- [[EN1211/wiki/applications-of-integration/applications-of-integration|Applications of Integration]] — area, volume, mean values
- [[EN1211/wiki/INDEX|Module Index]]
