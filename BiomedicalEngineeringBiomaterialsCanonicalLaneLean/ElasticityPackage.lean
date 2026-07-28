import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BiomaterialAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure ElasticityPackage where
  elasticModuli : Prop
  stressStrainRelation : Prop
  poissonRatio : Prop
  yieldStrength : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModuliClosed : E.elasticModuli
  stressStrainRelationClosed : E.stressStrainRelation
  poissonRatioClosed : E.poissonRatio
  yieldStrengthClosed : E.yieldStrength

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModuli ∧ E.stressStrainRelation ∧ E.poissonRatio ∧ E.yieldStrength

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticModuliClosed (And.intro Ev.stressStrainRelationClosed (And.intro Ev.poissonRatioClosed Ev.yieldStrengthClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse