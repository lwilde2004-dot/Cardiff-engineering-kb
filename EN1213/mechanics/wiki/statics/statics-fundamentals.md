---
title: Statics Fundamentals — Forces, Equilibrium and Moments
module: EN1213
topic: mechanics/statics
type: wiki
sources:
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Introduction and Rigid Body Principles - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Forces and Resultants - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Moments and Torque - Wu]]"
  - "[[EN1213/mechanics/raw/statics/EN1213 - Statics Couple and Distributed Loads - Wu]]"
module_index: "[[/_modules/EN1213]]"
tags: [statics, mechanics]
---

# Statics Fundamentals — Forces, Equilibrium and Moments

Statics is the branch of mechanics concerned with bodies that are either at rest or in uniform motion, where the net force and net moment acting on the body are zero. The central assumption is the **rigid body** — a body that does not deform under load, allowing forces to be transmitted without changing geometry. Lectured by Dr Zhangming Wu as part of EN1213/1214/1218 Fundamentals of Mechanical Engineering.

---

## Forces

A **force** represents the action of one body on another and is defined by three properties: its point of application, its magnitude (in Newtons), and its direction. Because it has both magnitude and direction, force is a **vector quantity** and obeys the Law of Transmissibility — the point of application can be moved anywhere along the line of action without changing the effect on a rigid body.

**Newton's Second Law** defines the unit of force:

> F = ma → 1 N = 1 kg·m/s²

The weight of a 1 kg mass is therefore: W = 1 × 9.81 = **9.81 N**

### Adding Forces — Parallelogram and Triangle Laws

Two forces acting at a point are combined using the **Parallelogram Law**: the resultant **R** is the diagonal of the parallelogram formed by the two forces as sides.

$$R = P + Q$$

The **Triangle of Forces** simplifies this — only half the parallelogram is needed by adding vectors "nose to tail". For more than two forces, the **Polygon Rule** extends this: add all vectors nose to tail; the resultant joins the tail of the first to the head of the last.

### Resolving into Components

A single force **F** at angle θ can be resolved into orthogonal components using trigonometry:

$$F_x = F\cos\theta \qquad F_y = F\sin\theta$$

The resultant of a set of forces is then found by summing components independently:

$$R_x = \sum F_x \qquad R_y = \sum F_y \qquad R = \sqrt{R_x^2 + R_y^2}$$

---

## Equilibrium of Particles and Rigid Bodies

A **particle** is treated as a single point — all forces are concurrent (same point of application). **Particle equilibrium** requires:

$$\sum F_x = 0 \qquad \sum F_y = 0$$

For a **rigid body**, forces are no longer necessarily concurrent and a turning effect (moment) can arise. Full rigid body equilibrium requires three conditions in 2D:

$$\sum F_x = 0 \qquad \sum F_y = 0 \qquad \sum M_A = 0$$

The moment condition can be taken about any convenient point A.

---

## Moments

The **moment** of a force F about a point A (also called torque) measures its turning effect:

$$M = F \times d \quad \text{(units: N·m)}$$

where **d** is the **perpendicular distance** from A to the line of action of F. Alternatively:

$$M = F \times L\sin\theta$$

where L is the distance from A to the point of application and θ is the angle between F and the line joining A to the point of application.

**Direction convention** — Right-hand screw rule:
- Anti-clockwise (ACW) rotation → positive (out of the page)
- Clockwise (CW) rotation → negative (into the page)

### Varignon's Theorem

> The moment of a force about any axis equals the sum of the moments of its components about that axis.

$$M = M_1 + M_2 = P \times d_1 + Q \times d_2$$

This is extremely useful: instead of finding the perpendicular distance to the resultant, resolve the force into convenient components and sum their simpler moments.

---

## Free Body Diagrams

A **Free Body Diagram (FBD)** isolates a body from its surroundings and shows all external forces acting on it. External forces include applied loads, weight, and **reaction forces** at supports. Internal forces holding parts of the body together are not shown.

Steps for drawing an FBD:
1. Isolate the body of interest
2. Replace supports with reaction forces (pin → two force components; roller → one normal force)
3. Add all applied loads and body weight at their points of application
4. Apply equilibrium equations to solve for unknowns

---

## Couple and Distributed Loads

A **couple** is a pair of forces — equal in magnitude, opposite in direction, with parallel but non-coincident lines of action. A couple produces a net torque (moment) but zero resultant force:

$$M_{\text{couple}} = F \times d$$

where d is the perpendicular distance between the two forces. A couple can be moved to any point on a rigid body without changing its effect.

A **distributed load** (e.g. force per unit length on a beam) is replaced by its resultant — a single force equal to the total load acting at the centroid of the load distribution.

---

## Links

- [[EN1213/mechanics/wiki/statics/trusses-and-frames|Trusses and Frames]]
- [[EN1213/mechanics/wiki/statics/friction|Friction and Coulomb's Laws]]
- [[EN1213/mechanics/wiki/solid-mechanics/stress-and-strain|Stress and Strain — Solid Mechanics]]
- [[EN1213/mechanics/wiki/dynamics/kinematics|Dynamics — Kinematics]]
- [[_modules/EN1213|EN1213 Module Index]]
