import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure AdmittedObject where
  material : Type u
  crystalStructure : Prop
  phaseDiagramKnown : Prop
  elasticProperties : Prop
  fractureToughness : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse