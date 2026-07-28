import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

def ConstrainedBiomaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biomaterials_endgame (A : AdmissibleClass) : ConstrainedBiomaterialsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse