---
tags: [solid-mechanics, mechanics, practice-questions]
---

# Solid Mechanics — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Axial Loading — Medium

**Given:** A solid steel bar has two segments:  
Segment AB: length 400 mm, diameter 20 mm, carries axial load P_1 = 30 kN (tension).  
Segment BC: length 300 mm, diameter 15 mm, carries no additional load.  
E = 200 GPa. Bar is fixed at A.

**Find:** Total elongation of the bar.

---

**Solution:**

$$\delta = \frac{PL}{AE}$$

Segment AB: P = 30 kN, L = 0.4 m, A = π(0.01)² = 3.14×10⁻⁴ m²
$$\delta_{AB} = \frac{30{,}000 \times 0.4}{3.14\times10^{-4} \times 200\times10^9} = \frac{12{,}000}{62.8\times10^6} = 0.191 \text{ mm}$$

Segment BC: P = 30 kN (same — no additional external load), L = 0.3 m, A = π(0.0075)² = 1.767×10⁻⁴ m²
$$\delta_{BC} = \frac{30{,}000 \times 0.3}{1.767\times10^{-4} \times 200\times10^9} = \frac{9{,}000}{35.34\times10^6} = 0.255 \text{ mm}$$

$$\delta_{total} = 0.191 + 0.255 = \textbf{0.446 mm}$$

**Answer:** Total elongation = 0.446 mm

---

## Q2 — Torsion — Medium

**Given:** A solid circular steel shaft, diameter d = 40 mm, length L = 1.2 m.  
Applied torque T = 500 N·m. G = 80 GPa.

**Find:** Maximum shear stress and angle of twist.

---

**Solution:**

J = πd⁴/32 = π(0.04)⁴/32 = 2.51×10⁻⁷ m⁴ &ensp;|&ensp; r_max = 0.02 m

**Max shear stress:**
$$\tau_{max} = \frac{T \cdot r_{max}}{J} = \frac{500 \times 0.02}{2.51\times10^{-7}} = \textbf{39.8 MPa}$$

**Angle of twist:**
$$\phi = \frac{TL}{GJ} = \frac{500 \times 1.2}{80\times10^9 \times 2.51\times10^{-7}} = \frac{600}{20{,}080} = 0.0299 \text{ rad} = \textbf{1.71°}$$

**Answer:** τ_max = 39.8 MPa &ensp;|&ensp; φ = 1.71°

---
