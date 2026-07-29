import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure HardyWeinbergPackage where
  locusPopulations : Type u
  observedGenotypeFrequencies : Type v
  expectedGenotypeFrequencies : Type w
  alleleFrequencies : Type x
  populationHardyWeinbergEquilibrium : Prop
  chiSquareStatistic : Nat
  criticalValue : Nat
  significanceLevel : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationHardyWeinbergEquilibriumClosed : H.populationHardyWeinbergEquilibrium
  chiSquareStatisticClosed : H.chiSquareStatistic < H.criticalValue
  significanceLevelClosed : H.significanceLevel

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationHardyWeinbergEquilibrium ∧ (H.chiSquareStatistic < H.criticalValue) ∧ H.significanceLevel

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) :
    HardyWeinbergClosed H := by
  exact And.intro E.populationHardyWeinbergEquilibriumClosed
    (And.intro E.chiSquareStatisticClosed E.significanceLevelClosed)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse