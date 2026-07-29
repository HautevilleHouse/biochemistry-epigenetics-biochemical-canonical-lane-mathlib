import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryEpigeneticsBiochemicalCanonicalLaneLean

structure EpigeneticRegulationPackage (O : GeneticsObject) where
  dnaMethylation : Prop
  histoneModification : Prop
  chromatinRemodeling : Prop
  geneExpressionRegulation : Prop
  epigeneticInheritance : Prop

structure EpigeneticRegulationEvidence {O : GeneticsObject} (E : EpigeneticRegulationPackage O) where
  dnaMethylationClosed : E.dnaMethylation
  histoneModificationClosed : E.histoneModification
  chromatinRemodelingClosed : E.chromatinRemodeling
  geneExpressionRegulationClosed : E.geneExpressionRegulation
  epigeneticInheritanceClosed : E.epigeneticInheritance

def EpigeneticRegulationClosed {O : GeneticsObject} (E : EpigeneticRegulationPackage O) : Prop :=
  E.dnaMethylation ∧ E.histoneModification ∧ E.chromatinRemodeling ∧
  E.geneExpressionRegulation ∧ E.epigeneticInheritance

theorem epigenetic_regulation_closed_from_evidence {O : GeneticsObject} (E : EpigeneticRegulationPackage O)
    (Eev : EpigeneticRegulationEvidence E) : EpigeneticRegulationClosed E := by
  exact And.intro Eev.dnaMethylationClosed
    (And.intro Eev.histoneModificationClosed
      (And.intro Eev.chromatinRemodelingClosed
        (And.intro Eev.geneExpressionRegulationClosed Eev.epigeneticInheritanceClosed)))

end BiochemistryEpigeneticsBiochemicalCanonicalLaneLean
end HautevilleHouse