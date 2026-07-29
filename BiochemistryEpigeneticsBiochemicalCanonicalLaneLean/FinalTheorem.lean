import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

def ConstrainedBiochemistryEpigeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biochemistry_epigenetics_endgame (A : AdmissibleClass) :
    ConstrainedBiochemistryEpigeneticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse