---
title: Kinematics — Vector Differentiation, Circular Motion and Relative Motion
module: EN1213
topic: mechanics/dynamics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Introduction and Vectors - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Differentiation of Vectors - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Circular Motion - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Relative Motion - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics General Plane Motion - McCrory]]"
  - "[[EN1213/mechanics/raw/dynamics/EN1213 - Dynamics Open Loop Kinematic Chains - McCrory]]"
module_index: "[[/_modules/EN1213]]"
tags: [dynamics, mechanics]
---

# Kinematics — Vector Differentiation, Circular Motion and Relative Motion

**Kinematics** is the geometry of motion — it describes how a mechanism moves (positions, velocities, accelerations) without considering the forces that cause it. This is distinct from **kinetics**, which relates forces to motion. Together they form dynamics. Lectured by Dr John McCrory as part of EN1213/1214/1218.

---

## Dynamics Overview

Dynamics can be split into two main sections:
1. **Kinematics**: study of the geometry of motion; velocity and acceleration are related to position but forces are not considered
2. **Kinetics**: relationship between forces/moments and motion (F = ma for translation; ΣMG = IGα for rotation)

Engineering motivation: to design systems that move precisely — robot arms, engine mechanisms, gear drives — kinematics must be solved first.

---

## Vector Differentiation

Position in a mechanism is described using **position vectors** in polar coordinates (r, θ). To find velocity, differentiate position with respect to time.

For a point at distance r from a pivot rotating at rate θ̇ (= ω):

**Radial velocity** (along r): v_rad = ṙ (rate of change of length)

**Tangential velocity** (perpendicular to r): v_tang = rω

In vector notation, the velocity of a point on a rigid link of length r rotating at angular velocity ω is:

$$v = r\omega \quad \text{(tangential, perpendicular to } r\text{)}$$

For acceleration:

**Radial acceleration**: a_rad = r̈ − rω²  (includes centripetal term −rω²)

**Tangential acceleration**: a_tang = rα + 2ṙω  (includes Coriolis term 2ṙω for variable-length links)

For a rigid link (constant r), this simplifies to: a_rad = −rω² (centripetal) and a_tang = rα

---

## Circular Motion

For pure circular motion (constant radius r, angular velocity ω, angular acceleration α):

| Quantity | Symbol | Expression |
|----------|--------|------------|
| Arc length | s | rθ |
| Tangential velocity | v | rω |
| Angular velocity | ω | dθ/dt |
| Centripetal acceleration | a_c | rω² = v²/r (directed toward centre) |
| Tangential acceleration | a_t | rα |
| Angular acceleration | α | dω/dt |

The **centripetal acceleration** is directed radially inward and keeps the body on its circular path — it requires a centripetal force (F_c = mrω²). It does not change the speed, only the direction.

The kinematic equations for constant angular acceleration mirror the linear case:
$$\omega = \omega_0 + \alpha t \qquad \theta = \omega_0 t + \frac{1}{2}\alpha t^2 \qquad \omega^2 = \omega_0^2 + 2\alpha\theta$$

---

## Relative Motion

**Relative motion**: the velocity of point B relative to point A (for a rigid body):

$$\vec{v}_B = \vec{v}_A + \vec{\omega} \times \vec{r}_{AB}$$

where r_AB is the position vector from A to B and ω is the angular velocity of the body.

This is the foundation of mechanism analysis: starting from a known velocity at one point (e.g. the crank), the velocity at every other point in the mechanism can be found by applying the relative velocity equation at each joint.

**Velocity diagrams** (velocity triangles) are a graphical method that applies this equation — each link's velocity polygon is added sequentially.

---

## General Plane Motion

A rigid body in general plane motion simultaneously translates and rotates. Any such motion can be decomposed into:
1. **Translation** of a reference point on the body
2. **Rotation** about that reference point

This decomposition allows the relative velocity equation to be applied, enabling analysis of complex mechanisms such as connecting rods in reciprocating engines.

---

## Open-Loop Kinematic Chains

An **open-loop kinematic chain** (e.g. robot arm) has one free end. The velocity of the end-effector is found by applying the relative velocity equation sequentially through each link. This is the basis of robot arm forward kinematics.

**Closed-loop chains** (e.g. slider-crank mechanism, four-bar linkage) have additional constraints — the chain closes back on itself, giving extra equations that constrain the motion.

---

## Links

- [[EN1213/mechanics/wiki/dynamics/kinetics-and-rotating-systems|Kinetics and Rotating Systems]]
- [[EN1213/mechanics/wiki/statics/statics-fundamentals|Statics Fundamentals]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Solid Mechanics]]
- [[_modules/EN1213|EN1213 Module Index]]
