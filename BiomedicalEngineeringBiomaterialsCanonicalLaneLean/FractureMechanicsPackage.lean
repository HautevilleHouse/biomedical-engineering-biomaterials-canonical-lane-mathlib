import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BiomaterialAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : Prop
  crackGrowthCriterion : Prop
  stressIntensityFactor : Prop
  parisLawParameters : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  stressIntensityFactorClosed : F.stressIntensityFactor
  parisLawParametersClosed : F.parisLawParameters

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackGrowthCriterion ∧ F.stressIntensityFactor ∧ F.parisLawParameters

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.crackGrowthCriterionClosed (And.intro E.stressIntensityFactorClosed E.parisLawParametersClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse