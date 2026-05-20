---
title: Vectors
module: EN1211
topic: vectors
type: wiki
source: "[[EN1211/raw/vectors/EN1211 - Vectors - Staff]]"
tags: [EN1211, maths, vectors]
---

# Vectors

A vector is a quantity that has both **magnitude** and **direction** — contrasted with a scalar which has magnitude only. Vectors describe forces, velocities, displacements, and fields. They are represented graphically as arrows and algebraically using components.

---

## 1. Notation and Representation

A vector **a** can be written as:
- Underline: a (handwritten)
- Bold: **a** (printed)
- Component form: a = (aₓ, aᵧ, a_z) or a = aₓ**i** + aᵧ**j** + a_z**k**

where **i**, **j**, **k** are unit vectors along x, y, z axes respectively.

**Magnitude (modulus):** |a| = √(aₓ² + aᵧ² + a_z²)

**Unit vector:** â = a/|a| (magnitude 1, same direction as a)

**Position vector:** r from origin O to point P; r = OP

---

## 2. Vector Addition and Subtraction

Add/subtract component by component:
a ± b = (aₓ ± bₓ)**i** + (aᵧ ± bᵧ)**j** + (a_z ± b_z)**k**

**Triangle / parallelogram law:** geometrically, add vectors tip-to-tail.

**Scalar multiplication:** ka = (kaₓ)**i** + (kaᵧ)**j** + (ka_z)**k** — scales magnitude, preserves direction (or reverses if k < 0).

---

## 3. Scalar (Dot) Product

$$\mathbf{a} \cdot \mathbf{b} = |\mathbf{a}||\mathbf{b}|\cos\theta = a_x b_x + a_y b_y + a_z b_z$$

where θ is the angle between the vectors.

**Result is a scalar.**

**Key properties:**
- a·b = b·a (commutative)
- a·a = |a|²
- If a·b = 0 and neither is zero → **perpendicular**
- i·i = j·j = k·k = 1; i·j = j·k = k·i = 0

**Engineering uses:** finding the angle between two vectors; component of one vector along another (projection); work done = F·d.

---

## 4. Vector (Cross) Product

$$\mathbf{a} \times \mathbf{b} = |\mathbf{a}||\mathbf{b}|\sin\theta\,\hat{\mathbf{n}}$$

where **n̂** is the unit normal (right-hand rule direction).

**Result is a vector**, perpendicular to both a and b.

**Component form:**
$$\mathbf{a} \times \mathbf{b} = \begin{vmatrix}\mathbf{i} & \mathbf{j} & \mathbf{k} \\ a_x & a_y & a_z \\ b_x & b_y & b_z\end{vmatrix} = (a_y b_z - a_z b_y)\mathbf{i} - (a_x b_z - a_z b_x)\mathbf{j} + (a_x b_y - a_y b_x)\mathbf{k}$$

**Key properties:**
- a×b = −(b×a) (anti-commutative)
- If a×b = 0 and neither is zero → **parallel**
- i×j = k; j×k = i; k×i = j
- |a×b| = area of parallelogram formed by a and b

**Engineering uses:** moment/torque = r×F; finding normal to a surface; angular momentum.

---

## 5. Lines in 3D

**Vector equation of a line** through point P₀ with direction vector d:
r = r₀ + td  (t is a scalar parameter)

**Cartesian form:** (x−x₀)/dₓ = (y−y₀)/dᵧ = (z−z₀)/d_z

---

## 6. Planes in 3D

**Vector equation of a plane** through P₀ with normal vector **n**:
**n·(r − r₀) = 0**

**Cartesian form:** n_x(x−x₀) + n_y(y−y₀) + n_z(z−z₀) = 0

Simplified: ax + by + cz = d (where (a,b,c) = **n**)

---

## 7. Triple Products

**Scalar triple product:** a·(b×c) = volume of parallelepiped formed by a, b, c
If a·(b×c) = 0, the three vectors are coplanar.

**Vector triple product:** a×(b×c) = b(a·c) − c(a·b)

---

## Links
- [[EN1211/wiki/matrices/matrices|Matrices]] — vectors are column/row matrices; matrix methods solve vector equations
- [[EN1211/wiki/partial-differentiation/partial-differentiation|Partial Differentiation]] — gradient ∇f is a vector
- [[EN1211/wiki/INDEX|Module Index]]
