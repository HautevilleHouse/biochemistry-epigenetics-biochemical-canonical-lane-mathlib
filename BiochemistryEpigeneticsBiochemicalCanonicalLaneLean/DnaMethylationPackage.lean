import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure DnaMethylationPackage where
  methyltransferaseActive : Prop
  methylationPatternStable : Prop
  cpgIslandsMethylated : Prop
  geneSilencingByMethylation : Prop

structure DnaMethylationEvidence (D : DnaMethylationPackage) where
  methyltransferaseActiveClosed : D.methyltransferaseActive
  methylationPatternStableClosed : D.methylationPatternStable
  cpgIslandsMethylatedClosed : D.cpgIslandsMethylated
  geneSilencingByMethylationClosed : D.geneSilencingByMethylation

def DnaMethylationClosed (D : DnaMethylationPackage) : Prop :=
  D.methyltransferaseActive ∧ D.methylationPatternStable ∧ D.cpgIslandsMethylated ∧ D.geneSilencingByMethylation

theorem dna_methylation_closed_from_evidence (D : DnaMethylationPackage) (E : DnaMethylationEvidence D) :
    DnaMethylationClosed D := by
  exact And.intro E.methyltransferaseActiveClosed
    (And.intro E.methylationPatternStableClosed
      (And.intro E.cpgIslandsMethylatedClosed E.geneSilencingByMethylationClosed))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse