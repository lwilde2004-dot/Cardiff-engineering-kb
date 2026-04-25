---
tags: [thermodynamics, thermofluids, practice-questions]
---

# Thermodynamics — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Ideal Gases — Medium

**Given:** A closed rigid vessel contains 2 kg of air at 300 K and 150 kPa.  
The air is heated until the pressure reaches 400 kPa.  
R_s(air) = 287 J/kg·K

**Find:** Final temperature T₂ and heat added Q.

---

**Solution:**

**Step 1 — Find T₂.** Rigid vessel → V = const. For ideal gas at constant V:
$$\frac{P_1}{T_1} = \frac{P_2}{T_2} \implies T_2 = T_1 \times \frac{P_2}{P_1} = 300 \times \frac{400}{150} = 800 \text{ K}$$

**Step 2 — Find Q.** Closed system, no work (rigid): Q = ΔU = m·c_v·ΔT  
c_v(air) = 718 J/kg·K

$$Q = 2 \times 718 \times (800 - 300) = 718{,}000 \text{ J} = \textbf{718 kJ}$$

**Answer:** T₂ = 800 K &ensp;|&ensp; Q = 718 kJ

---

## Q2 — First Law (SFEE) — Medium

**Given:** Steam enters a turbine at h₁ = 3200 kJ/kg, V₁ = 50 m/s.  
Steam exits at h₂ = 2400 kJ/kg, V₂ = 180 m/s.  
Heat loss from turbine = 25 kJ/kg. Mass flow = 5 kg/s.

**Find:** Power output of the turbine.

---

**Solution:**

SFEE per unit mass (neglect Δz):
$$\dot{q} - \dot{w} = (h_2 - h_1) + \frac{V_2^2 - V_1^2}{2}$$

KE term: (180² − 50²)/2 = (32400 − 2500)/2 = 14,950 J/kg = 14.95 kJ/kg

$$-25 - \dot{w} = (2400 - 3200) + 14.95 = -785.05 \text{ kJ/kg}$$
$$\dot{w} = -25 + 785.05 = 760.05 \text{ kJ/kg}$$

Power = ṁ · ẇ = 5 × 760.05 = **3800 kW = 3.8 MW**

**Answer:** W_out = 3.8 MW

---
