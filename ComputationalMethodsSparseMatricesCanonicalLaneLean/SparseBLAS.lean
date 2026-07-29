import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure SparseVector where
  indices : List Nat
  values : List Float
  length : Nat
deriving Repr, DecidableEq

def sparseDenseDot (v : SparseVector) (x : List Float) : Float :=
  let rec loop (idx : List Nat) (vals : List Float) (acc : Float) : Float :=
    match idx, vals with
    | [], [] => acc
    | i :: is, v :: vs => loop is vs (acc + v * x.get! i)
    | _, _ => acc
  loop v.indices v.values 0.0

def sparseAxpy (a : Float) (x : SparseVector) (y : List Float) : List Float :=
  let updatedY := y
  List.foldl2 (fun acc i v =>
    acc.set i ((acc.get! i) + a * v)
  ) updatedY x.indices x.values

def csrMatVec (rowPtr : List Nat) (colInd : List Nat) (values : List Float) (x : List Float) : List Float :=
  let n := rowPtr.length - 1
  List.range n |>.map (fun i =>
    let start := rowPtr.get! i
    let end_ := rowPtr.get! (i+1)
    List.foldl2 (fun acc j off =>
      acc + values.get! (start + off) * x.get! j
    ) 0.0 (colInd.extract start end_) (List.range (end_ - start))
  )

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse