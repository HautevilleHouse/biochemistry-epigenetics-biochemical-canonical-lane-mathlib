import BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type
  treeStructure : Type
  evolutionaryModel : Type
  treeConsistent : Prop
  branchLengthsEstimated : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  branchLengthsEstimatedClosed : P.branchLengthsEstimated
  bootstrapSupportClosed : P.bootstrapSupport
  treeConsistentDerived : P.treeConsistent

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.branchLengthsEstimated ∧ P.bootstrapSupport ∧ P.treeConsistent

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.branchLengthsEstimatedClosed
    (And.intro E.bootstrapSupportClosed E.treeConsistentDerived)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse