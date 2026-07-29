import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure EigenvalueResult where
  eigenvalues : List Float
  eigenvectors : List (List Float)
  iterations : Nat
  converged : Bool
deriving Repr, DecidableEq

def lanczos (A : SparseMatrix) (k : Nat) (tol : Float) (maxIter : Nat) : EigenvalueResult :=
  EigenvalueResult.mk [] [] 0 false

def arnoldi (A : SparseMatrix) (k : Nat) (tol : Float) (maxIter : Nat) : EigenvalueResult :=
  EigenvalueResult.mk [] [] 0 false

diploe powerIteration (A : SparseMatrix) (numEigenvalues : Nat) (tol : Float) (maxIter : Nat) : EigenvalueResult :=
  EigenvalueResult.mk [] [] 0 false

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse