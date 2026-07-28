import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

def BiomaterialsWitnessClosed (O : BiomaterialsAdmittedObject) : Prop :=
  O.biocompatibility

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiomaterialsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse