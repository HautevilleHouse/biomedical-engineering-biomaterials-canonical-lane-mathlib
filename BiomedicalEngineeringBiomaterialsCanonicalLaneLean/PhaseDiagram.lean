import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure PhaseDiagramPackage where
  phases : Type u
  transitionLines : Type v
  stablePhaseAtConditions : Prop
  phaseTransformationKinetics : Prop
  criticalPoints : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  stablePhaseAtConditionsClosed : P.stablePhaseAtConditions
  phaseTransformationKineticsClosed : P.phaseTransformationKinetics
  criticalPointsClosed : P.criticalPoints

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.stablePhaseAtConditions ∧ P.phaseTransformationKinetics ∧ P.criticalPoints

theorem phase_diagram_closed_from_evidence
    (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.stablePhaseAtConditionsClosed
    (And.intro E.phaseTransformationKineticsClosed E.criticalPointsClosed)

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse