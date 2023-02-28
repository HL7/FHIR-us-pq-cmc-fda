RuleSet: DUNSandFEINumber
* identifier 1..* MS
* identifier.type 0..1 MS
* identifier.type from PqcmcSponsorIdentifierTypeTerminology (required)
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

Profile: SponsorOrganization
Parent: Organization
Id: cmc-sponsor-organization
Title: "Sponsor Organization"
Description: "A profile for the data elements required to identify the sponsor of the drug products or substances."
* ^abstract = true
* insert DUNSandFEINumber
* name 1..1 MS
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

Profile: MfgTestSiteOrganization
Parent: Organization
Id: mfg-test-site-organization 
Title: "Manufacturing and/or Test Site Organization"
Description: "A profile for the data elements required to identify an organization that manufactures, processes or tests drug products or substances."
* ^abstract = true

* insert DUNSandFEINumber
* identifier ^short = "Manufacturing Site Unique Identifier | Testing Site Unique Identifier"
* identifier ^definition = """Manufacturing Site Unique Identifier: A unique identifier assigned to the establishment (facility) which manufactures, prepares, propagates, compounds or processes drugs. [Source: Adapted from FDA Drug Establishment Current Registration Site]

Testing Site Unique Identifier: A unique identifier assigned to the establishment (facility) which performs the testing. [Source: SME Defined]
"""
* identifier.type ^short = "Manufacturing Site Unique Identifier Type | Testing Site Unique Identifier Type"
* identifier.type ^definition = """A value that identifies the source of the unique identifier. [Source: SME Defined]
Examples: Data Universal Number System (DUNS), Facility Establishment Identifiers (FEI), etc.
"""
//* type 1..* MS
//* type ^short = "Manufacturing Site Function"
//* type ^definition = """v 1.5
//"""
//* type from pqcmc(required)
* name 1..1 MS
* name ^short = "Manufacturing Site Name | Testing Site Name"
* name ^definition = """Manufacturing Site Name: The name of the establishment (facilities) which manufacture, prepare, propagate, compound, process or package drugs that are commercially distributed in the U.S. or offered for import to the U.S[Source: Adapted from FDA Drug Establishment Current Registration Site]

Testing Site Name: The name of the establishment (facility) which tests the raw materials, intermediates, drug substance, drug product, packaging components. [Source: SME Defined]
"""
* contact.address 1..1 MS
* contact.address ^short = "Manufacturing Site Physical Address | Testing Site Address"
* contact.address ^definition = """Manufacturing Site Physical Address: The complete address for the supplier [Source: SME Defined]

Testing Site Address: The complete address for the testing site. [Source: SME defined]
"""
* contact.address only PqAddress

Profile: PqAddress
Parent: Address
Id: pq-cmc-address
Description: "pq-specific Constraints on the Address datatype dealing with US addresses."
* obeys addr-state
* obeys addr-zip
* line 1..2
* city 1..1 MS
* state 0..1 MS
* postalCode 1..1 MS
* country 1..1 MS
* country ^short = "Country can either be the ISO 3-letter country code or the full country name matching the code. The codes and full names are in the value set: GENC 3 Letter Codes"
* country obeys CMC-county

Invariant: addr-state
Description: "If the country is USA, then the state and postal code exist"
Expression: "country = 'USA' implies (state.exists() and state.length() = 2 and postalCode.exists())"
Severity: #error

Invariant: addr-zip
Description: "If the country is USA, then the postal code is 5 digits with an optional dash and 4 numbers"
Expression: "country = 'USA' implies postalCode.matches('^[0-9]{5}(-[0-9]{4})?$')"
Severity: #error

Invariant: CMC-county
Description: "Countrys are from GENC Country Codes Value Set"
Expression: "(
country.exists() implies
country.exists().memberOf('http://hl7.org/fhir/us/pq-cmc/ValueSet/genc-country-codes')
)"
Severity: #error

