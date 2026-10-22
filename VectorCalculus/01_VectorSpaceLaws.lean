import Mathlib
/-!
Name: Adam Polner
Problem: 1.1 Prove the following:
  1) Vector addition is commutative
    by add_comm
  2) Vector addition is associative
    by add_assoc
  3) Zero vector is additive identity
    by zero_add
  4) Additive inverse exists
    by add_neg_cancel
  5) Scalar distributivity
    by smul_add and add_smul
  6) `1 • v = v`
    by one_smul
  7) `(ab) • v = a • (b • v)`
    by mul_smul
Lemmas:
  add_comm
  add_assoc
  zero_add
  add_zero
  add_neg_cancel
  smul_add
  add_smul
  one_smul
  mul_smul
Maintenance log:
Date:       Done:
10/22/2026  Started file/project initial github setup
10/22/2026  Finished Problem 1.1
-/
abbrev Vec n:= EuclideanSpace ℝ (Fin n)

theorem vec_add_comm (a b : Vec n) : a + b = b + a := by
  rw [add_comm]
theorem vec_add_assoc (a b c : Vec n) : a + b + c = a + (b + c) := by
  rw [add_assoc]
theorem vec_add_zero (a : Vec n) : a + 0 = a := by
  rw [add_zero]
theorem vec_zero_add (a : Vec n) : 0 + a = a := by
  rw [zero_add]
theorem vec_add_neg (a : Vec n) : a + (-a) = 0 := by
  rw [add_neg_cancel]
theorem scalar_dist_right (a : ℝ) (u v : Vec n) : a • (u + v) = a • u + a • v := by
  rw [smul_add]
theorem scalar_dist_left (a b : ℝ) (v : Vec n) : (a + b) • v = a • v + b • v:= by
  rw [add_smul]
theorem identity_smul (v : Vec n) : 1 • v = v := by
  rw [one_smul]
example (a b : ℝ) (v : Vec n) : (a*b) • v = a • (b • v) := by
  rw [mul_smul]

/-
Problem: 1.2 Prove the following:
  1) Norm is nonnegative
    by norm_nonneg
  2) Norm of zero
    by norm_eq_zero
  3) Norm scales correctly
    by norm_smul
  4) Triangle inequality
    by norm_add_le
  5) Reverse triangle inequality
    by abs_norm_sub_norm_le
  Final challenge 6) Cauchy-Schwarz inequality
Lemmas:
  norm_nonneg
  norm_eq_zero
  norm_smul
  norm_add_le
  abs_norm_sub_norm_le
Maintenance log:
Date:       Done:
10/22/2026  Started Problem 1.2
10/22/2026  Finished Problem 1.2 - 6)
-/

example (v : Vec n) : 0 ≤ ‖v‖ := by
  apply norm_nonneg
example : ‖(0 : Vec n)‖ = 0 := by
  rw [norm_eq_zero]
example (a : ℝ) (v : Vec n) : ‖a • v‖ = ‖a‖*‖v‖ := by
  apply norm_smul
example (u v : Vec n) : ‖u + v‖ ≤ ‖u‖+‖v‖ := by
  apply norm_add_le
example (u v : Vec n) : |‖u‖ - ‖v‖| ≤ ‖u - v‖ := by
  exact abs_norm_sub_norm_le u v
