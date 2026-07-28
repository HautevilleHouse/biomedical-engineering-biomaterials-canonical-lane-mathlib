import HautevilleHouse.BiomedicalEngineeringBiomaterialsCanonicalLaneLean.BiomaterialAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure CrystalStructurePackage where
  crystalSystem : Prop
  latticeParameters : Prop
  symmetryGroup : Prop
  unitCellVolume : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  crystalSystemClosed : C.crystalSystem
  latticeParametersClosed : C.latticeParameters
  symmetryGroupClosed : C.symmetryGroup
  unitCellVolumeClosed : C.unitCellVolume

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.crystalSystem ∧ C.latticeParameters ∧ C.symmetryGroup ∧ C.unitCellVolume

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.crystalSystemClosed (And.intro E.latticeParametersClosed (And.intro E.symmetryGroupClosed E.unitCellVolumeClosed))

structure PhaseDiagramPackage where
  phasesIdentified : Prop
  phaseBoundaries : Prop
  gibbsFreeEnergyModel : Prop
  tieLineConstruction : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phasesIdentifiedClosed : P.phasesIdentified
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyModelClosed : P.gibbsFreeEnergyModel
  tieLineConstructionClosed : P.tieLineConstruction

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phasesIdentified ∧ P.phaseBoundaries ∧ P.gibbsFreeEnergyModel ∧ P.tieLineConstruction

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phasesIdentifiedClosed (And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyModelClosed E.tieLineConstructionClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse