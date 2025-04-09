RuleSet: DUNSandFEINumber
* identifier 1..* MS
* identifier.type 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 0..1 MS
* identifier[DUNSNumber].system = $DUNS
* identifier[DUNSNumber] obeys org-length9
* identifier contains FEINumber 0..1 MS
* identifier[FEINumber].system = $FEINumber
* identifier[FEINumber] obeys org-length7

Profile: CodedOrganization
Parent: Organization
Id: cmc-organization
Title: "Basic Organization"
Description: "A profile for the data elements required to identify the sponsor and/or the supplier of the drug products or substances."
* insert DUNSandFEINumber
* name 1..1 MS
* contact 1..* MS
* contact.address 1..1 MS
* contact.address only PqAddress

Invariant: org-length9
Description: "Identifier number is 9 digits"
Expression: "system = 'urn:oid:1.3.6.1.4.1.519.1'  implies value.length() = 9"
Severity: #error

Invariant: org-length7
Description: "Identifier number is 7 or 10 digits"
Expression: "system = 'urn:oid:2.16.840.1.113883.4.82' implies value.length() = 7 or value.length() = 10"
Severity: #error

Profile: MfgSiteOrganization
Parent: CodedOrganization
Id: mfg-test-site-organization
Title: "Manufacturing and/or Test Site Organization"
Description: "A profile for the data elements required to identify an organization that manufactures, processes or tests drug products or substances."
* type 1..* MS
  * ^short = "Manufacturing Site Function"
  * ^definition = """
    V 1.5
  """ /// What does this mean?
* type from PqcmcMfgTestingSiteTerminology (required)
* name
  * ^short = "Manufacturing Site Name | Testing Site Name"
  * ^definition = """
    Manufacturing Site Name: The name of the establishment (facilities) which manufacture, prepare, propagate, compound, process or package drugs that are commercially distributed in the U.S. or offered for import to the U.S[Source: Adapted from FDA Drug Establishment Current Registration Site]

    Testing Site Name: The name of the establishment (facility) which tests the raw materials, intermediates, drug substance, drug product, packaging components. [Source: SME Defined]
  """
* contact.address
  * ^short = "Manufacturing Site Physical Address | Testing Site Address"
  * ^definition = """
    Manufacturing Site Physical Address: The complete address for the supplier [Source: SME Defined]
    Testing Site Address: The complete address for the testing site. [Source: SME defined]
  """


Profile: PqAddress
Parent: Address
Id: pq-cmc-address
Description: "pq-specific Constraints on the Address datatype dealing with US addresses."
* obeys addr-state
* obeys addr-zip
* type 1..1 MS
* line 1..2
* city 1..1 MS
* state 0..1 MS
* postalCode 1..1 MS
* country 1..1 MS
* country ^short = "Country must be a 3-letter country code."
  * obeys cmc-only-ISO-3166-1-alpha-3

Invariant: addr-state
Description: "If the country is USA, then the state and postal code exist"
Expression: "country = 'USA' implies (state.exists() and state.length() = 2 and postalCode.exists())"
Severity: #error

Invariant: addr-zip
Description: "If the country is USA, then the postal code is 5 digits with an optional dash and 4 numbers"
Expression: "country = 'USA' implies postalCode.matches('^[0-9]{5}(-[0-9]{4})?$')"
Severity: #error


