import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse