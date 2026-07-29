import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure DirectSolver where
  name : String
  factorizationCost : Nat
  solveCost : Nat
  memoryCost : Nat
  stability : Float
deriving Repr, DecidableEq

def cholesky (A : SparseMatrix) : DirectSolver :=
  { name := "Cholesky", factorizationCost := 0, solveCost := 0, memoryCost := 0, stability := 0.9 }

def lu (A : SparseMatrix) (pivot : Bool) : DirectSolver :=
  { name := if pivot then "LU with pivoting" else "LU without pivoting", factorizationCost := 0, solveCost := 0, memoryCost := 0, stability := 0.85 }

def qr (A : SparseMatrix) : DirectSolver :=
  { name := "QR", factorizationCost := 0, solveCost := 0, memoryCost := 0, stability := 0.95 }

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse