---
tags: [fluid-mechanics, thermofluids, practice-questions]
---

# Fluid Mechanics — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Bernoulli / Continuity — Medium

**Given:** Water flows through a horizontal pipe that narrows from diameter D₁ = 0.1 m to D₂ = 0.05 m.  
Inlet velocity V₁ = 2 m/s. Inlet gauge pressure P₁ = 80 kPa. ρ = 1000 kg/m³.

**Find:** Outlet velocity V₂ and outlet gauge pressure P₂.

---

**Solution:**

**Step 1 — Continuity:** A₁V₁ = A₂V₂
$$V_2 = V_1 \times \frac{A_1}{A_2} = V_1 \times \left(\frac{D_1}{D_2}\right)^2 = 2 \times \left(\frac{0.1}{0.05}\right)^2 = 2 \times 4 = 8 \text{ m/s}$$

**Step 2 — Bernoulli** (horizontal, z₁ = z₂):
$$P_1 + \tfrac{1}{2}\rho V_1^2 = P_2 + \tfrac{1}{2}\rho V_2^2$$
$$P_2 = P_1 + \tfrac{1}{2}\rho(V_1^2 - V_2^2) = 80{,}000 + \tfrac{1}{2}(1000)(4 - 64)$$
$$P_2 = 80{,}000 - 30{,}000 = \textbf{50 kPa (gauge)}$$

**Answer:** V₂ = 8 m/s &ensp;|&ensp; P₂ = 50 kPa gauge

---

## Q2 — Hydrostatics / Submerged Surface — Medium

**Given:** A rectangular gate 1.5 m wide × 2 m tall is hinged at the top and held vertical.  
The top of the gate is 1 m below the water surface. ρ = 1000 kg/m³, g = 9.81 m/s².

**Find:** Total hydrostatic force on the gate and depth of centre of pressure.

---

**Solution:**

**Step 1 — Total force:** F = ρg·ȳ·A  
Centroid depth ȳ = 1 + 2/2 = 2 m. Area A = 1.5 × 2 = 3 m²

$$F = 1000 \times 9.81 \times 2 \times 3 = \textbf{58.86 kN}$$

**Step 2 — Centre of pressure depth:**
$$y_{cp} = \bar{y} + \frac{I_G}{\bar{y} \cdot A}$$

For rectangle: I_G = bh³/12 = 1.5×2³/12 = 1.0 m⁴

$$y_{cp} = 2 + \frac{1.0}{2 \times 3} = 2 + 0.167 = \textbf{2.167 m below surface}$$

**Answer:** F = 58.86 kN &ensp;|&ensp; y_cp = 2.167 m below surface

---
