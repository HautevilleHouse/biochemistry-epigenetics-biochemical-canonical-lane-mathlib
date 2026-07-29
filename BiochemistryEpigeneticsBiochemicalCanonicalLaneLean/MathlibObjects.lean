import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure EpigeneticLocus where
  chromosome : Nat
  position : Nat
  region : String

structure EpigeneticState where
  methylationStatus : Prop
  histoneModifications : Prop
  chromatinAccessibility : Prop

structure EpigeneticAdmittedObject where
  locus : EpigeneticLocus
  state : EpigeneticState
  conclusion : state.methylationStatus ∧ state.histoneModifications ∧ state.chromatinAccessibility

def EpigeneticWitnessClosed (O : EpigeneticAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse