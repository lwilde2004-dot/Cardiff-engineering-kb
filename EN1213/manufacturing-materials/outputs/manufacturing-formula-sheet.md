---
tags: [manufacturing, materials, manufacturing-materials]
---

# Manufacturing & Materials Formula Sheet

*EN1213/EN1214/EN2101 — Cardiff University. Quick reference for exams.*

---

## Manufacturing Processes — Key Parameters

**Material Removal Rate (machining):**
$$\text{MRR} = V_c \times f \times a_p \quad \text{(mm}^3\text{/min)}$$

where V_c = cutting speed, f = feed per revolution, a_p = depth of cut.

| Process | Tool motion | Workpiece motion |
|---------|-------------|-----------------|
| Turning | Stationary (fed) | Rotating |
| Milling | Rotating | Travelling |
| Drilling | Rotating + advancing | Stationary |
| Grinding | Rotating | Travelling |

---

## Materials Science — Bonding & Structure

**Crystal structures:**

| Structure | Packing factor | Slip systems | Examples |
|-----------|---------------|--------------|---------|
| BCC | 0.68 | 48 | α-Fe, Cr, W, Mo |
| FCC | 0.74 | 12 | Al, Cu, Ni, γ-Fe, Au |
| HCP | 0.74 | 3 (RT) | Ti, Zn, Mg, Co |

**Hall-Petch (grain size strengthening):**
$$\sigma_y = \sigma_0 + k d^{-\frac{1}{2}}$$

Finer grains (smaller d) → higher yield strength.

**Composite — Rule of Mixtures:**

Longitudinal (load parallel to fibres):
$$E_{\parallel} = V_f E_f + (1-V_f)E_m$$

Transverse (load perpendicular):
$$\frac{1}{E_{\perp}} = \frac{V_f}{E_f} + \frac{1-V_f}{E_m}$$

where V_f = fibre volume fraction, E_f = fibre modulus, E_m = matrix modulus.

---

## Materials Science — Phase Diagrams

**Lever rule** (mass fraction of phase α at overall composition X_0):
$$f_\alpha = \frac{X_\beta - X_0}{X_\beta - X_\alpha} \qquad f_\beta = 1 - f_\alpha$$

where X_α and X_β are compositions of the two phases at that temperature (read from phase boundaries).

**Iron-Carbon key points:**
- Eutectoid: 0.77 wt% C, 727°C → austenite → pearlite (ferrite + cementite)
- Max C in austenite: 2.14 wt% at 1147°C
- Max C in ferrite: 0.022 wt%
- Cementite: Fe₃C (6.7 wt% C)

---

## Materials Testing — Mechanical Properties

**Stress and strain (tensile test):**
$$\sigma = \frac{F}{A_0} \qquad \varepsilon = \frac{\Delta L}{L_0} \qquad E = \frac{\sigma}{\varepsilon}$$

**Hardness–UTS approximation:**
$$\text{UTS (MPa)} \approx 3.3 \times HV$$

**Weibull statistics (ceramic strength variability):**
$$P_{\text{survival}} = \exp\left[-\left(\frac{\sigma}{\sigma_0}\right)^m\right]$$

Higher Weibull modulus m → less scatter → more consistent strength.

---

## Materials Testing — Fracture

**Stress intensity factor:**
$$K = Y\sigma\sqrt{\pi a}$$

where Y ≈ 1 for central crack in infinite plate, σ = applied stress, a = crack half-length.

**Fracture toughness:** failure occurs when K ≥ K_IC (material property, units MPa√m).

| Material | K_IC (MPa√m) |
|----------|-------------|
| High-strength steel | 50–100 |
| Aluminium 7075 | 24–35 |
| Titanium Ti-6Al-4V | 50–70 |
| Glass | 0.7 |
| Alumina | 3–5 |

---

## Materials Testing — Creep

**Homologous temperature:**
$$T_H = \frac{T}{T_m} \quad \text{(both in Kelvin)}$$

Creep significant when T_H > 0.4.

| Metal | T_m (K) | Significant creep above |
|-------|---------|------------------------|
| Lead | 601 | Room temperature (T_H = 0.50 at 25°C) |
| Aluminium | 933 | ~100°C |
| Steel | ~1811 | ~450°C |

**Three stages:** Primary (decreasing rate) → Secondary (steady-state, minimum ε̇) → Tertiary (accelerating, failure)

---

## Materials Testing — Fatigue

**Paris Law (crack growth per cycle):**
$$\frac{da}{dN} = C(\Delta K)^m$$

where ΔK = stress intensity range, C and m are material constants.

**S-N curve (Wöhler):**
- Steel: fatigue limit ≈ 0.5 × UTS (below this, no fatigue failure)
- Aluminium/non-ferrous: no true fatigue limit; use N = 10⁷ as design basis

**Stress concentration factor:** σ_max = K · σ_nom (from geometry charts; always minimise in fatigue-loaded parts)

---

## Quick Links

[[EN1213/thermodynamics-fluid-mechanics/outputs/thermodynamics-formula-sheet\|Thermodynamics Formula Sheet]] · [[EN1213/thermodynamics-fluid-mechanics/outputs/fluid-mechanics-formula-sheet\|Fluids Formula Sheet]] · [[EN1213/mechanics/outputs/mechanics-formula-sheet\|Mechanics Formula Sheet]]
