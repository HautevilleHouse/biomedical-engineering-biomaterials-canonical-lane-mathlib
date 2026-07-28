import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BiomaterialAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure BiocompatibilityPackage where
  cytotoxicityAssessed : Prop
  hemocompatibilityAssessed : Prop
  inflammatoryResponseCharacterized : Prop
  cellAdhesionQuantified : Prop

structure BiocompatibilityEvidence (B : BiocompatibilityPackage) where
  cytotoxicityAssessedClosed : B.cytotoxicityAssessed
  hemocompatibilityAssessedClosed : B.hemocompatibilityAssessed
  inflammatoryResponseCharacterizedClosed : B.inflammatoryResponseCharacterized
  cellAdhesionQuantifiedClosed : B.cellAdhesionQuantified

def BiocompatibilityClosed (B : BiocompatibilityPackage) : Prop :=
  B.cytotoxicityAssessed ∧ B.hemocompatibilityAssessed ∧ B.inflammatoryResponseCharacterized ∧ B.cellAdhesionQuantified

theorem biocompatibility_closed_from_evidence (B : BiocompatibilityPackage) (E : BiocompatibilityEvidence B) : BiocompatibilityClosed B := by
  exact And.intro E.cytotoxicityAssessedClosed (And.intro E.hemocompatibilityAssessedClosed (And.intro E.inflammatoryResponseCharacterizedClosed E.cellAdhesionQuantifiedClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse