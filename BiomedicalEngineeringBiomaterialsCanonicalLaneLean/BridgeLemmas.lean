import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BiomaterialAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.compositionKnown ∧ A.object.structureCharacterized ∧ A.object.mechanicalPropertiesMeasured ∧ A.object.biocompatibilityAssessed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse