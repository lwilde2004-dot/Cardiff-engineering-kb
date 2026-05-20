---
tags: [fluid-mechanics, thermofluids]
---

# Hydrostatics

Hydrostatics is the study of fluids at rest. Since there is no motion, there are no shear stresses — all forces are pressure forces acting perpendicular to surfaces. It is the foundation for [[pressure-measurement|manometer analysis]] and the static case from which [[bernoullis|Bernoulli's equation]] is derived by adding velocity. Key applications: dam design, ships, storage tanks, submerged gates.

*Lecturer: Dr Syed Mashruk (mashruks@cardiff.ac.uk) — EN1213/EN2103 FM1 Lecture 3*

## Hydrostatic Pressure

Pressure increases linearly with depth — this is the equation underpinning all [[pressure-measurement|manometer calculations]]:

$$p_t = p_a + \rho g z$$

$$\frac{dp}{dz} = \rho g = \text{constant}$$

Where z is depth below the free surface (positive downward). The term z is also called **head** (metres of fluid). The [[fluid-properties|fluid density]] ρ is the key material property here.

**Hydrostatic Paradox**: pressure at a given depth depends only on the vertical depth and [[fluid-properties|fluid density]] — NOT on the shape of the container. Different shaped vessels filled to the same height with the same fluid exert the same pressure at the base.

## Force on a Plane Submerged Surface

Total hydrostatic force on a vertical flat wall of height h:

$$F_R = \rho g \bar{h} A$$

Where $\bar{h}$ is the depth of the **centroid** of the surface.

For a vertical rectangular wall: $F_R = \rho g \frac{h}{2} \times (h \times b) = \frac{1}{2}\rho g h^2 b$

These pressure forces also appear as inlet/outlet terms when applying the [[momentum|momentum equation]] to pipe bends.

### Centre of Pressure
The resultant force does NOT act at the centroid — it acts lower, at the **centre of pressure**:

$$y_R = \bar{y} + \frac{I_{xx}}{\bar{y} A}$$

Where:
- $\bar{y}$ = distance from surface to centroid (along the surface)
- $I_{xx}$ = second moment of area about centroidal axis
- A = area of surface

**For a vertical rectangular wall**: centre of pressure is at **H/3 from the base** (always given in Cardiff exams).

### Parallel Axis Theorem
Used to relate second moment of area about any axis to the centroidal axis:

$$I_{OO} = I_{xx} + A\bar{h}^2$$

Where $I_{xx}$ is the second moment about the centroidal axis (look up in tables for standard shapes).

## General Inclined Surface
For a plane surface set at angle θ to the horizontal:

$$F_R = \rho g h_C A$$

$$y_R = \bar{y}_C + \frac{I_{xx}}{\bar{y}_C A}$$

Where $h_C$ is the vertical depth of the centroid and $\bar{y}_C$ is the slant distance.

## Curved Surfaces
Integrating pressure over a curved surface is complex. Instead, use equilibrium of the enclosed fluid volume:

- **Horizontal component** ($F_H$): equal to force on the vertical projection of the curved surface
- **Vertical component** ($F_V$): equal to weight of fluid above the curved surface (up to the free surface)
- Resultant: $F = \sqrt{F_H^2 + F_V^2}$

## Worked Example Types (Cardiff Exam)
1. Force on a rectangular vertical wall → use F = ½ρgh²b, centre at H/3
2. Inclined rectangular gate → find FR and centre of pressure using parallel axis theorem
3. Curved surface → resolve into H and V components

## Common Second Moments of Area

| Shape | $I_{xx}$ (about centroidal axis) |
|---|---|
| Rectangle (b × d) | bd³/12 |
| Circle (radius R) | πR⁴/4 |
| Triangle (base b, height h) | bh³/36 |


---

## Key Diagrams

![[EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/hydrostatics/assets/EN1213 - Hydrostatics and Submerged Surfaces - Mashruk/slide5-img3.png]]

![[EN1213/thermodynamics-fluid-mechanics/raw/fluid-mechanics/hydrostatics/assets/EN1213 - Hydrostatics and Submerged Surfaces - Mashruk/slide13-img25603.png]]

## Links
- [[fluid-properties]] — fluid density ρ is the key input to all hydrostatic force and pressure calculations
- [[pressure-measurement]] — manometers use the hydrostatic pressure equation p = p_atm + ρgz directly
- [[bernoullis]] — Bernoulli's equation is hydrostatics extended to moving fluids; adds the ½ρv² kinetic term
- [[momentum]] — hydrostatic pressure forces at inlet/outlet appear in the pipe bend momentum balance
- [[laminar-turbulent-flow]] — in pipe flow, hydrostatic pressure drives the flow against viscous friction (Darcy-Weisbach)
- [[dimensional-analysis]] — hydrostatic and inertia forces combine to give the Froude number Fr = v/√(gL)
