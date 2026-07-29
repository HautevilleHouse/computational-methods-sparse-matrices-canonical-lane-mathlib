import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalMethodsSparseMatricesCanonicalLaneLean

structure GraphPartitioning where
  adjacencyMatrix : List (List Nat)
  numVertices : Nat
  numEdges : Nat
  partitionCount : Nat
  partition : List Nat
deriving Repr, DecidableEq

structure PartitionQuality where
  edgeCut : Nat
  loadImbalance : Float
  communicationVolume : Nat
deriving Repr, DecidableEq

def kMetis (adj : List (List Nat)) (k : Nat) : GraphPartitioning :=
  { adjacencyMatrix := adj, numVertices := 0, numEdges := 0, partitionCount := k, partition := [] }

def evaluatePartition (g : GraphPartitioning) : PartitionQuality :=
  { edgeCut := 0, loadImbalance := 0.0, communicationVolume := 0 }

end ComputationalMethodsSparseMatricesCanonicalLaneLean
end HautevilleHouse