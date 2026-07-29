import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  transcriptionFactorPresent : Prop
  bindingSiteAccessible : Prop
  dnaMotifRecognized : Prop
  recruitmentOfCoactivators : Prop
  transcriptionalActivation : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  transcriptionFactorPresentClosed : T.transcriptionFactorPresent
  bindingSiteAccessibleClosed : T.bindingSiteAccessible
  dnaMotifRecognizedClosed : T.dnaMotifRecognized
  recruitmentOfCoactivatorsClosed : T.recruitmentOfCoactivators
  transcriptionalActivationClosed : T.transcriptionalActivation

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.transcriptionFactorPresent ∧ T.bindingSiteAccessible ∧
  T.dnaMotifRecognized ∧ T.recruitmentOfCoactivators ∧ T.transcriptionalActivation

theorem transcription_factor_binding_closed_from_evidence (T : TranscriptionFactorBindingPackage) (E : TranscriptionFactorBindingEvidence T) :
    TranscriptionFactorBindingClosed T := by
  exact And.intro E.transcriptionFactorPresentClosed
    (And.intro E.bindingSiteAccessibleClosed
      (And.intro E.dnaMotifRecognizedClosed
        (And.intro E.recruitmentOfCoactivatorsClosed E.transcriptionalActivationClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse