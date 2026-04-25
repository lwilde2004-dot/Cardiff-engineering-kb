---
title: Kinetics and Rotating Systems — Moment of Inertia and Gear Ratios
module: EN1213
topic: mechanics/dynamics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Centre of Mass and Gravity - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Moment of Inertia - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Free Body Diagrams and Kinetics - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Application of Kinetic Equations - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Rotating Systems and Gear Ratios - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Rotating Systems Analysis - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Rotating Systems Worked Example - McCrory]]"
module_index: "[[/_modules/EN1213]]"
tags: [dynamics, mechanics]
---

# Kinetics and Rotating Systems — Moment of Inertia and Gear Ratios

**Kinetics** connects forces and moments to the motion found through [[kinematics|kinematics]]. For rotating systems, the key equation is ΣMG = IGα — the rotational equivalent of Newton's Second Law. Understanding moment of inertia, gear ratios, and how to apply kinetics to geared and belted drive systems is central to mechanical design. Lectured by Dr John McCrory as part of EN1213/1214/1218.

---

## Newton's Laws for Rotation

For a rigid body rotating about a fixed axis through its centre of gravity G:

$$\sum M_G = I_G \alpha$$

where:
- **ΣMG** = net moment (torque) about G (N·m)
- **IG** = mass moment of inertia about G (kg·m²)
- **α** = angular acceleration (rad/s²)

For fixed-axis rotation (centre of gravity on the rotation axis), translational dynamics (ΣF = ma) are not needed for the rotational analysis — those equations would give bearing reaction forces, which are assumed to have negligible friction effect.

---

## Centre of Mass

The **centre of mass** (G) is the point at which the entire mass of the body can be considered to act:

$$\bar{x} = \frac{\sum m_i x_i}{\sum m_i} \qquad \bar{y} = \frac{\sum m_i y_i}{\sum m_i}$$

For rotating systems, the centre of gravity must lie on the axis of rotation to avoid out-of-balance forces. Out-of-balance systems cause vibration, noise, and accelerated bearing wear.

---

## Moment of Inertia (Second Moment of Mass)

The **mass moment of inertia** I (also written I_G) measures resistance to angular acceleration — the rotational equivalent of mass:

$$I = \int r^2 \, dm$$

where r is the distance of each mass element from the rotation axis.

> **Warning**: In dynamics, I is the 2nd moment of **mass** (units kg·m²). In beam bending (statics), I is the 2nd moment of **area** (units m⁴). These are different quantities despite sharing the symbol.

### Standard Results

| Shape | Axis | Moment of Inertia |
|-------|------|------------------|
| Slender rod (length L, mass m) | Perpendicular to rod through centre | I_G = mL²/12 |
| Slender rod | About one end | I = mL²/3 |
| Thin ring (radius r, mass m) | Through centre, perpendicular to plane | I_G = mr² |
| Solid disk (radius r, mass m) | Through centre, perpendicular to plane | I_G = mr²/2 |
| Solid sphere (radius r, mass m) | Through centre | I_G = 2mr²/5 |

### Parallel Axis Theorem

The moment of inertia about any axis P parallel to the axis through G is:

$$I_P = I_G + md^2$$

where d = distance from G to P. This allows I about an arbitrary axis to be found from the standard tabulated value about the centre of gravity.

---

## Geared Systems

Gear drives transmit rotation between shafts. The teeth must mesh — they share the same **pitch** (tooth spacing) at the contact point. With no slip at contact, tangential velocities are equal:

$$\omega_i r_i = \omega_o r_o$$

**Gear ratio** G (input to output):

$$G = \frac{\omega_i}{\omega_o} = \frac{r_o}{r_i} = \frac{n_o}{n_i} \qquad \frac{T_i}{T_o} = \frac{r_i}{r_o} = \frac{1}{G}$$

where n = number of teeth, r = pitch circle radius, T = torque.

Key insight: **speed reduces → torque increases** (and vice versa), while power is conserved (assuming no losses). This is why gearboxes are used — motors typically run at high speed/low torque, but many applications need low speed/high torque.

### Effective Inertia in Geared Systems

When a load with inertia I_L is connected to a motor via a gearbox with ratio G (= ω_motor/ω_load), the load inertia as seen by the motor is **reflected** back through the gear ratio:

$$I_{L,\text{reflected}} = \frac{I_L}{G^2}$$

The total inertia seen by the motor = I_motor + I_L/G². This is critical for sizing motors in drive systems.

### Belt Drives

Belt drives transmit motion by friction (or tooth engagement for toothed belts). For a flat belt with pulley radii r_A and r_B:

$$\frac{\omega_A}{\omega_B} = \frac{r_B}{r_A}$$

Unlike gears, belt drives can slip (flat belts) or operate at long centre distances, and they are quieter.

---

## Free Body Diagrams for Kinetics

Apply FBD methodology to rotating systems:
1. Isolate the body; draw all external forces and moments
2. Identify the rotation axis
3. Write ΣMG = I_G α for rotation; write ΣF = ma_G for translation if needed
4. For geared systems: write equations for each gear/shaft separately, using the constraint equations (gear ratio) to connect them

---

## Links

- [[EN1213/mechanics/wiki/dynamics/kinematics|Kinematics — Vector Differentiation and Circular Motion]]
- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals]]
- [[EN1213/mechanics/wiki/solid-mechanics/torsion-and-shear|Torsion and Shear Stress]]
- [[_modules/EN1213|EN1213 Module Index]]
