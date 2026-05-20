---
tags: [flashcards, materials-science, EN1213]
---

# Materials Science Flashcards

<!-- Cards added by Claude. Format: ## FC[N] — Concept — Difficulty, then question, ?, answer, --- -->

## FC1 — Metallic Bonding Properties — Core

Why are metals ductile and electrically conductive, whereas ceramics are brittle and insulating?
?
Metals have a non-directional electron cloud (sea of electrons) — ion cores can slide past each other without breaking bonds → ductile. The mobile electrons carry charge → conductive. Ceramics have ionic/covalent bonds which are strongly directional; slip would bring like-charged ions adjacent → repulsion and fracture → brittle. Electrons are tightly bound to ions → insulating.

---

## FC2 — Bond Types vs Material Classes — Core

Match each of the four material classes to its primary bonding type and one resulting property.
?
Metals → metallic → ductile and conductive.
Ceramics → ionic/covalent → brittle, hard, high melting point.
Polymers → covalent backbone + Van der Waals between chains → flexible, low density.
Composites → mixed → properties tailored by combining matrix and reinforcement.

---

## FC3 — FCC Crystal Structure — Core

State the number of atoms per unit cell, packing factor, and two examples of FCC metals. Why is FCC the most ductile structure?
?
4 atoms per unit cell. Packing factor 0.74 (most efficient cubic packing). Examples: Al, Cu, Ni, γ-Fe (austenite above 912°C), Au.
Most ductile because FCC has 12 easily activated {111}<110> slip systems — more independent slip directions means plastic deformation proceeds at lower stress without cracking.

---

## FC4 — BCC Structure and Ductility — Core

Give the atoms per unit cell and packing factor for BCC. Name two BCC metals and explain why BCC is less ductile than FCC.
?
2 atoms per unit cell. Packing factor 0.68. Examples: α-Fe (below 912°C), Cr, W, Mo.
BCC slip requires higher Peierls-Nabarro stress to move dislocations (thermally activated at low temperature) → brittle-to-ductile transition temperature exists. FCC slip activates more readily at room temperature → more ductile.

---

## FC5 — Strengthening Mechanisms — Core

Name four mechanisms that strengthen metals by impeding dislocation movement and give one example of each.
?
1. Solid solution strengthening — solute atoms distort lattice (C in Fe → steel; Zn in Cu → brass).
2. Work/strain hardening — plastic deformation increases dislocation density; dislocations tangle (cold-rolled sheet).
3. Grain refinement — more grain boundaries obstruct slip; Hall-Petch: σ_y ∝ d^−½ (HSLA steels).
4. Precipitation hardening — fine second-phase particles pin dislocations (7075 Al alloy, maraging steels).

---

## FC6 — Weibull Statistics — Formula

State the Weibull survival probability equation for ceramics. What does the Weibull modulus m indicate?
?
P_survival = exp[−(σ/σ₀)^m]
σ₀ = characteristic strength, m = Weibull modulus.
Higher m → less scatter in strength → more consistent ceramic. Low m means wide variability because fracture initiates at the worst surface crack present. Engineers design to a specified survival probability rather than a single strength value.

---

## FC7 — Rule of Mixtures — Formula

State the rule of mixtures for composite stiffness when loading is (a) parallel to fibres and (b) perpendicular to fibres.
?
(a) Parallel (upper bound): E_c = V_f · E_f + (1 − V_f) · E_m
(b) Perpendicular (lower bound): 1/E_⊥ = V_f/E_f + (1 − V_f)/E_m
V_f = fibre volume fraction, E_f = fibre modulus, E_m = matrix modulus. This anisotropy is a key feature of fibre composites.

---

## FC8 — Iron-Carbon Phase Diagram — Core

Define ferrite, austenite, and cementite. What happens at the eutectoid point (composition and temperature)?
?
Ferrite (α): BCC iron; max 0.022 wt% C; soft and ductile.
Austenite (γ): FCC iron; max 2.14 wt% C; stable 912–1394°C.
Cementite (Fe₃C): hard, brittle iron carbide.
Eutectoid: 0.76 wt% C at 727°C — on slow cooling, austenite → pearlite (alternating ferrite and cementite lamellae). Exploited by heat treatment: quenching from austenite suppresses pearlite and produces hard martensite.

---

## FC9 — Lever Rule — Formula

How do you apply the lever rule to find the mass fractions of two phases in a two-phase region of a binary phase diagram?
?
f_α = (X₀ − X_β) / (X_α − X_β)
f_β = 1 − f_α
X₀ = overall alloy composition; X_α and X_β = compositions of the α and β phases read from the phase boundaries at the temperature of interest.

---

## FC10 — Point Defects — Definition

Name three types of point defect in a crystal, give an engineering example of each, and state their effect on mechanical properties.
?
1. Vacancy — missing atom (present in all crystals; concentration ↑ with temperature) → local strain field impedes dislocations.
2. Substitutional atom — foreign atom at a lattice site (Zn in Cu → brass) → solid solution strengthening.
3. Interstitial atom — small atom between lattice sites (C in Fe → steel) → strong solid solution strengthening due to large lattice strain field.
