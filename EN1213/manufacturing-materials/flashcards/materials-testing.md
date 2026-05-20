---
tags: [flashcards, materials-testing, EN1213]
---

# Materials Testing Flashcards

<!-- Cards added by Claude. Format: ## FC[N] — Concept — Difficulty, then question, ?, answer, --- -->

## FC1 — Stress-Strain Curve Features — Core

Name five key features on an engineering tensile stress-strain curve and what each represents.
?
1. Elastic region — linear, fully recoverable; slope = Young's modulus E.
2. Proportional limit — last point obeying Hooke's law (σ = Eε).
3. Yield point / 0.2% proof stress — onset of permanent plastic deformation; σ_y.
4. UTS — maximum engineering stress; necking begins here.
5. Fracture stress — stress at failure; lower than UTS for ductile materials due to necking reducing the cross-section.

---

## FC2 — 0.2% Proof Stress — Definition

How is the 0.2% proof stress determined, and why is it used instead of the yield point for some materials?
?
Draw a line parallel to the elastic portion of the stress-strain curve, offset 0.2% along the strain axis. The intersection of this line with the curve = σ_0.2 (0.2% proof stress).
Used for materials that do not show a sharp yield point (e.g. aluminium alloys, austenitic stainless steels) — they yield gradually, so the offset construction defines a practical design limit.

---

## FC3 — Toughness vs Hardness vs Strength — Definition

Distinguish toughness, hardness, and strength. Which property requires both high strength and high ductility?
?
Strength: maximum stress before yield (σ_y) or fracture (UTS) — units MPa.
Toughness: energy absorbed per unit volume to fracture = area under the stress-strain curve — units J/m³. Requires both strength and ductility.
Hardness: resistance to localised plastic deformation (indentation); measured by Vickers, Brinell, or Rockwell.

---

## FC4 — Hardness Tests — Definition

Name three hardness tests, state the indenter used in each, and give the approximate relationship between Vickers hardness and UTS.
?
Vickers (HV): diamond pyramid indenter; hardness calculated from diagonal length of indent; suitable for all metals.
Brinell (HB): hardened steel or carbide sphere; used for softer metals and castings.
Rockwell: measures depth of indentation under a fixed load; fast; used in production.
Approximation: UTS (MPa) ≈ 3.3 × HV.
<!--SR:!2026-05-15,1,230-->

---

## FC5 — Martensite Formation — Core

How does martensite form during quenching, and why is it hard and brittle?
?
Austenite is quenched so rapidly that carbon has no time to diffuse. FCC austenite transforms diffusionlessly to body-centred tetragonal (BCT) — carbon atoms are trapped in interstitial sites, creating large lattice distortion. This distortion strongly pins dislocation movement → very high hardness (up to 65 HRC) but very brittle. Must be tempered before use to restore toughness.
<!--SR:!2026-05-14,1,230-->

---

## FC6 — Tempering — Core

Why must martensite be tempered, and how does tempering temperature affect the balance of properties?
?
As-quenched martensite is too brittle for most applications due to high residual stresses and carbon supersaturation. Tempering (150–700°C, 1–2 h, air cool) partially precipitates carbon as fine carbides → reduces hardness but dramatically improves toughness.
Low (150–250°C): high hardness retained → cutting tools, bearings.
Medium (350–500°C): balance of strength and toughness → springs, hand tools.
High (550–700°C): lower hardness, very tough → structural components.

---

## FC7 — Annealing vs Normalising vs Quenching — Core

Distinguish annealing, normalising, and quenching by cooling rate and resulting microstructure/properties.
?
Annealing: heat above A3, cool very slowly in furnace → coarse pearlite; softest, most ductile; used to relieve stresses or soften for machining.
Normalising: heat above A3, air cool → fine pearlite; slightly harder and stronger than annealed; more uniform grain structure.
Quenching (hardening): heat above A3, rapid quench (water/oil) → martensite; maximum hardness and brittleness.

---

## FC8 — Jominy End-Quench Test — Definition

Describe the Jominy end-quench test procedure and what property it measures. How do alloying elements affect the result?
?
1. Austenitise a standard cylindrical bar.
2. Water-quench one end; the opposite end cools slowly by convection.
3. Grind a flat; measure hardness every 1.5 mm from the quenched end.
The Jominy curve (hardness vs distance) quantifies hardenability — ability to form martensite at depth, not maximum hardness.
Alloying elements (Mn, Cr, Mo, Ni) shift the TTT curve to longer times → lower critical cooling rate → higher hardenability (martensite forms deeper in the section).

---

## FC9 — TTT Diagram Regions — Core

Name the three transformation regions on a TTT diagram and state the microstructure and properties each produces.
?
1. Pearlite (high-temperature nose): slow diffusion-controlled cooling → alternating ferrite and cementite lamellae; coarse (soft, ductile) at high T; fine (harder) at lower T.
2. Bainite (intermediate temperature): faster quench → fine carbides in ferrite matrix; tougher than martensite at similar hardness.
3. Martensite (below M_s line): very fast quench; diffusionless BCT transformation; very hard and brittle.

---

## FC10 — Surface Hardening Methods — Definition

Name three surface hardening methods and explain the mechanism behind each.
?
Carburising: component heated in carbon-rich atmosphere; C diffuses into surface raising local carbon content; surface can then be quenched to high hardness while the core remains tough.
Nitriding: nitrogen diffuses into surface at 500–570°C forming hard iron nitrides; no quench required → minimal distortion; very wear-resistant surface.
Induction hardening: eddy currents rapidly heat the surface, which is immediately quenched; localises hardening to the surface layer without changing bulk chemistry or heating the core.
