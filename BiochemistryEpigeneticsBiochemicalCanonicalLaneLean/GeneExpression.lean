import BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure GeneExpressionPackage where
  gene : Type
  expressionLevel : Type
  regulatoryElements : Type
  expressionPattern : Prop
  transcriptionFactors : Prop
  epigeneticRegulation : Prop

structure GeneExpressionEvidence (G : GeneExpressionPackage) where
  expressionPatternClosed : G.expressionPattern
  transcriptionFactorsClosed : G.transcriptionFactors
  epigeneticRegulationClosed : G.epigeneticRegulation

def GeneExpressionClosed (G : GeneExpressionPackage) : Prop :=
  G.expressionPattern ∧ G.transcriptionFactors ∧ G.epigeneticRegulation

theorem gene_expression_closed_from_evidence (G : GeneExpressionPackage) (E : GeneExpressionEvidence G) :
    GeneExpressionClosed G := by
  exact And.intro E.expressionPatternClosed
    (And.intro E.transcriptionFactorsClosed E.epigeneticRegulationClosed)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse