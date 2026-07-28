import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  isotropic : Prop
  linearElastic : Prop
  stressStrainRelation : String
  isotropicClosed : isotropic
  linearElasticClosed : linearElastic

structure ElasticityEvidence (E : ElasticityPackage) where
  isotropicClosed : E.isotropic
  linearElasticClosed : E.linearElastic
  youngModulusClosed : E.youngModulus > 0
  poissonRatioClosed : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5
  shearModulusClosed : E.shearModulus > 0
  bulkModulusClosed : E.bulkModulus > 0

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.isotropic ∧ E.linearElastic ∧ E.youngModulus > 0 ∧ (-1 < E.poissonRatio ∧ E.poissonRatio < 0.5) ∧ E.shearModulus > 0 ∧ E.bulkModulus > 0

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.isotropicClosed
    (And.intro Ev.linearElasticClosed
      (And.intro Ev.youngModulusClosed
        (And.intro Ev.poissonRatioClosed
          (And.intro Ev.shearModulusClosed Ev.bulkModulusClosed))))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse