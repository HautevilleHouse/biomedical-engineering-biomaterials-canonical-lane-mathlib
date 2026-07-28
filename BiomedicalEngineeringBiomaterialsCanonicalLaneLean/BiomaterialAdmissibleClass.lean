import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure BiomaterialAdmittedObject where
  materialType : String
  compositionKnown : Prop
  structureCharacterized : Prop
  mechanicalPropertiesMeasured : Prop
  biocompatibilityAssessed : Prop
  conclusion : compositionKnown ∧ structureCharacterized ∧ mechanicalPropertiesMeasured ∧ biocompatibilityAssessed

structure AdmissibleClass where
  object : BiomaterialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.compositionKnown ∧ A.object.structureCharacterized ∧ A.object.mechanicalPropertiesMeasured ∧ A.object.biocompatibilityAssessed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse