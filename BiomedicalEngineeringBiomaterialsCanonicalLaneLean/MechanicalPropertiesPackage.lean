import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure MechanicalPropertiesPackage where
  elasticityModulus : Prop
  fractureToughness : Prop
  yieldStrength : Prop
  fatigueLife : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  elasticityModulusClosed : M.elasticityModulus
  fractureToughnessClosed : M.fractureToughness
  yieldStrengthClosed : M.yieldStrength
  fatigueLifeClosed : M.fatigueLife

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.elasticityModulus ∧ M.fractureToughness ∧ M.yieldStrength ∧ M.fatigueLife

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.elasticityModulusClosed (And.intro E.fractureToughnessClosed (And.intro E.yieldStrengthClosed E.fatigueLifeClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse