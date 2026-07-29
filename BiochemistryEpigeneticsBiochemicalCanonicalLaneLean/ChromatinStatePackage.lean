import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure ChromatinStatePackage where
  nucleosomePositioning : Prop
  chromatinRemodelingComplexActive : Prop
  openChromatinRegions : Prop
  closedChromatinRegions : Prop
  accessibilityForTranscription : Prop

structure ChromatinStateEvidence (C : ChromatinStatePackage) where
  nucleosomePositioningClosed : C.nucleosomePositioning
  chromatinRemodelingComplexActiveClosed : C.chromatinRemodelingComplexActive
  openChromatinRegionsClosed : C.openChromatinRegions
  closedChromatinRegionsClosed : C.closedChromatinRegions
  accessibilityForTranscriptionClosed : C.accessibilityForTranscription

def ChromatinStateClosed (C : ChromatinStatePackage) : Prop :=
  C.nucleosomePositioning ∧ C.chromatinRemodelingComplexActive ∧
  C.openChromatinRegions ∧ C.closedChromatinRegions ∧ C.accessibilityForTranscription

theorem chromatin_state_closed_from_evidence (C : ChromatinStatePackage) (E : ChromatinStateEvidence C) :
    ChromatinStateClosed C := by
  exact And.intro E.nucleosomePositioningClosed
    (And.intro E.chromatinRemodelingComplexActiveClosed
      (And.intro E.openChromatinRegionsClosed
        (And.intro E.closedChromatinRegionsClosed E.accessibilityForTranscriptionClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse