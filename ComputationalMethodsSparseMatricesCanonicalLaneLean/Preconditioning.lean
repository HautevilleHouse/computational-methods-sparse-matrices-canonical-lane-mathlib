import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure Preconditioner where
  name : String
  conditionNumberImprovement : Float
  applicationCost : Nat

def incompleteLU : Preconditioner :=
  { name := "ILU", conditionNumberImprovement := 10.0, applicationCost := 100 }

def jacobi : Preconditioner :=
  { name := "Jacobi", conditionNumberImprovement := 2.0, applicationCost := 10 }

theorem preconditioning_gate (p : Preconditioner) (A : AdmissibleClass) : Prop :=
  p.conditionNumberImprovement > 1.0 ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem preconditioning_bridge (A : AdmissibleClass) : Prop :=
  A.lane.solverDecidesProjectedLanguage

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse