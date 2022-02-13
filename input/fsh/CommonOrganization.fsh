RuleSet: DUNSandFEINumber
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Require specific types of identifiers."
* identifier contains DUNSNumber 0..1 MS
* identifier[DUNSNumber].system = $DUNS
* identifier[DUNSNumber] obeys pq-1.1.1
* identifier contains FEINumber 0..1 MS
* identifierFEINumber].system = $FEINumber
* identifier[FEINumber] obeys pq-1.1.1
//Lloyd - they need to provide at least one. Does this do it?

Profile: SponsorOrganization
Parent: Organization
Description: "A profile for the data elements required to identify the sponsor of the drug products or substances."
* ^abstract = true
* insert DUNSandFEINumber
* type 1..1 MS
* type from PqcmcSponsorIdentifierTypeTerminology (required)
* name 1..1 MS
* address 1..1 MS
* address only PqAddress

Invariant: pq-1.1.1
Description: "Identifier number is 9 digits"
Expression: "system = 'urn:oid:1.3.6.1.4.1.519.1' or 'urn:oid:2.16.840.1.113883.4.82' implies value.length() = 9"
Severity: #error

Profile: MfgTestSiteOrganization
Parent: Organization
Description: "A profile for the data elements required to identify an organization that manufactures, processes or tests drug products or substances."
* ^abstract = true
* insert DUNSandFEINumber
* type 1..1 MS
* type from PqcmcTestingSiteUniqueIdentifierTypeTerminology (required)
* name 1..1 MS
* address 1..1 MS
* address only PqAddress

Profile: PqAddress
Parent: Address
Description: "pq-specific Constraints on the Address datatype dealing with US addresses."
* obeys pq-1.2.1
* obeys pq-1.3.1
* line 1..2
* city 1..1 MS
* state 0..1 MS
* postalCode 1..1 MS
* country 1..1 MS
* country ^short = "Country can either be the ISO 3-letter country code or the full country name matching the code."

Invariant: pq-1.2.1
Description: "If the country is USA, then the state and postal code exist"
Expression: "country = 'USA' implies (state.exists() and state.length() = 2 and postalCode.exists())"
Severity: #error

Invariant: pq-1.3.1
Description: "If the country is USA, then the postal code is 5 digits with an optional dash and 4 numbers"
Expression: "country = 'USA' implies postalCode.matches('^[0-9]{5}(-[0-9]{4})?$')"
Severity: #error