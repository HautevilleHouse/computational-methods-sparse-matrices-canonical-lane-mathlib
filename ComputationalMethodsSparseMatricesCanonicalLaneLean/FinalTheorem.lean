import ComputationalMethodsSparseMatricesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

def ConstrainedSparseMatrixClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sparse_matrix_endgame (A : AdmissibleClass) : ConstrainedSparseMatrixClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse