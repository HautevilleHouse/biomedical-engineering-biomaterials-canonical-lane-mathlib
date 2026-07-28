import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure BiocompatibilityPackage where
  hostResponse : Type u
  cytotoxicity : Type v
  inflammatoryResponse : Prop
  immuneCompatibility : Prop
  longTermStability : Prop

structure BiocompatibilityEvidence (B : BiocompatibilityPackage) where
  inflammatoryResponseClosed : B.inflammatoryResponse
  immuneCompatibilityClosed : B.immuneCompatibility
  longTermStabilityClosed : B.longTermStability

def BiocompatibilityClosed (B : BiocompatibilityPackage) : Prop :=
  B.inflammatoryResponse ∧ B.immuneCompatibility ∧ B.longTermStability

theorem biocompatibility_closed_from_evidence
    (B : BiocompatibilityPackage) (E : BiocompatibilityEvidence B) :
    BiocompatibilityClosed B := by
  exact And.intro E.inflammatoryResponseClosed
    (And.intro E.immuneCompatibilityClosed E.longTermStabilityClosed)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse