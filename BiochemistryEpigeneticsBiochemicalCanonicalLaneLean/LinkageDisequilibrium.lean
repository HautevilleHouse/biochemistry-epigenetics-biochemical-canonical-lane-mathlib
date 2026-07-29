import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure LinkageDisequilibriumPackage where
  haplotypeFrequencies : Type u
  recombinationFraction : Type v
  linkageDisequilibriumCoefficient : Type w
  lociPair : Type x
  observedDisequilibrium : Prop
  expectedEquilibriumUnderIndependence : Prop
  chiSquareTestStatistic : Nat
  criticalValue : Nat
  significanceLevel : Prop

structure LinkageDisequilibriumEvidence (L : LinkageDisequilibriumPackage) where
  observedDisequilibriumClosed : L.observedDisequilibrium
  expectedEquilibriumUnderIndependenceClosed : L.expectedEquilibriumUnderIndependence
  chiSquareTestStatisticClosed : L.chiSquareTestStatistic < L.criticalValue
  significanceLevelClosed : L.significanceLevel

def LinkageDisequilibriumClosed (L : LinkageDisequilibriumPackage) : Prop :=
  L.observedDisequilibrium ∧ L.expectedEquilibriumUnderIndependence ∧
  (L.chiSquareTestStatistic < L.criticalValue) ∧ L.significanceLevel

theorem linkage_disequilibrium_closed_from_evidence (L : LinkageDisequilibriumPackage)
    (E : LinkageDisequilibriumEvidence L) : LinkageDisequilibriumClosed L := by
  exact And.intro E.observedDisequilibriumClosed
    (And.intro E.expectedEquilibriumUnderIndependenceClosed
      (And.intro E.chiSquareTestStatisticClosed E.significanceLevelClosed))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse