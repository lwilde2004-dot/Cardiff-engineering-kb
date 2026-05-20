---
title: Complex Numbers
module: EN1211
topic: complex-numbers
type: wiki
source: "[[EN1211/raw/complex-numbers/EN1211 - Complex Numbers - Staff]]"
tags: [EN1211, maths, complex-numbers]
---

# Complex Numbers

Complex numbers extend the real number line to a 2D plane by introducing j = √(−1). In engineering, j (not i) is used to avoid confusion with electrical current. Complex numbers are essential for AC circuit analysis, control systems, signal processing, and vibration analysis.

---

## 1. The Imaginary Unit

$$j^2 = -1 \quad \Rightarrow \quad j = \sqrt{-1}$$

A **complex number** z has a real part and an imaginary part:
$$z = a + jb$$
- a = Re(z) = real part
- b = Im(z) = imaginary part
- Plotted on an **Argand diagram** (real axis horizontal, imaginary axis vertical)

---

## 2. Forms of a Complex Number

### Cartesian Form
z = a + jb

### Polar Form
$$z = r(\cos\theta + j\sin\theta) = r\angle\theta$$
- r = |z| = √(a² + b²) — the **modulus**
- θ = arg(z) = arctan(b/a) — the **argument** (angle from positive real axis, in radians)

### Euler / Exponential Form
$$z = re^{j\theta}$$

This follows from Euler's formula: **e^(jθ) = cos θ + j sin θ**

All three forms are equivalent. Use Cartesian for addition/subtraction; polar/exponential for multiplication/division.

---

## 3. Complex Conjugate

The conjugate of z = a + jb is: z* = a − jb (reflect across real axis)

$$z \cdot z^* = a^2 + b^2 = |z|^2$$

Used to rationalise division.

---

## 4. Arithmetic Operations

### Addition / Subtraction
Add/subtract real and imaginary parts separately:
(a + jb) ± (c + jd) = (a±c) + j(b±d)

### Multiplication (Cartesian)
(a + jb)(c + jd) = (ac − bd) + j(ad + bc)
*Remember: j² = −1*

### Multiplication (Polar/Exponential)
Multiply moduli, add arguments:
r₁e^(jθ₁) × r₂e^(jθ₂) = r₁r₂ e^(j(θ₁+θ₂))

### Division
Multiply numerator and denominator by the conjugate of the denominator:
$$\frac{a+jb}{c+jd} = \frac{(a+jb)(c-jd)}{c^2+d^2}$$

**Division (Polar):** divide moduli, subtract arguments:
(r₁/r₂) e^(j(θ₁−θ₂))

---

## 5. De Moivre's Theorem

$$z^n = r^n(\cos n\theta + j\sin n\theta) = r^n e^{jn\theta}$$

Used to find integer powers and roots of complex numbers.

**nth roots:** z^(1/n) has n distinct values:
$$z_k = r^{1/n}\left(\cos\frac{\theta + 2\pi k}{n} + j\sin\frac{\theta + 2\pi k}{n}\right), \quad k = 0, 1, \ldots, n-1$$

---

## 6. Euler's Formula and Key Results

$$e^{j\theta} = \cos\theta + j\sin\theta$$
$$e^{-j\theta} = \cos\theta - j\sin\theta$$

Therefore:
$$\cos\theta = \frac{e^{j\theta} + e^{-j\theta}}{2}, \qquad \sin\theta = \frac{e^{j\theta} - e^{-j\theta}}{2j}$$

**Euler's identity:** e^(jπ) + 1 = 0

---

## 7. Engineering Applications

- **AC circuits:** impedance Z = R + jX (resistance + reactance); phasors represent sinusoidal signals as rotating complex numbers
- **Control systems:** transfer functions; poles and zeros of systems
- **Signal processing:** Fourier transform uses complex exponentials e^(jωt)
- **Vibrations:** complex eigenvalues give damped natural frequencies

---

## Links
- [[EN1211/wiki/series/series|Series]] — Euler's formula derived from Maclaurin series for eˣ, sin x, cos x
- [[EN1211/wiki/matrices/matrices|Matrices]] — complex eigenvalues
- [[EN1211/wiki/INDEX|Module Index]]
