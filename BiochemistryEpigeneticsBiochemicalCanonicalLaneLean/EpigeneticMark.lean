import BiochemistryEpigeneticsBiochemicalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure EpigeneticMarkPackage where
  markType : Type
  genomicLocation : Type
  markPresence : Prop
  histonModification : Prop
  dnaMethylation : Prop
  functionalConsequence : Prop

structure EpigeneticMarkEvidence (E : EpigeneticMarkPackage) where
  markPresenceClosed : E.markPresence
  histonModificationClosed : E.histonModification
  dnaMethylationClosed : E.dnaMethylation
  functionalConsequenceDerived : E.functionalConsequence

def EpigeneticMarkClosed (E : EpigeneticMarkPackage) : Prop :=
  E.markPresence ∧ E.histonModification ∧ E.dnaMethylation ∧ E.functionalConsequence

theorem epigenetic_mark_closed_from_evidence (E : EpigeneticMarkPackage) (Ev : EpigeneticMarkEvidence E) :
    EpigeneticMarkClosed E := by
  exact And.intro Ev.markPresenceClosed
    (And.intro Ev.histonModificationClosed
      (And.intro Ev.dnaMethylationClosed Ev.functionalConsequenceDerived))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse