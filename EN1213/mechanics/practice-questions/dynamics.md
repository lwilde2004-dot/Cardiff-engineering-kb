---
tags: [dynamics, mechanics, practice-questions]
---

# Dynamics — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Rotating Systems / Gear Ratio — Medium

**Given:** A motor drives a load through a single gear pair.  
Motor: I_m = 0.05 kg·m², ω₀ = 0 rad/s.  
Gear ratio G = 5 (motor speed / load speed).  
Load: I_L = 2 kg·m².  
Applied motor torque T_m = 10 N·m.

**Find:** Angular acceleration of the motor shaft.

---

**Solution:**

**Step 1 — Reflect load inertia to motor shaft:**
$$I_{L,reflected} = \frac{I_L}{G^2} = \frac{2}{25} = 0.08 \text{ kg·m}^2$$

**Step 2 — Total inertia seen by motor:**
$$I_{total} = I_m + I_{L,reflected} = 0.05 + 0.08 = 0.13 \text{ kg·m}^2$$

**Step 3 — Newton's 2nd law for rotation:**
$$\Sigma M_G = I\alpha \implies \alpha_m = \frac{T_m}{I_{total}} = \frac{10}{0.13} = \textbf{76.9 rad/s}^2$$

**Answer:** α_motor = 76.9 rad/s²  &ensp;|&ensp; α_load = 76.9/5 = 15.4 rad/s²

---

## Q2 — Moment of Inertia / Parallel Axis — Medium

**Given:** A thin uniform rod, mass m = 3 kg, length L = 0.8 m.

**Find:** Moment of inertia about (a) its centre, (b) one end.

---

**Solution:**

**(a)** Standard result (axis ⊥ rod through centre):
$$I_G = \frac{mL^2}{12} = \frac{3 \times 0.64}{12} = \textbf{0.16 kg·m}^2$$

**(b)** Parallel axis theorem — shift axis to end (d = L/2 = 0.4 m):
$$I_{end} = I_G + md^2 = 0.16 + 3\times(0.4)^2 = 0.16 + 0.48 = \textbf{0.64 kg·m}^2$$

*Check:* mL²/3 = 3×0.64/3 = 0.64 ✓

**Answer:** (a) I_G = 0.16 kg·m² &ensp;|&ensp; (b) I_end = 0.64 kg·m²

---
