---
tags: [materials, manufacturing-materials, practice-questions]
---

# Materials Testing — Practice Questions

*Questions collated from study sessions. Format: Given → Find → Solution → Answer.*

---

## Q1 — Fracture Toughness — Medium

**Given:** A large aluminium alloy plate contains a central through-crack of total length 2a = 4 mm.  
Applied stress σ = 150 MPa. Fracture toughness K_IC = 30 MPa√m. Geometry factor Y = 1.

**Find:** Will the plate fracture?

---

**Solution:**

Calculate K:
$$K = Y\sigma\sqrt{\pi a} = 1 \times 150 \times \sqrt{\pi \times 0.002}$$
$$K = 150 \times \sqrt{0.006283} = 150 \times 0.07927 = 11.89 \text{ MPa}\sqrt{\text{m}}$$

Compare to K_IC = 30 MPa√m:

K = 11.89 < K_IC = 30 → **No fracture**

**Answer:** K = 11.89 MPa√m < K_IC → plate does **not** fracture at this stress.

*Find critical crack size for fracture:*
$$a_c = \frac{1}{\pi}\left(\frac{K_{IC}}{Y\sigma}\right)^2 = \frac{1}{\pi}\left(\frac{30}{150}\right)^2 = \frac{0.04}{\pi} = 12.7 \text{ mm}$$

So the crack would need to grow to 2a = 25.4 mm before fracture.

---

## Q2 — Creep — Short Answer

**Given:** A jet engine turbine blade operates at 800°C. The blade material is a nickel superalloy with T_m = 1450°C.

**Find:** (a) Is creep a concern? (b) What design strategies reduce creep?

---

**Solution:**

**(a)** Homologous temperature:
$$T_H = \frac{T}{T_m} = \frac{(800+273)}{(1450+273)} = \frac{1073}{1723} = 0.623$$

T_H = 0.623 > 0.4 → **Yes, creep is a significant concern.**

**(b)** Design strategies:
- **Single-crystal blades** — eliminate grain boundaries (the primary creep path); removes grain boundary sliding
- **Directionally solidified alloys** — grain boundaries aligned with stress direction (less damaging)
- **Internal cooling channels** — reduce metal temperature, lowering T_H
- **Thermal barrier coatings (TBC)** — ceramic coating insulates the alloy surface

**Answer:** (a) Yes, T_H = 0.62 (well above 0.4) &ensp;|&ensp; (b) Single crystal, DS alloys, cooling channels, TBC

---
