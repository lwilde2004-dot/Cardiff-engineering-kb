---
tags: [thermodynamics, thermofluids]
---

# Thermodynamics Formula Sheet

*EN1213/EN2103 — Cardiff University. Quick reference for exams.*

---

## Units & Notation
- Uppercase = absolute quantity (H, S, U, V)
- Lowercase = specific (per kg) quantity (h, s, u, v)
- T always in **Kelvin** (T_K = T_°C + 273.15)
- P always **absolute** (Pa or bar)

---

## Ideal Gases

| Law | Equation | Constant |
|---|---|---|
| Boyle's | P₁V₁ = P₂V₂ | T, n |
| Charles's | V₁/T₁ = V₂/T₂ | P, n |
| Avogadro's | V₁/n₁ = V₂/n₂ | T, P |
| Combined | pV = nRT = mR_sT | — |

R = 8.314 J/mol/K &ensp;|&ensp; R_s = R/M &ensp;|&ensp; R_s(air) = 287 J/kg·K

c_p(air) = 1005 &ensp;|&ensp; c_v(air) = 718 &ensp;|&ensp; γ(air) = 1.4 &ensp;|&ensp; R_s = c_p − c_v

**Polytropic:** pVⁿ = const &ensp;(n=1: isothermal, n=γ: adiabatic, n=0: isobaric, n=∞: isochoric)

---

## First Law

**Closed system (NFEE):**
$$Q - W = \Delta U = U_2 - U_1$$

**Open system (SFEE):**
$$\dot{Q} - \dot{W} = \dot{m}\left[(h_2-h_1) + \frac{V_2^2-V_1^2}{2} + g(z_2-z_1)\right]$$

Usually simplified to: $\dot{Q} - \dot{W} = \dot{m}(h_2-h_1)$

**Enthalpy:** H = U + pV &ensp;|&ensp; For ideal gas: ΔU = mc_vΔT &ensp;|&ensp; Δh = c_pΔT

**Sign convention:** Q_in = +ve, W_out = +ve

**Work in processes:**

| Process | Work |
|---|---|
| Isobaric | w = p(v₂−v₁) |
| Isochoric | w = 0 |
| Isothermal | w = R_sT ln(v₂/v₁) |
| Adiabatic | w = (p₁v₁−p₂v₂)/(γ−1) |

---

## Second Law & Entropy

**Clausius inequality:** $\oint \frac{dQ}{T} \leq 0$ (= 0 reversible, < 0 irreversible)

**Entropy:** $S_2 - S_1 = \int_1^2 \frac{dQ}{T_{rev}}$ &ensp;|&ensp; Isentropic: Δs = 0

**Combined equations:**
$$Tds = du + pdv \qquad Tds = dh - vdp$$

**Carnot efficiency:**
$$\eta_{Carnot} = 1 - \frac{T_C}{T_H} = \frac{T_H - T_C}{T_H}$$

**Isentropic efficiency:**
$$\eta_{turbine} = \frac{h_3-h_{4,actual}}{h_3-h_{4,s}} \qquad \eta_{pump} = \frac{h_{2,s}-h_1}{h_{2,actual}-h_1}$$

**Heat pump COP:** $COP_{HP} = \frac{Q_H}{W} = \frac{T_H}{T_H - T_C}$

**Refrigerator COP:** $COP_{ref} = \frac{Q_C}{W} = \frac{T_C}{T_H - T_C}$

---

## Steam / Rankine Cycle

**Dryness fraction:** $x = m_{vapour}/m_{total}$ &ensp;(0 ≤ x ≤ 1)

**Wet steam:** $h = h_f + xh_{fg}$ &ensp;|&ensp; $s = s_f + xs_{fg}$

**Rankine components:**

| Device | Equation |
|---|---|
| Pump (1→2) | w_P = h₂−h₁ ≈ v₁(p₂−p₁) |
| Boiler (2→3) | q_in = h₃−h₂ |
| Turbine (3→4) | w_T = h₃−h₄ |
| Condenser (4→1) | q_out = h₄−h₁ |

$$\eta_{Rankine} = \frac{w_T - w_P}{q_{in}}$$

**Isentropic processes:** s₃ = s₄ (turbine), s₁ = s₂ (pump)
