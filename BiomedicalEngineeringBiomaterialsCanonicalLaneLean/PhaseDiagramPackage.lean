import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure PhaseDiagramPackage (O : AdmittedObject) where
  temperatureRange : Prop
  compositionRange : Prop
  phaseBoundaries : Prop
  equilibriumPhases : Prop

structure PhaseDiagramEvidence (O : AdmittedObject) (P : PhaseDiagramPackage O) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  phaseBoundariesClosed : P.phaseBoundaries
  equilibriumPhasesClosed : P.equilibriumPhases

def PhaseDiagramClosed (O : AdmittedObject) (P : PhaseDiagramPackage O) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.phaseBoundaries ∧ P.equilibriumPhases

theorem phase_diagram_closed_from_evidence (O : AdmittedObject) (P : PhaseDiagramPackage O) (E : PhaseDiagramEvidence O P) : PhaseDiagramClosed O P :=
  And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed (And.intro E.phaseBoundariesClosed E.equilibriumPhasesClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse