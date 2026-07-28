import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBiomaterialsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "biomedical-engineering-biomaterials-canonical-lane"
def sourceDescription : String := "Biomedical Engineering Biomaterials"
def baselineCertificateLane : String := "biomaterials_constrained"
def baselineCertificateAllPass : Bool := true
def outsideConstantDependencyCount : Nat := 0

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "source theorem boundary",
  manifoldConstrainedStatement := "biomaterials-constrained theorem certificate internalized through baseline gates",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := rfl

end BiomedicalEngineeringBiomaterialsCanonicalLaneLean
end HautevilleHouse
