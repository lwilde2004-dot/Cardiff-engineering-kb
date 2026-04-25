---
title: Ceramics, Glasses, Composites and Phase Diagrams
module: EN1213
topic: manufacturing-materials/materials-science
type: wiki
sources:
  - "[[EN1213/manufacturing-materials/raw/materials-science/EN1213 - Materials Ceramics and Ceramic Structures - Eaton]]"
  - "[[EN1213/manufacturing-materials/raw/materials-science/EN1213 - Materials Phase Diagrams and Transformations - Eaton]]"
module_index: "[[/_modules/EN1213]]"
tags: [materials, manufacturing-materials]
---

# Ceramics, Glasses, Composites and Phase Diagrams

While metals dominate structural engineering, ceramics, glasses, and composites fill roles where metals cannot — extreme temperatures, electrical insulation, high stiffness-to-weight ratio. Phase diagrams describe how materials behave as a function of composition and temperature, underpinning [[heat-treatment|heat treatment]] and alloy design. Lectured by Dr Mark Eaton as part of EN1213/EN1214/EN2101.

---

## Ceramics

Ceramics are **inorganic, non-metallic compounds** composed of metal and non-metal atoms (e.g. MgO, Al₂O₃, SiC, Si₃N₄). They are crystalline or semi-crystalline.

**Properties** (governed by [[atomic-structure-and-bonding|ionic/covalent bonding]]):
- **High stiffness and hardness**: strong directional bonds resist deformation
- **High melting temperatures**: strong bonds require high thermal energy to break
- **Brittle**: no dislocation movement possible (ionic/covalent bonds cannot rearrange without bond breaking) → failure by crack propagation with little plastic deformation
- **Electrical and thermal insulators**: poor electron mobility (electrons tightly bound to ions)

### Variability in Strength — Weibull Statistics

Ceramic strength varies significantly between nominally identical specimens because fracture initiates at the worst surface crack present. The strength distribution follows **Weibull statistics**:

$$P_{\text{survival}} = \exp\left[-\left(\frac{\sigma}{\sigma_0}\right)^m\right]$$

where m = Weibull modulus (higher m → less scatter → more consistent material) and σ₀ = characteristic strength. Engineers use Weibull statistics to design with a specified probability of survival, rather than a single strength value.

---

## Glasses

Glasses are **amorphous** (non-crystalline) ceramics — the most common is silica (SiO₂) based. Amorphous structure arises from rapid cooling through the glass transition temperature T_g, preventing crystallisation.

- **Glass transition temperature T_g**: below T_g, glass is rigid and brittle; above T_g, it flows as a viscous liquid. Not a melting point — a gradual transition.
- Properties: transparent, thermally insulating, chemically resistant; brittle and sensitive to surface scratches (which amplify stress by stress concentration)

---

## Composite Materials

A **composite** combines two or more distinct materials to achieve properties neither component has alone. The two phases are:
- **Matrix**: binds the reinforcement and transfers load (polymer, metal, or ceramic)
- **Reinforcement**: carries the load (fibres, particles, whiskers)

### Particulate Composites
Particles of one material dispersed in a matrix. Primarily improve hardness, stiffness, and wear resistance. Example: WC-Co cemented carbide (cutting tool inserts — tungsten carbide particles in a cobalt binder).

### Fibre-Reinforced Composites (FRC)

Fibres (glass, carbon, Kevlar) aligned in a polymer matrix:
- **GFRP** (glass fibre reinforced polymer): moderate stiffness, high strength, low cost; boat hulls, wind turbine blades
- **CFRP** (carbon fibre reinforced polymer): very high stiffness and strength, low density; aerospace, motorsport, high-end bicycles

**Rule of Mixtures** — longitudinal stiffness of a unidirectional composite:

$$E_{\text{composite}} = V_f E_f + (1 - V_f) E_m$$

where V_f = fibre volume fraction, E_f = fibre modulus, E_m = matrix modulus. This upper bound applies when loading is **parallel** to fibres.

For loading **perpendicular** to fibres (inverse rule of mixtures):

$$\frac{1}{E_{\perp}} = \frac{V_f}{E_f} + \frac{1-V_f}{E_m}$$

This anisotropy is a key feature of composites — they are much weaker/stiffer in some directions than others.

---

## Phase Diagrams

A **phase** is a homogeneous portion of material with uniform physical and chemical characteristics. A **phase diagram** shows which phases are stable at any given temperature and composition (for a binary system: two components).

### Reading a Phase Diagram

1. **Identify the point** (temperature T, composition X) on the diagram
2. **Identify the phase(s)** present in that region (liquidus/solidus/solvus lines divide regions)
3. **Lever rule** — the mass fraction of each phase:

$$f_\alpha = \frac{X_0 - X_\beta}{X_\alpha - X_\beta} \qquad f_\beta = 1 - f_\alpha$$

where X₀ = overall composition, X_α and X_β = compositions of the two phases at that temperature (read from the phase boundaries).

### Binary Isomorphous System (e.g. Cu-Ni)

Two metals completely miscible in the solid state. The diagram shows:
- **Liquid region** (above liquidus line)
- **Mushy zone** (liquid + solid, between liquidus and solidus)
- **Single solid phase** (below solidus)

Under equilibrium cooling, composition of solid shifts as temperature falls (requires diffusion).

### Binary Eutectic System (e.g. Pb-Sn, Al-Si)

Two metals with limited solubility in the solid state. Three single-phase regions connected at a **eutectic point** — the lowest melting composition:
- At the eutectic composition, liquid transforms directly to two solid phases simultaneously at constant temperature
- Eutectic microstructure: alternating lamellae of the two phases → fine, hard microstructure

### Iron-Carbon (Steel) Phase Diagram

The most important engineering phase diagram:
- **Ferrite (α)**: BCC iron; low C solubility (max 0.022 wt%); soft and ductile
- **Austenite (γ)**: FCC iron; higher C solubility (max 2.14 wt%); stable 912–1394°C
- **Cementite (Fe₃C)**: hard, brittle iron carbide
- **Eutectoid** (0.76 wt% C, 727°C): austenite → pearlite (alternating ferrite + cementite lamellae) on slow cooling

[[heat-treatment|Heat treatment]] exploits this diagram: quenching from the austenite region suppresses pearlite formation and produces martensite (hard, brittle).

---

## Links

- [[EN1213/manufacturing-materials/wiki/materials-science/atomic-structure-and-bonding|Atomic Structure and Bonding]]
- [[EN1213/manufacturing-materials/wiki/materials-science/crystal-structures|Crystal Structures and Defects]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/heat-treatment|Heat Treatment]]
- [[EN1213/manufacturing-materials/wiki/materials-testing/mechanical-properties|Mechanical Properties and Testing]]
- [[_modules/EN1213|EN1213 Module Index]]
