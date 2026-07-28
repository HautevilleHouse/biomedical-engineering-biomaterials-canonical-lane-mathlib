import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure PhaseDiagramPackage where
  phases : List String
  phaseBoundaries : Prop
  compositionTemperatureRange : Prop
  equilibriumConditions : Prop

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.compositionTemperatureRange ∧ P.equilibriumConditions

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  compositionTemperatureRangeClosed : P.compositionTemperatureRange
  equilibriumConditionsClosed : P.equilibriumConditions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P :=
  And.intro E.phaseBoundariesClosed (And.intro E.compositionTemperatureRangeClosed E.equilibriumConditionsClosed)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse