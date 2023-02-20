Instance: 0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b
InstanceOf: ExcipientRaw
Title: "Example of ExcipientRaw profile"
Description: "Provides sufficient information to identify an Excipient or Raw material."
Usage: #example

* id = "0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b"
* grade.coding = $NCIT#C134009 "Company Standard"
* manufacturer = Reference(029f1cb8-2dc7-4971-8309-55e6dd129918)
* code.code = $UNII#I26K2QK6G8 "I26K2QK6G8"
* name[0].name = "HUMAN SERUM ALBUMIN, RECOMBINANT RICE-DERIVED"  
* sourceMaterial.type = $NCIT#C14225 "Human"
* sourceMaterial.genus.text = "Homo"
* sourceMaterial.species.text = "Homo sapiens"
* sourceMaterial.part.text = "male AB plasma"
* sourceMaterial.countryOfOrigin.coding = $GENC#USA "UNITED STATES"

//From Resource Profile: Routine Drug Substance. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-pqcmc-routine-drug-substance.html
Instance: f5de5600-7e54-4d2d-b442-7b3366531231
InstanceOf: RoutineSubstanceDefinition
Title: "Example RoutineSubstanceDefinition."
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."
Usage: #example

* id = "f5de5600-7e54-4d2d-b442-7b3366531231"
* classification = $EMAIDMP#17 "Mixture"
//Reference MfgTestSiteOrganization
* manufacturer = Reference(029f1cb8-2dc7-4971-8309-55e6dd129918)
* code.code = $UNII#RT9P9S09QI "RT9P9S09QI" 
* name.name = "PROPYLENE GLYCOL MONOCAPRYLATE"
* name.type = PqcmcProductIngredientNameType#141 "GSRS Accepted"
* name.preferred = true
* sourceMaterial.type = $NCIT#C48807 "Chemical"


//From Resource Profile: MfgTestSiteOrganization. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-mfg-test-site-organization.html
Instance: 029f1cb8-2dc7-4971-8309-55e6dd129918
InstanceOf: MfgTestSiteOrganization
Title: "Example of MfgTestSiteOrganization profile on Organization"
Description: "A profile for the data elements required to identify an organization that manufactures, processes or tests drug products or substances."
Usage: #example

* id = "029f1cb8-2dc7-4971-8309-55e6dd129918"
* name = "Sams BioPharm"
//Slicing of Identifier
* identifier[DUNSNumber]
  * system = "urn:oid:1.3.6.1.4.1.519.1"
  * value = "123456789"
* identifier[FEINumber]
  * system = "urn:oid:2.16.840.1.113883.4.82"
  * value = "1234567"
//PqAddress
* contact.address.line = "2752 Main Street"
* contact.address.city = "Princeton"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"
