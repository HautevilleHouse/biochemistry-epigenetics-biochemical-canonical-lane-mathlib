import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure PhylogeneticsPackage (O : GeneticsObject) where
  phylogeneticTree : Prop
  evolutionaryDistance : Prop
  treeBuildingMethod : Prop
  bootstrapSupport : Prop
  molecularClock : Prop

structure PhylogeneticsEvidence {O : GeneticsObject} (P : PhylogeneticsPackage O) where
  phylogeneticTreeClosed : P.phylogeneticTree
  evolutionaryDistanceClosed : P.evolutionaryDistance
  treeBuildingMethodClosed : P.treeBuildingMethod
  bootstrapSupportClosed : P.bootstrapSupport
  molecularClockClosed : P.molecularClock

def PhylogeneticsClosed {O : GeneticsObject} (P : PhylogeneticsPackage O) : Prop :=
  P.phylogeneticTree ∧ P.evolutionaryDistance ∧ P.treeBuildingMethod ∧
  P.bootstrapSupport ∧ P.molecularClock

theorem phylogenetics_closed_from_evidence {O : GeneticsObject} (P : PhylogeneticsPackage O)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.phylogeneticTreeClosed
    (And.intro E.evolutionaryDistanceClosed
      (And.intro E.treeBuildingMethodClosed
        (And.intro E.bootstrapSupportClosed E.molecularClockClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse