import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure HardyWeinbergModel where
  alleleA : Rat
  alleleB : Rat
  equilibriumPredicted : Prop
  observedGenotypeFrequencies : Prop
  chiSquareStatistic : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergModel) where
  equilibriumPredictedClosed : H.equilibriumPredicted
  observedGenotypeFrequenciesClosed : H.observedGenotypeFrequencies
  chiSquareStatisticClosed : H.chiSquareStatistic

def HardyWeinbergClosed (H : HardyWeinbergModel) : Prop :=
  H.equilibriumPredicted ∧ H.observedGenotypeFrequencies ∧ H.chiSquareStatistic

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergModel) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.equilibriumPredictedClosed (And.intro E.observedGenotypeFrequenciesClosed E.chiSquareStatisticClosed)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse