---
tags: [mechanics, statics, solid-mechanics, dynamics]
---

# Mechanics Formula Sheet

*EN1213/1214/1218 — Cardiff University. Quick reference for exams.*

---

## Statics — Forces & Equilibrium

**Force components:**
$$F_x = F\cos\theta \qquad F_y = F\sin\theta \qquad R = \sqrt{(\Sigma F_x)^2 + (\Sigma F_y)^2}$$

**Equilibrium (2D rigid body):**
$$\Sigma F_x = 0 \qquad \Sigma F_y = 0 \qquad \Sigma M_A = 0$$

**Moment of a force about point A:**
$$M = F \times d = F \times L\sin\theta \quad \text{(N·m)}$$

**Varignon's theorem:** M_resultant = ΣM_components about same point

**Couple:** M = F × d (pure moment, zero net force — transferable anywhere on body)

---

## Statics — Friction

| | Equation | Notes |
|--|----------|-------|
| Static limit | F ≤ μ_s N | Body on verge of sliding |
| Kinetic | F_k = μ_k N | Body already moving; μ_k < μ_s |
| Angle of friction | tan φ = μ | φ = angle resultant makes with normal |

---

## Statics — Trusses

**Method of joints:** at each joint ΣFx = 0, ΣFy = 0 (start at joint with ≤ 2 unknowns)

**Method of sections:** cut through ≤ 3 members; apply ΣF and ΣM to one half

**Two-force body:** forces must be equal, opposite, and collinear

---

## Solid Mechanics — Stress & Strain

**Normal stress and strain:**
$$\sigma = \frac{P}{A} \quad\text{(Pa)} \qquad \varepsilon = \frac{\delta}{L} \qquad \sigma = E\varepsilon \qquad \delta = \frac{PL}{AE}$$

**Shear stress and strain:**
$$\tau = \frac{V}{A} \quad\text{(Pa)} \qquad \gamma = \frac{\tau}{G} \qquad G = \frac{E}{2(1+\nu)}$$

**Stress concentration:** σ_max = K · σ_nom (K from charts; critical at holes, notches, fillets)

---

## Solid Mechanics — Torsion

$$\frac{T}{J} = \frac{\tau}{r} = \frac{G\phi}{L}$$

| Quantity | Formula |
|----------|---------|
| Solid shaft polar 2nd moment | J = πr⁴/2 = πd⁴/32 |
| Hollow shaft | J = π(r_o⁴ − r_i⁴)/2 |
| Max shear stress | τ_max = T·r_max/J |
| Angle of twist | φ = TL/GJ |

---

## Solid Mechanics — Beam Bending

**SFD/BMD relations:**
$$\frac{dV}{dx} = -w(x) \qquad \frac{dM}{dx} = V$$

**Flexure formula (bending stress):**
$$\sigma = \frac{My}{I} \qquad \sigma_{\max} = \frac{Mc}{I} = \frac{M}{Z}$$

**Shear stress in beams:**
$$\tau = \frac{VQ}{Ib}$$

**Cross-section properties:**

| Section | I | Z |
|---------|---|---|
| Rectangle (b × d) | bd³/12 | bd²/6 |
| Solid circle (r) | πr⁴/4 | πr³/4 |

**Second moment of area** (statics I) ≠ **moment of inertia** (dynamics I = 2nd moment of *mass*)

---

## Solid Mechanics — Failure Criteria

**Principal stresses (2D):**
$$\sigma_{1,2} = \frac{\sigma_x+\sigma_y}{2} \pm \sqrt{\left(\frac{\sigma_x-\sigma_y}{2}\right)^2 + \tau_{xy}^2}$$

| Criterion | Condition for failure | Material |
|-----------|----------------------|----------|
| **Tresca** (max shear stress) | σ₁ − σ₃ ≥ σ_y | Ductile (conservative) |
| **Von Mises** (distortion energy) | σ_VM ≥ σ_y | Ductile (more accurate) |
| **Rankine** (max normal stress) | σ₁ ≥ σ_failure | Brittle |

$$\sigma_{VM} = \frac{1}{\sqrt{2}}\sqrt{(\sigma_1-\sigma_2)^2+(\sigma_2-\sigma_3)^2+(\sigma_3-\sigma_1)^2}$$

---

## Dynamics — Kinematics

**Circular motion (constant r):**
$$v = r\omega \qquad a_c = r\omega^2 = \frac{v^2}{r} \text{ (centripetal, inward)} \qquad a_t = r\alpha$$

**Angular kinematic equations (constant α):**
$$\omega = \omega_0 + \alpha t \qquad \theta = \omega_0 t + \tfrac{1}{2}\alpha t^2 \qquad \omega^2 = \omega_0^2 + 2\alpha\theta$$

**Relative velocity (rigid body):**
$$\vec{v}_B = \vec{v}_A + \vec{\omega} \times \vec{r}_{AB}$$

---

## Dynamics — Kinetics & Rotating Systems

**Newton's 2nd law for rotation:**
$$\Sigma M_G = I_G \alpha$$

**Moment of inertia (2nd moment of mass):**

| Body | Axis | I_G |
|------|------|-----|
| Slender rod (length L) | Perpendicular, through centre | mL²/12 |
| Slender rod | About one end | mL²/3 |
| Thin ring (radius r) | Through centre, ⊥ plane | mr² |
| Solid disk (radius r) | Through centre, ⊥ plane | mr²/2 |
| Solid sphere (radius r) | Through centre | 2mr²/5 |

**Parallel axis theorem:**
$$I_P = I_G + md^2$$

**Gear ratio G (input:output):**
$$G = \frac{\omega_i}{\omega_o} = \frac{r_o}{r_i} = \frac{n_o}{n_i} \qquad \frac{T_i}{T_o} = \frac{1}{G} \qquad I_{L,\text{reflected}} = \frac{I_L}{G^2}$$
