import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse