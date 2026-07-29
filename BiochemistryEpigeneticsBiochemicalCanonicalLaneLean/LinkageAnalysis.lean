import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure LinkageModel where
  markers : List String
  recombinationFraction : Rat
  lodScore : Prop
  significantLinkage : Prop

structure LinkageEvidence (L : LinkageModel) where
  lodScoreClosed : L.lodScore
  significantLinkageClosed : L.significantLinkage

def LinkageClosed (L : LinkageModel) : Prop :=
  L.lodScore ∧ L.significantLinkage

theorem linkage_closed_from_evidence (L : LinkageModel) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.lodScoreClosed E.significantLinkageClosed

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse