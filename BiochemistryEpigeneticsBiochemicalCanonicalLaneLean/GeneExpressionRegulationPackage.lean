import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  promoterMethylationStatus : Prop
  enhancerAccessibility : Prop
  transcriptionFactorNetwork : Prop
  rnaPolymeraseRecruitment : Prop
  mrnaExpressionLevel : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  promoterMethylationStatusClosed : G.promoterMethylationStatus
  enhancerAccessibilityClosed : G.enhancerAccessibility
  transcriptionFactorNetworkClosed : G.transcriptionFactorNetwork
  rnaPolymeraseRecruitmentClosed : G.rnaPolymeraseRecruitment
  mrnaExpressionLevelClosed : G.mrnaExpressionLevel

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.promoterMethylationStatus ∧ G.enhancerAccessibility ∧
  G.transcriptionFactorNetwork ∧ G.rnaPolymeraseRecruitment ∧ G.mrnaExpressionLevel

theorem gene_expression_regulation_closed_from_evidence (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.promoterMethylationStatusClosed
    (And.intro E.enhancerAccessibilityClosed
      (And.intro E.transcriptionFactorNetworkClosed
        (And.intro E.rnaPolymeraseRecruitmentClosed E.mrnaExpressionLevelClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse