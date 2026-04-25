---
tags: [fluid-mechanics, thermofluids]
---

# Laminar and Turbulent Flow

Real fluid flows fall into two distinct regimes — laminar and turbulent — identified by Osborne Reynolds in 1883. The [[dimensional-analysis|Reynolds number]] determines which regime applies and is the most important dimensionless group in internal pipe flow. The friction losses quantified here extend [[bernoullis|Bernoulli's equation]] to real flows.

*Lecturer: Dr Matthew Allmark — EN1213/EN2103 FM2 Part 4 (Notes)*

## Flow Regimes

| Regime | Re | Behaviour |
|---|---|---|
| **Laminar** | Re < 2,100 | Fluid particles follow streamlines exactly; smooth, ordered flow |
| **Transitional** | 2,100 – 4,000 | Unstable; oscillates between laminar and turbulent |
| **Turbulent** | Re > 4,000 | Random eddies move between layers; vigorous mixing |

### Reynolds' Dye Experiment
Reynolds injected a dye filament into a pipe. At low velocity: dye stayed as a clean filament (laminar). As velocity increased: filament oscillated then broke up (transition to turbulent).

## Reynolds Number

$$Re = \frac{\rho \bar{u} D_h}{\mu} = \frac{\bar{u} D_h}{\nu}$$

Both [[fluid-properties|density (ρ) and dynamic viscosity (μ)]] are required:

| Symbol | Meaning | Unit |
|---|---|---|
| ρ | Density | kg/m³ |
| ū | Mean velocity | m/s |
| D_h | Hydraulic diameter | m |
| μ | Dynamic viscosity | Pa·s |
| ν | Kinematic viscosity = μ/ρ | m²/s |

Re arises naturally from [[dimensional-analysis|Buckingham Pi theorem]] applied to pipe flow variables.

**Hydraulic diameter** for non-circular sections:
$$D_h = \frac{4A}{P}$$
Where A = cross-sectional area, P = wetted perimeter.

## Velocity Profile in a Pipe

**Ideal fluid**: uniform velocity across the pipe (no friction at wall) — the [[bernoullis|Bernoulli assumption]].

**Real fluid**: velocity = 0 at the wall (**[[fluid-properties|no-slip condition]]**), maximum at the centre. Boundary layer grows from the wall inward.

- **Laminar profile**: parabolic (Poiseuille flow)
- **Turbulent profile**: flatter in the core, steep gradient near the wall

## Entry Length and Fully Developed Flow

As fluid enters a pipe, the boundary layer grows until it fills the pipe → **fully developed flow** (velocity profile no longer changes along the pipe).

- Entry region: balance between inertia, viscous, and pressure forces
- Fully developed region: [[hydrostatics|pressure]] drives flow against constant viscous resistance

## Pipe Flow Losses — Extended Bernoulli

For real viscous flow, total head is NOT conserved. A head loss term h_L is added to the [[bernoullis|Bernoulli equation]]:

$$\frac{p_1}{\rho g} + \frac{u_1^2}{2g} + z_1 = \frac{p_2}{\rho g} + \frac{u_2^2}{2g} + z_2 + h_L$$

The pressure drop h_L is measured in practice using a [[pressure-measurement|differential manometer]].

Total head loss = major losses (friction) + minor losses (bends, fittings, entries)

### Darcy-Weisbach Equation (major losses)
$$h_f = f \frac{L}{D} \frac{\bar{u}^2}{2g}$$

Where f is the Darcy friction factor (note: two definitions exist in literature — check which your source uses).

**Laminar flow**: $f = \frac{64}{Re}$

**Turbulent flow**: Colebrook equation (depends on Re AND relative roughness ε/D):
$$\frac{1}{\sqrt{f}} = -2\log\left(\frac{\varepsilon/D}{3.7} + \frac{2.51}{Re\sqrt{f}}\right)$$

Must be solved **iteratively** — use the **Moody diagram** instead to read off f directly.

> Be aware: some sources use the Fanning friction factor (= Darcy/4). Always check which one the Moody diagram you're using gives.

Friction losses reduce the pressure available at the outlet of [[momentum|pipe bends]], so the ideal Bernoulli pressure overestimates the actual outlet pressure.

## Laminar Flow Velocity Profile (Hagen-Poiseuille)
$$u(r) = u_{max}\left(1 - \frac{r^2}{R^2}\right) \qquad u_{max} = \frac{R^2}{4\mu}\left(-\frac{dp}{dx}\right)$$

Volumetric flow rate: $Q = \frac{\pi R^4}{8\mu}\left(-\frac{dp}{dx}\right)$ (Hagen-Poiseuille)

Mean velocity ū = u_max / 2

## Links
- [[fluid-properties]] — viscosity (μ) and density (ρ) are the two fluid inputs to Re; temperature effects on viscosity change the flow regime
- [[pressure-measurement]] — differential manometers measure the pressure drop that Darcy-Weisbach predicts
- [[bernoullis]] — extended Bernoulli adds h_L to account for the friction losses quantified here
- [[momentum]] — pipe flow pressure forces and friction forces both appear in momentum analysis of bends
- [[dimensional-analysis]] — Re emerges naturally from Buckingham Pi applied to pipe flow variables
- [[hydrostatics]] — hydrostatic pressure drives pipe flow; Darcy-Weisbach quantifies the friction that opposes it
