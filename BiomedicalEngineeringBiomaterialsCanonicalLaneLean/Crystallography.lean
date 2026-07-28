import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure CrystalLatticePackage where
  latticeType : String
  symmetryGroup : String
  unitCellVolume : ℝ
  basisAtoms : List String
  bravaisLattice : Prop
  crystalSystem : String
  spaceGroup : String
  latticeParameters : ℝ × ℝ × ℝ
  angles : ℝ × ℝ × ℝ
  bravaisLatticeClosed : bravaisLattice

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  latticeTypeClosed : C.latticeType = "Bravais"
  symmetryGroupClosed : C.symmetryGroup ≠ ""
  unitCellVolumeClosed : C.unitCellVolume > 0
  basisAtomsClosed : C.basisAtoms.length ≥ 1

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.bravaisLattice ∧ C.latticeType = "Bravais" ∧ C.symmetryGroup ≠ "" ∧ C.unitCellVolume > 0 ∧ C.basisAtoms.length ≥ 1

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.latticeTypeClosed
      (And.intro E.symmetryGroupClosed
        (And.intro E.unitCellVolumeClosed E.basisAtomsClosed)))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse