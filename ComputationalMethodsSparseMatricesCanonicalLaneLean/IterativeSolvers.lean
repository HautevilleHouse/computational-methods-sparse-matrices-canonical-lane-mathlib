import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure IterativeSolver where
  name : String
  preconditioned : Bool
  convergenceRate : Float
  maxIterations : Nat

def conjugateGradient : IterativeSolver :=
  { name := "Conjugate Gradient", preconditioned := false, convergenceRate := 0.5, maxIterations := 1000 }

def gmres : IterativeSolver :=
  { name := "GMRES", preconditioned := true, convergenceRate := 0.8, maxIterations := 500 }

theorem solver_convergence_bridge (s : IterativeSolver) (A : AdmissibleClass) : Prop :=
  s.convergenceRate > 0 ∧ A.endpointSatisfied

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse