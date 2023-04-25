Instance: 692a0fa0-cd2c-4ad8-bd6b-7879326103f3
InstanceOf: CMCeCTDDocument32S10
Title: "FHIR Document example of 32S10"
Description: "FHIR document bundle with the CMC eCTD 32S10 profiles"
Usage: #example

* type = #document
* timestamp = "2022-07-06T22:30:21Z"
//Composition 1
* entry[Composition].resource =  b55b8d97-63c5-433c-95cf-812af58aa5fb
* entry[Composition].fullUrl = "urn:uuid:b55b8d97-63c5-433c-95cf-812af58aa5fb"
//  SubstanceDefinition 1..*
* entry[SubstanceDefinition][+].resource = 942fcdc9-8ab9-4f52-be6d-af549117d462
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:942fcdc9-8ab9-4f52-be6d-af549117d462"
* entry[SubstanceDefinition][+].resource = 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"
//  Organization 1..*
* entry[Organization].resource = 78f4b797-fbb1-4078-974d-9471bdae7ada
* entry[Organization].fullUrl = "urn:uuid:78f4b797-fbb1-4078-974d-9471bdae7ada"
//  DocumentReference 0..*
* entry[DocumentReference].resource = fe3f13c1-f0ac-4b40-8024-f4386e290dfc
* entry[DocumentReference].fullUrl = "urn:uuid:DocumentReference/fe3f13c1-f0ac-4b40-8024-f4386e290dfc"

//From Resource profile: eCTD Substance General Information
Instance: b55b8d97-63c5-433c-95cf-812af58aa5fb
InstanceOf: EctdComposition32S10
Title: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD"
Usage: #inline

* status = #final
* type = $SectionTypes#32S10 "Substance General Information"

* date = "2022-11-18"
* author = Reference(78f4b797-fbb1-4078-974d-9471bdae7ada)
* title = "EctdComposition32S10 Title"
* section[SubstanceNomenclature]
  //* id = "02462ee3-80e6-4f73-ae2b-b42befaaf4d4"
  * title = "PQCMC Comp Section 32S11 Substance nomenclature"
  * code = $SectionTypes#32S11 "Substance Nomenclature"
  * entry = Reference(942fcdc9-8ab9-4f52-be6d-af549117d462)
* section[SubstanceStructure]
  //* id = "b51d35de-8a39-4710-84f4-4f7a413fa06b"
  * title = "PQCMC Comp Section 32S12 Substance Representational Structure"
  * code = $SectionTypes#32S12 "Substance Structure"
  * entry = Reference(4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1)

//From Resource Profile: Substance Nomenclature
Instance: 942fcdc9-8ab9-4f52-be6d-af549117d462
InstanceOf: DrugSubstanceNomenclature
Title: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile"
Description: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile"
Usage: #inline

* classification = $EMAIDMP#1 "Chemical"
* manufacturer = Reference(78f4b797-fbb1-4078-974d-9471bdae7ada)
* code.code = $UNII#DE08037SAB
* name[gsrs].name = "MAGNESIUM SULFATE, UNSPECIFIED FORM"
* name[comp].name = "ABC-25-MAGSUF"
* structure.technique = $SubstanceStructureTechnique#HPLC "HPLC"
* structure.technique.text = "Substance Nomenclature Technique text"
* structure.representation.type = $NCIT#C133910 "MOLFILE"
* relationship.substanceDefinitionReference = Reference(7cdbd2af-235c-40e2-934e-9e60598a4156)
* relationship.type = $NCIT##Salt "Salt to parent"

Instance: 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
InstanceOf: DrugSubstanceMolecularStructure
Title: "Drug Substance (Active Ingredient) Representational Structures. Profile on Drug Substance profile"
Description: "Drug Substance (Active Ingredient) Representational Structures. Profile on Drug Substance profile"
Usage: #inline

* classification = $EMAIDMP#1 "Chemical"
* manufacturer = Reference(78f4b797-fbb1-4078-974d-9471bdae7ada)
//Structure
* structure.molecularFormula = "C21H12"
* structure.technique = $SubstanceStructureTechnique#X-Ray "X-Ray"
* structure.technique.text = "1S/C21H12/c1-2-11-8-13-5-6-15-9-14-4-3-12-7-10(1)16-17(11)19(13)21(15)20(14)18(12)16/h1-6H,7-9H2"
* structure.representation.type = $NCIT#C54683 "InChI File (small molecule)"
* code.code = $UNII#TX2KR8MQM9 "TX2KR8MQM9"
* name[gsrs].name = "SUMANENE"

//From Resource Profile: SponsorOrganization
Instance: 78f4b797-fbb1-4078-974d-9471bdae7ada
InstanceOf: SponsorOrganization
Title: "A profile for the data elements required to identify the sponsor of the drug products or substances"
Description: "A profile for the data elements required to identify the sponsor of the drug products or substances"
Usage: #inline

* name = "ABC Sponsor organization" 
//Slicing of Identifier
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3517361d-cb89-4163-adeb-1c57f6cdb98d"
//PqAddress
* contact.address.line = "3452 Smithfield Avenue"
* contact.address.city = "Princeton"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

//From Resource Profile: Base64DocumentReference
Instance: fe3f13c1-f0ac-4b40-8024-f4386e290dfc
InstanceOf: Base64DocumentReference
Title: "A profile that represents the document or diagram in base64"
Description: "A profile that represents the document or diagram in base64"
Usage: #inline

* status = #current
* content.attachment.contentType = #text/plain
* content.attachment.data = "PHNhbXBsZT48L3NhbXBsZT4="
* content.attachment.title = "Base64DocumentReference Title"

//From Resource Profile: Polymorphic Form 
Instance: 7cdbd2af-235c-40e2-934e-9e60598a4156
InstanceOf: PolymorphicForm
Title: "Alternate structure present in the drug substance"
Description: "Alternate structure present in the drug substance"
Usage: #example

//Structure
* structure.technique = $SubstanceStructureTechnique#HPLC "HPLC"
* structure.technique.text = "Polymorphic Form Technique text"
* structure.representation.type.coding = $NCIT#C49039 "PDB"