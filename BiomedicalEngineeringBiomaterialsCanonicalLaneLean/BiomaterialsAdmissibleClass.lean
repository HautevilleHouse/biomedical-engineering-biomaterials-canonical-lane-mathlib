import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure BiomaterialsAdmittedObject where
  material : Type u
  composition : Prop
  structureProperty : Prop
  biocompatibility : Prop
  conclusion : biocompatibility

structure AdmissibleClass where
  object : BiomaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiomaterialsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse