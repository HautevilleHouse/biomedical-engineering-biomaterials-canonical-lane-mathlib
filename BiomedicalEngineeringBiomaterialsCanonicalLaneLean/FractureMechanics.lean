import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackLength : Type v
  fractureToughness : Prop
  crackPropagationCriteria : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriteriaClosed : F.crackPropagationCriteria
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagationCriteria ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence
    (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.crackPropagationCriteriaClosed E.fatigueLifeClosed)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse