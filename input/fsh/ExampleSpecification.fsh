Instance: 0baed83c-495e-4129-8e26-537a0ede5e15
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug product or drug substance (excipient, API or raw material)"
Description: "A quality specification is for an Excipient or Raw material"
Usage: #example

* extension[pq-specification-status-extension].valueCodeableConcept = $NCIT#C134011 "Not Approved"
* extension[pq-specification-type-extension].valueCodeableConcept = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"
* id = "0baed83c-495e-4129-8e26-537a0ede5e15"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0baed83c-495e-4129-8e26-537a0ede5e15"
* version = "1.0"
* title = "Quality Specification for Excipient"
* status = #active
//Reference an Excipient Substance Definition
* subjectReference = Reference(0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b)
* date = "2022-12-08"
* useContext.valueCodeableConcept.coding = $NCIT#C134010 "Tentatively Approved"
* approvalDate = "2022-12-08"
* goal
* goal.id = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"
* goal.description.text = "NMT 100 colony-forming units"
* goal.addresses = $NCIT#C134029 "Release"
* goal.target.detailQuantity
* goal.target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal.target.detailQuantity.value = 100
* goal.target.detailQuantity.unit = "cfu"
* goal.target.detailQuantity.code = $UCUM#[CFU] "colony forming units"
//----------------------------Guide--------------------------------------------------------
// goal.target.detailQuantity ^short = "Acceptance Criteria (Numeric)"
//* goal.target.detailQuantity.extension[interpretationCode] ^short = "Interpretation Code"
//* goal.target.detailRange ^short = "Acceptance Criteria (Numeric range)"
//* goal.target.detailRange.low.extension[interpretationCode] ^short = "Interpretation Code"
//* goal.target.detailRange.high.extension[interpretationCode] ^short = "Interpretation Code"
//* goal.target.detailString ^short = "Acceptance Criteria (Text)"
//* goal.target.detailString.extension[interpretationCodeS] ^short = "Interpretation Code"
//* goal.target.detailInteger ^short = "Replicate Number"
* action
  * extension[testOrder].valueDecimal = 1.0
* action.prefix  = "Single Stage"
* action.title = "Microbial Limits"
* action.code.coding[testCategory].code = $PQTC#TC13 "Microbial Limits"
// action.code.coding[testSubCat].code = "Test Sub-category"
* action.code.coding[methodOrigin].code = $NCIT#C96102 "Compendial"
* action.code.text = "Microbiological Examination of Nonsterile Products"
* action.documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/aqdpe60.pdf"
* action.goalId = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"

Instance: 394c19af-062b-49b4-9f8d-f5a3499a8476
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug substance "
Description: "A quality specification is for an API "
Usage: #example

* extension[pq-specification-status-extension].valueCodeableConcept = $NCIT#C134011 "Not Approved"
* extension[pq-specification-type-extension].valueCodeableConcept = $NCIT#C134022 "Drug Substance"
* id = "394c19af-062b-49b4-9f8d-f5a3499a8476"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:394c19af-062b-49b4-9f8d-f5a3499a8476"
* version = "1.0"
* title = "Quality Specification for API"
* status = #active
//Reference an Active Pharmaceutical Ingredient (API)
* subjectReference = Reference(f5de5600-7e54-4d2d-b442-7b3366531231)
* date = "2022-12-08"
* useContext.valueCodeableConcept.coding = $NCIT#C134011 "Not Approved"
* goal
* goal.id = "85154af5-e3fd-4d9a-9a43-f4d1703c06e7"
* goal.description.text = " Averge of 10 between 2-3  pH "
* goal.addresses = $NCIT#C134029 "Release"
* goal.addresses = $NCIT#C134030 "Stability"
* goal.target.detailRange.low
* goal.target.detailRange.low.extension[interpretationCode].valueCodeableConcept = $NCIT#C61584 "MT (more than)"
* goal.target.detailRange.low.value = 20
* goal.target.detailRange.low.unit = "pH"
* goal.target.detailRange.low.code = $UCUM#[pH] "pH"
* goal.target.detailRange.high
* goal.target.detailRange.high.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal.target.detailRange.high.value = 3.0
* goal.target.detailRange.high.unit = "pH"
* goal.target.detailRange.high.code = $UCUM#[pH] "pH"
* goal.target.detailInteger
* goal.target.detailRange.high.value = 10
* action
  * extension[testOrder].valueDecimal = 1.0
* action.prefix  = "Single Stage"
* action.title = "pH Average"
* action.code.coding[testCategory].code = $PQTC#TC23 "pH"
// action.code.coding[testSubCat].code = "Test Sub-category"
* action.code.coding[methodOrigin].code = $NCIT#C96103 "Proprietary"
* action.code.text = "pH method for release and stability"
* action.documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/pHall.pdf"
* action.goalId = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"

//From Resource Profile: Drug Product. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-pqcmc-drug-produc.html
Instance: 8e854cea-f491-471f-b5dc-910f20135658
InstanceOf: RoutineDrugProduct
Title: "Includes the properties of the drug product, its components and impurities"
Description: "Includes the properties of the drug product, its components and impurities"
Usage: #example

* id = "8e854cea-f491-471f-b5dc-910f20135658"
* combinedPharmaceuticalDoseForm = $NCIT#100000073366 "Powder and solvent for oral solution"
* route = $NCIT#C38197 "DENTAL"
* name[NonProprietary].productName = "Allograft"
* name[NonProprietary].type.text = "Non-Proprietary"
* name[NonProprietary].part.part = "Allograft"
* name[NonProprietary].part.type = $NamePartType#SCI	"scientific name"

Instance: 0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b
InstanceOf: ExcipientRaw
Title: "Example of ExcipientRaw profile"
Description: "Provides sufficient information to identify an Excipient or Raw material."
Usage: #example

* id = "0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b"
* classification = $EMAIDMP#8 "Structurally Diverse Substance - Blood derived"
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
