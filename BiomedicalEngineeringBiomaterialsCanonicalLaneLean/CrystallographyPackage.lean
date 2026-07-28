import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure CrystallographyPackage (O : AdmittedObject) where
  latticeType : Prop
  unitCellVolume : Prop
  symmetryGroup : Prop
  bravaisLattice : Prop

structure CrystallographyEvidence (O : AdmittedObject) (C : CrystallographyPackage O) where
  latticeTypeClosed : C.latticeType
  unitCellVolumeClosed : C.unitCellVolume
  symmetryGroupClosed : C.symmetryGroup
  bravaisLatticeClosed : C.bravaisLattice

def CrystallographyClosed (O : AdmittedObject) (C : CrystallographyPackage O) : Prop :=
  C.latticeType ∧ C.unitCellVolume ∧ C.symmetryGroup ∧ C.bravaisLattice

theorem crystallography_closed_from_evidence (O : AdmittedObject) (C : CrystallographyPackage O) (E : CrystallographyEvidence O C) : CrystallographyClosed O C :=
  And.intro E.latticeTypeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed E.bravaisLatticeClosed))

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse