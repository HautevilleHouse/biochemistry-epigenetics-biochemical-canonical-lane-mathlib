import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure GeneticAdmittedObject where
  population : Type
  alleleFrequencies : population → Rat
  hardyWeinbergEquilibrium : Prop
  conclusion : hardyWeinbergEquilibrium

structure AdmissibleClass where
  object : GeneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse