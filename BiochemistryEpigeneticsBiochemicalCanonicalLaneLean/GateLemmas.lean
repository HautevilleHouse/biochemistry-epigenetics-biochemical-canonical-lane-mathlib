import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse