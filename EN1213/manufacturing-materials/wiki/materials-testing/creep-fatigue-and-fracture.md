---
title: Creep, Fatigue and Fracture
module: EN1213
topic: manufacturing-materials/materials-testing
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Creep - Eaton]]"
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Fatigue - Eaton]]"
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Fracture - Eaton]]"
  - "[[EN1213/manufacturing-materials/raw/materials-testing/EN1213 - Materials Failure Analysis Methods - UNKNOWN]]"
module_index: "[[/_modules/EN1213]]"
tags: [materials, manufacturing-materials]
---

# Creep, Fatigue and Fracture

Static [[failure-criteria|failure criteria]] describe single-load failure at room temperature. In reality, engineering components fail under **cyclic loading** (fatigue), **sustained loading at high temperature** (creep), or when a **crack is already present** (fracture mechanics). All three are critical design considerations, and fatigue alone accounts for the majority of mechanical failures in service. Lectured by Dr Mark Eaton as part of EN1213/EN1214/EN2101.

---

## Fracture

Fracture is the separation of a body into two or more parts when stress exceeds fracture strength. Two failure modes:

### Ductile Fracture
- **Large plastic deformation** before fracture (cup-and-cone in tensile test specimens)
- Cracks are **stable** — they grow slowly as load increases, giving warning before failure
- Fracture surface appears fibrous/dull with a shear lip around the edge

### Brittle Fracture
- **Little or no plastic deformation** — sudden, catastrophic failure with no warning
- Cracks are **unstable** — once initiated, propagate without increase in applied stress
- Fracture surface appears bright and crystalline (cleavage); chevron markings point toward crack origin
- More likely at low temperatures, high strain rates, in triaxially stressed specimens, in thick sections

### Griffith's Criterion and Fracture Toughness

Fracture mechanics (Griffith, 1920) shows that materials fail not at the theoretical bond strength but at much lower stresses because **pre-existing cracks act as stress concentrators**. The stress intensity factor K describes the stress field near a crack tip:

$$K = Y\sigma\sqrt{\pi a}$$

where σ = applied stress, a = crack half-length, Y = geometry factor (≈ 1 for central crack in infinite plate).

**Fracture toughness K_IC** is a material property (units MPa√m): fracture occurs when K ≥ K_IC. High K_IC → damage tolerant material.

| Material | K_IC (MPa√m) |
|----------|-------------|
| High-strength steel | 50–100 |
| Aluminium alloy 7075 | 24–35 |
| Titanium Ti-6Al-4V | 50–70 |
| Glass | 0.7 |
| Alumina (Al₂O₃) | 3–5 |

---

## Creep

Creep is **time-dependent plastic deformation** under a constant stress, significant when service temperature exceeds the **homologous temperature** T/T_m > 0.4 (where T_m = melting point in Kelvin).

### Homologous Temperature Reference Points
- Lead (T_m = 601 K): T_H at room temperature = 298/601 = 0.50 → **lead creeps at room temperature**
- Steel (T_m ≈ 1811 K): significant creep above ~450°C (0.4 × 1811 K = 724 K)
- Aluminium (T_m ≈ 933 K): significant creep above ~100°C

### Typical Creep Curve (Three Stages)

1. **Primary creep**: rapid initial deformation at decreasing rate (work hardening dominates)
2. **Secondary (steady-state) creep**: constant, minimum strain rate (balance between hardening and recovery); most engineering life is spent here
3. **Tertiary creep**: strain rate accelerates as cross-section reduces and/or internal damage (grain boundary cavitation) develops → failure

### Mechanisms
- **Dislocation creep**: dominates at high stresses and relatively low T/T_m; dislocations climb and glide thermally
- **Diffusion creep**: dominates at very high temperatures; atoms diffuse and mass transport changes the shape

### Engineering Response to Creep
- **Turbine blade design**: operates at 2500–2900°C inlet temperature and 10,000+ rpm; single-crystal blade alloys eliminate grain boundaries (primary creep path); cooling holes inside the blade
- **Displacement-limited applications**: dimensions must remain precise (turbine rotors) → limit steady-state creep rate
- **Rupture-limited applications**: failure must not occur (high-pressure tubes) → limit time to rupture
- **Stress relaxation-limited**: stress must not drop below a threshold (bolted joints, springs) → limit creep relaxation

---

## Fatigue

Fatigue is **crack growth under cyclic loading**, occurring at stresses well below the yield stress. It is the most common cause of engineering component failure (~80–90% of metal fatigue cases).

### Mechanism — Three Stages

**Stage I — Crack Initiation**
- Cyclic stress drives dislocation movements; slip bands develop within grains
- Intrusions and extrusions form at the surface → crack initiates along shear stress planes (±45°)
- Strongly influenced by surface finish, stress concentrations, grain size, and environment

**Stage II — Crack Propagation**
- Crack turns and grows roughly perpendicular to the maximum principal stress
- Characteristic **beach marks** (macroscopic) and **striations** (microscopic, one per cycle) visible on fracture surface
- Growth rate described by Paris Law: da/dN = C(ΔK)^m

**Stage III — Fast Fracture**
- Crack reaches critical length where K = K_IC → sudden, ductile or brittle final fracture
- Little warning

### S-N Curve (Wöhler Diagram)

Plot of stress amplitude (S) vs number of cycles to failure (N):
- For steels: a **fatigue limit** (endurance limit) exists below which fatigue does not occur (≈ 0.5 × UTS for ferrous metals)
- For aluminium and most non-ferrous: no true fatigue limit; strength decreases with increasing N (use N = 10⁷ cycles as a design basis)

### Factors Affecting Fatigue Life
- **Surface finish**: polished surfaces → longer life; notches, machining marks → stress concentrators → shorter life
- **Mean stress**: tensile mean stress reduces fatigue life (Goodman, Gerber corrections)
- **Environment**: corrosion fatigue — crack growth accelerated by corrosion at crack tip
- **Grain size**: finer grain → shorter Stage I (more grain boundaries = fewer slip bands) but also more grain boundary area to arrest Stage II cracks

### Design Against Fatigue
- Minimise stress concentrations: generous fillets, smooth surface finish, shot peening (induces compressive residual stress → retards crack initiation)
- Avoid sharp re-entrant corners, deep tool marks, and surface damage
- Consider mean stress correction in design calculations

---

## Links

- [[EN1213/manufacturing-materials/wiki/materials-testing/mechanical-properties|Mechanical Properties and Testing]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/heat-treatment|Heat Treatment]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures and Defects]]
- [[EN1213/mechanics/wiki/solid-mechanics/failure-criteria|Failure Criteria — Yield Criteria]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain]]
- [[_modules/EN1213|EN1213 Module Index]]
