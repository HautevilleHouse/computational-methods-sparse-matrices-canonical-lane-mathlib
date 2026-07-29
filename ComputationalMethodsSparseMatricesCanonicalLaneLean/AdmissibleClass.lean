import ComputationalMethodsSparseMatricesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure SparseMatrixObject where
  rows : Nat
  cols : Nat
  nnz : Nat
  format : String -- e.g., "CSR", "CSC", "COO"
  data : List (Nat × Nat × Float) -- (row, col, value)

def isSparse (m : SparseMatrixObject) : Bool :=
  m.nnz ≤ (m.rows * m.cols) / 2

structure DecisionProcedure where
  multiplies : SparseMatrixObject → SparseMatrixObject → Bool

structure AdmissibleClass where
  lane : SparseMatrixObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded
  projectedLanguage : Set SparseMatrixObject
  solver : DecisionProcedure

structure PvsNpAdmittedObject where
  classicalObject : SparseMatrixObject
  projectedLanguage : Set SparseMatrixObject
  solver : DecisionProcedure

def Decides (M : DecisionProcedure) (L : Set SparseMatrixObject) : Prop :=
  ∀ x : SparseMatrixObject, M.multiplies x = true ↔ x ∈ L

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.solver A.projectedLanguage ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse