---
title: Matrices
module: EN1211
topic: matrices
type: wiki
source: "[[EN1211/raw/matrices/EN1211 - Matrices - Staff]]"
tags: [EN1211, maths, matrices]
---

# Matrices

A matrix is a rectangular array of numbers. Matrices provide a compact way to represent and solve large systems of simultaneous equations — fundamental to structural analysis, circuit networks, and computational simulation.

---

## 1. Definitions and Notation

An M×N matrix has M rows and N columns. Element aᵢⱼ is in row i, column j.

$$\mathbf{A} = \begin{bmatrix} a_{11} & a_{12} & \cdots & a_{1N} \\ a_{21} & a_{22} & \cdots & a_{2N} \\ \vdots & & & \vdots \\ a_{M1} & a_{M2} & \cdots & a_{MN} \end{bmatrix}$$

**Special matrices:**
- **Square matrix:** M = N (most common in engineering)
- **Row vector:** M = 1 (order 1×N)
- **Column vector:** N = 1 (order M×1)
- **Identity matrix I:** square, 1s on diagonal, 0s elsewhere; A·I = I·A = A
- **Zero matrix 0:** all elements zero
- **Diagonal matrix:** non-zero elements only on the leading diagonal
- **Symmetric matrix:** A = Aᵀ (i.e. aᵢⱼ = aⱼᵢ)

---

## 2. Matrix Operations

### Addition and Subtraction
Only possible if matrices have the **same order**. Add/subtract element by element:
(A ± B)ᵢⱼ = aᵢⱼ ± bᵢⱼ

### Scalar Multiplication
Multiply every element by the scalar k: (kA)ᵢⱼ = k·aᵢⱼ

### Matrix Multiplication
A (M×P) × B (P×N) → C (M×N). Only possible if **inner dimensions match**.

$$c_{ij} = \sum_{k=1}^{P} a_{ik} b_{kj}$$

**Important:** Matrix multiplication is generally NOT commutative — AB ≠ BA.

### Transpose
Aᵀ: swap rows and columns — (Aᵀ)ᵢⱼ = aⱼᵢ
Properties: (AB)ᵀ = BᵀAᵀ; (Aᵀ)ᵀ = A

---

## 3. Determinant

Only defined for **square matrices**. Denoted det(A) or |A|.

**2×2:**
$$\det\begin{bmatrix}a & b \\ c & d\end{bmatrix} = ad - bc$$

**3×3 (cofactor expansion along first row):**
$$\det(\mathbf{A}) = a_{11}C_{11} + a_{12}C_{12} + a_{13}C_{13}$$

where the cofactor Cᵢⱼ = (−1)^(i+j) × Mᵢⱼ, and Mᵢⱼ is the minor (determinant of the matrix with row i and column j deleted).

If det(A) = 0, the matrix is **singular** (no inverse; system has no unique solution).

---

## 4. Inverse Matrix

Only exists if det(A) ≠ 0 (non-singular). A·A⁻¹ = A⁻¹·A = I.

**2×2 inverse:**
$$\mathbf{A}^{-1} = \frac{1}{ad-bc}\begin{bmatrix}d & -b \\ -c & a\end{bmatrix}$$

**General method (n×n):** A⁻¹ = (1/det(A)) × adj(A), where adj(A) is the adjugate (transpose of the matrix of cofactors).

**Gaussian elimination** (row reduction) is more practical for large matrices.

---

## 5. Solving Simultaneous Equations

The system Ax = b (A is coefficient matrix, x is unknown vector, b is RHS vector) can be solved by:

**1. Inverse method:** x = A⁻¹b (only practical for small n)

**2. Cramer's rule:**
$$x_i = \frac{\det(\mathbf{A}_i)}{\det(\mathbf{A})}$$
where Aᵢ is A with column i replaced by b.

**3. Gaussian elimination (row reduction):** most computationally efficient.

---

## 6. Eigenvalues and Eigenvectors

For a square matrix A, an **eigenvalue** λ and **eigenvector** x satisfy:
$$\mathbf{A}\mathbf{x} = \lambda\mathbf{x} \quad \Rightarrow \quad (\mathbf{A} - \lambda\mathbf{I})\mathbf{x} = \mathbf{0}$$

**Finding eigenvalues:** solve the **characteristic equation**: det(A − λI) = 0
**Finding eigenvectors:** substitute each λ back into (A − λI)x = 0 and solve.

**Engineering applications:** natural frequencies (vibration), principal stresses (solid mechanics), stability analysis (control), PCA (data analysis).

---

## Links
- [[EN1211/wiki/vectors/vectors|Vectors]] — vectors are special cases of matrices (column/row vectors)
- [[EN1211/wiki/complex-numbers/complex-numbers|Complex Numbers]] — eigenvalues can be complex
- [[EN1211/wiki/INDEX|Module Index]]
