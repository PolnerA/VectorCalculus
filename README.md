# Lean + Vector Calculus Formalization Project

## Goal

This project accompanies *Vector Calculus (5th Edition)* by Colley & Cañez.

The objective is not to formalize every theorem in the textbook, but to formalize the conceptual core of multivariable calculus while learning Lean and Mathlib.

Guiding philosophy:

- Build linear algebra intuition.
- Learn definitions of limits, continuity, and differentiability.
- Use Mathlib heavily once Fréchet derivatives appear.
- Focus on mathematically meaningful theorems.

---

# Project Structure

```text
01_VectorSpaceLaws.lean
02_NormsAndInnerProducts.lean
03_MultivariableLimits.lean
04_FrechetDerivatives.lean
05_ChainRule.lean
06_Jacobians.lean
07_GradientsAndHessians.lean
08_Extrema.lean
09_LineIntegrals.lean
10_DifferentialForms.lean
```

---

# Chapter 1: Vectors

## 1.1 Vectors in Two and Three Dimensions

### Core

- [ ] Vector addition is commutative
- [ ] Vector addition is associative
- [ ] Zero vector is additive identity
- [ ] Additive inverse exists
- [ ] Scalar distributivity
- [ ] `1 • v = v`
- [ ] `(ab) • v = a • (b • v)`

### Mathlib lemmas

```lean
add_comm
add_assoc
zero_add
add_zero
add_left_neg
smul_add
add_smul
one_smul
mul_smul
```

## 1.2 More About Vectors

### Core

- [ ] Norm is nonnegative
- [ ] Norm of zero
- [ ] Norm scales correctly
- [ ] Triangle inequality

### Advanced

- [ ] Reverse triangle inequality

### Challenge

- [ ] Cauchy-Schwarz inequality

### Mathlib lemmas

```lean
norm_nonneg
norm_eq_zero
norm_smul
norm_add_le
abs_inner_le_norm
```

## 1.3 Dot Product

### Core

- [ ] Symmetry of dot product
- [ ] Linearity in first argument
- [ ] Linearity in second argument
- [ ] `⟪v,v⟫ = ‖v‖²`

### Advanced

- [ ] Orthogonality criterion
- [ ] Projection formula

### Mathlib lemmas

```lean
real_inner_comm
inner_add_left
inner_add_right
inner_smul_left
inner_smul_right
norm_sq_eq_inner
```

## 1.4 Cross Product

### Core

- [ ] `u × u = 0`
- [ ] Antisymmetry
- [ ] Distributivity

### Advanced

- [ ] `u · (u × v) = 0`

## 1.5 Planes

### Core

- [ ] Point-normal equation defines a plane

### Advanced

- [ ] Distance from point to plane

### Mathlib concepts

```lean
AffineSubspace
Submodule
orthogonalProjection
```

## 1.6 Some n-Dimensional Geometry

### Core

- [ ] Generalize vector-space results to ℝⁿ

### Relevant type

```lean
EuclideanSpace ℝ (Fin n)
```

---

# Chapter 2: Differentiation in Several Variables

## 2.1 Functions of Several Variables

### Core

- [ ] Define functions `ℝ² → ℝ`
- [ ] Define functions `ℝ³ → ℝ`

## 2.2 Limits

### Core

- [ ] Constant functions have limits
- [ ] Identity map has limit
- [ ] Sum law
- [ ] Product law

### Advanced

- [ ] Uniqueness of limits

### Mathlib lemmas

```lean
Tendsto
tendsto_const_nhds
tendsto_id
Tendsto.add
Tendsto.mul
```

## 2.3 The Derivative

### Core

- [ ] Linear maps are differentiable
- [ ] Affine maps are differentiable
- [ ] Differentiable implies continuous

### Mathlib lemmas

```lean
HasFDerivAt
Differentiable
Differentiable.continuous
```

## 2.4 Higher-Order Partial Derivatives

### Core

- [ ] Compute simple second derivatives

### Advanced

- [ ] Mixed partials for polynomials

### Challenge

- [ ] Clairaut's theorem assumptions

### Mathlib concepts

```lean
iteratedFDeriv
ContDiff
```

## 2.5 Chain Rule

### Core

- [ ] Apply chain rule repeatedly

### Advanced

- [ ] Jacobian form of chain rule

### Mathlib lemmas

```lean
HasFDerivAt.comp
Differentiable.comp
```

## 2.6 Directional Derivatives and Gradient

### Core

- [ ] Directional derivative of linear functions
- [ ] Directional derivative of quadratic forms

### Advanced

- [ ] `Dᵤf = ∇f · u`

### Challenge

- [ ] Gradient gives maximal increase

### Mathlib concepts

```lean
fderiv
ContinuousLinearMap
inner
```

## 2.7 Newton's Method

### Use Mathlib

- [ ] Work computational examples
- [ ] Skip convergence formalization

---

# Chapter 3: Vector-Valued Functions

## 3.1 Parametrized Curves

### Core

- [ ] Tangent vector equals derivative

### Advanced

- [ ] Velocity-speed relationship

## 3.2 Arc Length

### Core

- [ ] Arc length of a line segment

### Challenge

- [ ] Additivity of arc length

## 3.3 Vector Fields

### Core

- [ ] Define vector fields

## 3.4 Gradient, Divergence, Curl

### Core

- [ ] Compute gradients
- [ ] Compute divergence
- [ ] Compute curl

### Advanced

- [ ] `curl (grad f) = 0`

### Challenge

- [ ] `div (curl F) = 0`

---

# Chapter 4: Maxima and Minima

## 4.1 Differentials and Taylor

### Core

- [ ] First-order approximation

### Advanced

- [ ] Second-order Taylor polynomial

## 4.2 Extrema

### Core

- [ ] Local maximum implies derivative zero
- [ ] Local minimum implies derivative zero

### Mathlib concepts

```lean
IsLocalMin
IsLocalMax
```

## 4.3 Lagrange Multipliers

### Challenge Project

- [ ] Constrained critical points
- [ ] Circle constraint examples
- [ ] Simple optimization examples

### Recommendation

Use Mathlib heavily.

## 4.4 Applications

- [ ] Solve examples by hand
- [ ] Skip formalization

---

# Chapter 5: Multiple Integration

## 5.1-5.4

### Core

- [ ] Integral linearity

### Mathlib lemmas

```lean
integral_add
integral_sub
integral_smul
```

## 5.5 Change of Variables

### Major Challenge Project

- [ ] Understand theorem statement
- [ ] Formalize special cases

### Recommendation

Use Mathlib's measure-theory infrastructure.

---

# Chapter 6: Line Integrals

## 6.1 Scalar and Vector Line Integrals

### Core

- [ ] Parameterized line integral examples

## 6.2 Green's Theorem

### Challenge

- [ ] Read and understand theorem
- [ ] Do not make it an early formalization target

## 6.3 Conservative Vector Fields

### Core

- [ ] Gradient fields are conservative

### Advanced

- [ ] Path independence

### Challenge

- [ ] Fundamental theorem for line integrals

---

# Chapter 7: Surface Integrals and Vector Analysis

## 7.1-7.2

- [ ] Focus on computations
- [ ] Skip most foundational proofs

## 7.3 Stokes and Gauss

### Huge Project

Choose one:

- [ ] Stokes' theorem
- [ ] Divergence theorem

Not both.

---

# Chapter 8: Higher-Dimensional Vector Analysis

## 8.1 Differential Forms

### Core

- [ ] Exterior derivative examples
- [ ] Differential-form computations

## 8.2 Manifolds

### Recommendation

Use Mathlib.

Do not rebuild manifold theory.

## 8.3 Generalized Stokes Theorem

### Ultimate Capstone

- [ ] Prove `d ∘ d = 0`

This unifies:

- `curl (grad f) = 0`
- `div (curl F) = 0`

---

# Ten Important Theorems

These are the most important formalization targets in the project.

- [ ] Triangle inequality
- [ ] Cauchy-Schwarz inequality
- [ ] Uniqueness of limits
- [ ] Composition preserves continuity
- [ ] Differentiable implies continuous
- [ ] Chain rule
- [ ] Jacobian of affine maps
- [ ] Gradient of quadratic forms
- [ ] Local extrema imply derivative vanishes
- [ ] Gradient field implies path independence
- [ ] `curl (grad f) = 0`
- [ ] `div (curl F) = 0`
- [ ] `d² = 0`

---