import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure SparseMatrixFormat where
  name : String
  storageOverhead : Nat
  supportsFastAccess : Bool

def cooFormat : SparseMatrixFormat :=
  { name := "COO", storageOverhead := 3, supportsFastAccess := false }

def csrFormat : SparseMatrixFormat :=
  { name := "CSR", storageOverhead := 2, supportsFastAccess := true }

def cscFormat : SparseMatrixFormat :=
  { name := "CSC", storageOverhead := 2, supportsFastAccess := true }

structure SparseMatrixAdmissibleObject where
  format : SparseMatrixFormat
  nnz : Nat
  dimension : Nat
  solverConverges : Prop
  residualBound : Float

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse