---
tags: [statics, mechanics, practice-questions]
---

# Statics — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Equilibrium / Moments — Medium

**Given:** A simply supported horizontal beam AB, length 4 m. Pinned at A, roller at B.  
A point load of 10 kN acts 1 m from A. A distributed load of 3 kN/m acts over the right 2 m (from 2 m to 4 m from A).

**Find:** Reactions at A and B.

---

**Solution:**

**Step 1 — Replace UDL with resultant.** UDL: F_udl = 3 × 2 = 6 kN acting at 3 m from A (mid-point of loaded section).

**Step 2 — ΣMB = 0** (take moments about B to eliminate R_B):
$$R_A \times 4 - 10 \times 3 - 6 \times 1 = 0$$
$$R_A = \frac{30 + 6}{4} = \textbf{9 kN}$$

**Step 3 — ΣFy = 0:**
$$R_A + R_B = 10 + 6 = 16 \text{ kN}$$
$$R_B = 16 - 9 = \textbf{7 kN}$$

**Answer:** R_A = 9 kN ↑ &ensp;|&ensp; R_B = 7 kN ↑

---

## Q2 — Friction — Medium

**Given:** A 50 kg block rests on a horizontal surface. μ_s = 0.4, μ_k = 0.3.  
A horizontal force P is applied.

**Find:** (a) Minimum P to start sliding. (b) Force required to maintain constant velocity.

---

**Solution:**

N = mg = 50 × 9.81 = 490.5 N

**(a)** Impending motion → F = μ_s · N:
$$P_{min} = 0.4 \times 490.5 = \textbf{196.2 N}$$

**(b)** Constant velocity (kinetic friction):
$$P = \mu_k \times N = 0.3 \times 490.5 = \textbf{147.2 N}$$

**Answer:** (a) 196.2 N &ensp;|&ensp; (b) 147.2 N

---
