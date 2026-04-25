---
tags: [fluid-mechanics, thermofluids]
---

# Linear Momentum Equation

The momentum equation applies Newton's second law to a **control volume** of fluid. It gives the forces on any flow-redirecting structure — pipe bends, nozzles, vanes, plates — where [[bernoullis|Bernoulli]] gives energy but not force directly.

*Lecturers: Dr Matthew Allmark & Dr Allan Mason-Jones (mason-jonesa@cardiff.ac.uk, C4.06) — EN1213/EN2103 FM2 Part 2*

## Control Volume (CV)
An imaginary surface enclosing a volume of interest. It:
- Can be fixed, moving, rigid, or deforming
- Delineates the boundary between the system and surroundings
- Allows mass and energy balance without dealing with internal components

> **Note:** [[pressure-measurement|Pressure]] forces act **into** the control volume.

Continuity inside a CV (incompressible, no sources/sinks) — same as [[bernoullis|Bernoulli's continuity equation]]:
$$\sum_{in} \dot{m} = \sum_{out} \dot{m} \quad \Rightarrow \quad A_1 v_1 = A_2 v_2$$

## The Momentum Equation

Newton's 2nd law: rate of change of momentum = net force

$$\sum \mathbf{F} = \dot{m}(\mathbf{v_2} - \mathbf{v_1})$$

In components:
$$\sum F_x = \dot{m}(v_{2x} - v_{1x})$$
$$\sum F_y = \dot{m}(v_{2y} - v_{1y})$$

Where **ṁ = ρAv** (kg/s) — [[fluid-properties|density]] ρ is required.

## Applications Covered in Lectures

### 1. Jet Striking Fixed Normal Plate
- Jet hits plate perpendicularly
- x-direction: F = −ṁv₁ (force on fluid is negative x, i.e. leftward)
- y-direction: For ideal fluid ([[fluid-properties|inviscid]]) → no shear stress → no y-force

### 2. Jet Striking Fixed Inclined Plate
- Resolve velocity into components normal and parallel to plate
- Apply momentum in x and y, then find resultant: |R| = √(R_x² + R_y²)

### 3. Jet Striking Fixed Curved Vane
- Apply [[bernoullis|Bernoulli]] first to find v₂ (usually = v₁ for ideal flow)
- Resolve inlet and outlet velocity vectors into x and y
- F_x and F_y from momentum equation in each direction

### 4. Jet Striking Moving Plate or Curved Vane
**Key technique:** superimpose an equal and opposite velocity on the system → the plate/vane becomes stationary → use the standard fixed-plate method.

Relative velocity = (jet velocity) − (plate velocity)

### 5. Pipe Bends
Standard approach:
1. Draw CV around the bend
2. Define x and y axes clearly
3. Apply continuity (ṁ₁ = ṁ₂ for single inlet/outlet)
4. Use [[bernoullis|Bernoulli]] to find p₂ if not given — use [[pressure-measurement|gauge readings]] if available
5. Apply momentum in x: account for [[hydrostatics|hydrostatic]] pressure forces at inlet and outlet
6. Apply momentum in y
7. The force **on the pipe** = equal and opposite to the force on the fluid

In real pipe bends, [[laminar-turbulent-flow|friction losses]] (Darcy-Weisbach) reduce the actual pressure at the outlet compared to the ideal Bernoulli prediction.

## Sign Convention Summary
- Inlet pressure force: acts **into** CV → positive in flow direction
- Outlet pressure force: acts **out of** CV → negative in flow direction
- Reaction force R: force of pipe/structure on fluid
- Force on structure from fluid = **−R**

## Example — 90° Bend
Flow enters in +x, exits in −y:

$$\sum F_x + p_1 A_1 = \dot{m}(0 - v_1)$$
$$\sum F_y - p_2 A_2 = \dot{m}(-v_2 - 0)$$

The [[dimensional-analysis|Reynolds number]] determines whether the ideal-fluid assumptions used here are reasonable for a given flow.

## Links
- [[fluid-properties]] — density appears in ṁ = ρAv; viscosity determines whether ideal-fluid assumptions hold
- [[hydrostatics]] — pressure forces at inlet/outlet of a CV follow the same hydrostatic pressure principles
- [[pressure-measurement]] — gauge pressures at pipe inlet/outlet feed directly into the momentum equation
- [[bernoullis]] — apply Bernoulli first to find unknown pressures, then momentum for forces
- [[laminar-turbulent-flow]] — real pipe bends include friction losses not captured by basic momentum equation
- [[dimensional-analysis]] — Reynolds number characterises the flow regime around structures
