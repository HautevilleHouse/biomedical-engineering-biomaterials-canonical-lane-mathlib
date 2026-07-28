import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Type u
  poissonRatio : Type v
  stressStrainRelation : Prop
  anisotropy : Prop
  viscoelasticBehavior : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  anisotropyClosed : E.anisotropy
  viscoelasticBehaviorClosed : E.viscoelasticBehavior

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.anisotropy ∧ E.viscoelasticBehavior

theorem elasticity_closed_from_evidence
    (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.anisotropyClosed Ev.viscoelasticBehaviorClosed)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse