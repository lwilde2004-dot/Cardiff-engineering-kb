---
title: Applications of Integration
module: EN1211
topic: applications-of-integration
type: wiki
source: "[[EN1211/raw/applications-of-integration/EN1211 - Applications of Integration - Staff]]"
tags: [EN1211, maths, integration, applications]
---

# Applications of Integration

Integration as the limit of a sum of rectangles unlocks a wide range of engineering applications beyond just finding antiderivatives — including areas, volumes, mean values, and RMS values of waveforms.

---

## 1. Integration as the Limit of a Sum

The definite integral arises naturally from dividing an area into n thin rectangles of width δx:

$$A = \lim_{n \to \infty} \sum_{k=1}^{n} y(x_k)\,\delta x = \int_a^b f(x)\,dx$$

As δx → 0 and n → ∞, the sum converges to the exact area. This insight means integration can solve any problem where you are accumulating infinitesimal contributions.

---

## 2. Area Under a Curve

Area between f(x) and the x-axis from x = a to x = b:
$$A = \int_a^b f(x)\,dx$$

- Result is **positive** where f(x) > 0 (above x-axis)
- Result is **negative** where f(x) < 0 (below x-axis)
- For total area including regions below x-axis: split at x-intercepts and add |each part|

**Area between two curves:** A = ∫ₐᵇ [f(x) − g(x)] dx  (where f(x) ≥ g(x))

---

## 3. Volume of Revolution

When a curve y = f(x) is rotated 360° about the **x-axis**, the volume swept out is:

$$V = \pi \int_a^b y^2\,dx = \pi \int_a^b [f(x)]^2\,dx$$

When rotated about the **y-axis**:
$$V = 2\pi \int_a^b x\,f(x)\,dx \quad \text{(shell method)}$$

---

## 4. Mean Value of a Function

The mean value of f(x) over the interval [a, b]:

$$\bar{y} = \frac{1}{b-a} \int_a^b f(x)\,dx$$

Interpretation: the height of the rectangle with the same base [a,b] and same area as under f(x).

---

## 5. Root Mean Square (RMS) Value

Used heavily in electrical engineering for AC waveforms:

$$y_{rms} = \sqrt{\frac{1}{b-a} \int_a^b [f(x)]^2\,dx}$$

For a sinusoid V = V₀ sin(ωt): V_rms = V₀/√2 ≈ 0.707 V₀ (the relationship between peak and RMS voltage).

---

## 6. Numerical Integration

When the integral cannot be found analytically, use numerical methods.

### Trapezium Rule
Approximate the area using trapezoids:
$$\int_a^b f(x)\,dx \approx \frac{h}{2}[y_0 + 2(y_1 + y_2 + \cdots + y_{n-1}) + y_n]$$
where h = (b−a)/n and yᵢ = f(a + ih). Error ∝ h².

### Simpson's Rule (n must be even)
Better accuracy using parabolas through three points:
$$\int_a^b f(x)\,dx \approx \frac{h}{3}[y_0 + 4y_1 + 2y_2 + 4y_3 + \cdots + 4y_{n-1} + y_n]$$
Alternating coefficients: 1, 4, 2, 4, 2, …, 4, 1. Error ∝ h⁴ (much more accurate than trapezium).

---

## Links
- [[EN1211/wiki/integration/integration|Integration]] — techniques needed for these applications
- [[EN1211/wiki/INDEX|Module Index]]
