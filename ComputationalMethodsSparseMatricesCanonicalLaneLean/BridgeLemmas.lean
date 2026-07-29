import ComputationalMethodsSparseMatricesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.solver A.projectedLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.solverDecidesProjectedLanguage

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse