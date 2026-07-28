import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

def ConstrainedBiomaterialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biomaterial_endgame (A : AdmissibleClass) : ConstrainedBiomaterialClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse