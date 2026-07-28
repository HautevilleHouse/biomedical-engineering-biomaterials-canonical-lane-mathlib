import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : String
  spaceGroup : String
  latticeParameters : Prop
  xrdPattern : Prop

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.xrdPattern

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  xrdPatternClosed : C.xrdPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C :=
  And.intro E.latticeParametersClosed E.xrdPatternClosed

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse