import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure AlignmentModel where
  querySequence : String
  referenceSequence : String
  alignmentScore : Int
  significantAlignment : Prop

structure AlignmentEvidence (A : AlignmentModel) where
  alignmentScoreClosed : A.alignmentScore
  significantAlignmentClosed : A.significantAlignment

def AlignmentClosed (A : AlignmentModel) : Prop :=
  A.alignmentScore ∧ A.significantAlignment

theorem alignment_closed_from_evidence (A : AlignmentModel) (E : AlignmentEvidence A) :
    AlignmentClosed A := by
  exact And.intro E.alignmentScoreClosed E.significantAlignmentClosed

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse