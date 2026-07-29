import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure HistoneModificationPackage where
  histoneAcetyltransferaseActive : Prop
  histoneMethyltransferaseActive : Prop
  acetylationMarksPresent : Prop
  methylationMarksPresent : Prop
  histoneCodeRead : Prop

structure HistoneModificationEvidence (H : HistoneModificationPackage) where
  histoneAcetyltransferaseActiveClosed : H.histoneAcetyltransferaseActive
  histoneMethyltransferaseActiveClosed : H.histoneMethyltransferaseActive
  acetylationMarksPresentClosed : H.acetylationMarksPresent
  methylationMarksPresentClosed : H.methylationMarksPresent
  histoneCodeReadClosed : H.histoneCodeRead

def HistoneModificationClosed (H : HistoneModificationPackage) : Prop :=
  H.histoneAcetyltransferaseActive ∧ H.histoneMethyltransferaseActive ∧
  H.acetylationMarksPresent ∧ H.methylationMarksPresent ∧ H.histoneCodeRead

theorem histone_modification_closed_from_evidence (H : HistoneModificationPackage) (E : HistoneModificationEvidence H) :
    HistoneModificationClosed H := by
  exact And.intro E.histoneAcetyltransferaseActiveClosed
    (And.intro E.histoneMethyltransferaseActiveClosed
      (And.intro E.acetylationMarksPresentClosed
        (And.intro E.methylationMarksPresentClosed E.histoneCodeReadClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse