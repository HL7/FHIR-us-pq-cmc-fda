

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
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)
* code.code = $UNII#DE08037SAB
* name[gsrs].name = "MAGNESIUM SULFATE, UNSPECIFIED FORM"
* name.type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"
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
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)
//Structure
* structure.molecularFormula = "C21H12"
* structure.technique = $SubstanceStructureTechnique#X-Ray "X-Ray"
* structure.technique.text = "1S/C21H12/c1-2-11-8-13-5-6-15-9-14-4-3-12-7-10(1)16-17(11)19(13)21(15)20(14)18(12)16/h1-6H,7-9H2"
* structure.representation.type = $NCIT#C54683 "InChI File (small molecule)"
* code.code = $UNII#TX2KR8MQM9 "TX2KR8MQM9"
* name[gsrs].name = "SUMANENE"
//* name.type.coding = PqcmcSubstanceNameType#141 "GSRS Preferred"


Instance: 78f4b797-fbb1-4078-974d-9471bdae7ada
InstanceOf: SponsorOrganization
Title: "A profile for the data elements required to identify the sponsor (YYZ) of the drug products or substances"
Description: "A profile for the data elements required to identify the sponsor (YYZ) of the drug products or substances"
Usage: #inline

* identifier[DUNSNumber].type.coding = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "765432222"
* identifier[FEINumber].type.coding = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "1987891"
* name = "XYZ Pharmaceuticals, Inc."
*  contact.address[+].text = "84 Main Street, Utopia, CA, 90021, USA"
*  contact.address[=].line = "84 Main Street"
*  contact.address[=].city = "Utopia"
*  contact.address.state = "CA"
*  contact.address[=].postalCode = "90021"
*  contact.address[=].country = "USA"


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

Instance: b0dd4b7a-6507-4df5-b2a1-f0d78ee6bba1  
InstanceOf: DrugSubstanceMolecularStructure
Usage: #example
Title: "Drug Substance Structures - ANHYDROUS DEXTROSE"
Description: "Example of Drug Substance (Active Ingredient) Representational Structures using ANHYDROUS DEXTROSE.  Includes both a SVG file and an image for diagram to illustrate the difference."
 
* classification = $EMAIDMP#1 "Chemical"
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)   
* structure.technique.text = "Rotating Crystal Method" 
* structure.representation.type.coding.code = $NCIT#C133910 "MOLFILE"
* structure.representation.representation = """
Actelion Java MolfileCreator 1.0

 12 11  0  0  1  0  0  0  0  0999 V2000
    5.1962   -0.5000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    6.0622   -0.0000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    4.3301   -0.0000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    4.3301    1.0000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    3.4641   -0.5000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    3.4641   -1.5000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    2.5981   -0.0000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    2.5981    1.0000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    1.7321   -0.5000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    1.7321   -1.5000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    0.8660   -0.0000   -0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000   -0.5000   -0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
  2  1  2  0  0  0  0
  3  1  1  0  0  0  0
  3  4  1  1  0  0  0
  5  3  1  0  0  0  0
  5  6  1  1  0  0  0
  7  5  1  0  0  0  0
  7  8  1  1  0  0  0
  9  7  1  0  0  0  0
  9 10  1  6  0  0  0
 11  9  1  0  0  0  0
 12 11  1  0  0  0  0
M  END
"""
* structure.representation.type.coding.code = $NCIT#C54684	"SMILES"
* structure.representation.representation = """C(=O)[C@@]([H])([C@]([H])([C@@]([H])([C@@]([H])(CO)O)O)O)O
"""
* structure.representation.type.coding.code = $NCIT#C54683	"InChI File (small molecule)"
* structure.representation.representation = """InChI=1S/C6H12O6/c7-1-3(9)5(11)6(12)4(10)2-8/h1,3-6,8-12H,2H2/t3-,4+,5+,6+/m0/s1
"""
* structure.representation.document = Reference(fe3f13c1-f0ac-4b40-8024-f4386e290dfc)  
* code.code.coding[unii] = $UNII#5SL0G7R0OK  "5SL0G7R0OK"
* name[sub].name = "ANHYDROUS DEXTROSE"
//* name[sub].type.coding = PqcmcSubstanceNameType#138 "Generic"
* name[sub].preferred  = true

//From Resource Profile: Polymorphic Form 
Instance: 7cdbd2af-235c-40e2-934e-9e60598a4156
InstanceOf: PolymorphicForm
Title: "Alternate structure present in the drug substance"
Description: "Alternate structure present in the drug substance"
Usage: #example

* classification = $EMAIDMP#1 "Chemical"
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)  
* molecularWeight.amount. = 180.16 $UCUM#u "u"
* structure.technique.text = "Laue Spot Method"
* structure.representation.type.coding = $NCIT#C133910 "MOLFILE"
* structure.representation.representation = """
Marvin  01132107542D          

 12 11  0  0  1  0            999 V2000
    5.5432   -4.4810    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    6.2567   -4.0667    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    6.9747   -4.4810    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    7.6881   -4.0667    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    8.4016   -4.4810    0.0000 C   0  0  2  0  0  0  0  0  0  0  0  0
    9.1150   -4.0667    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    9.8283   -4.4810    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    9.8283   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    9.1150   -3.2424    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    8.4016   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    7.6881   -3.2424    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    6.9747   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
  1  2  1  0  0  0  0
  2  3  1  0  0  0  0
  3  4  1  0  0  0  0
  4  5  1  0  0  0  0
  5  6  1  0  0  0  0
  6  7  1  0  0  0  0
  7  8  2  0  0  0  0
  6  9  1  6  0  0  0
  5 10  1  6  0  0  0
  4 11  1  6  0  0  0
  3 12  1  1  0  0  0
M  END
"""
* code.code.coding.system = $UNII
* code.code.coding.code = $UNII#02833ISA66  "02833ISA66"
* name[gsrs].name = "LEVOGLUCOSE"

Instance: 7e34e5c1-5e95-400f-8f76-332dd096e735
InstanceOf: MfgTestSiteOrganization 
Usage: #example 
Title: "Drug Manufacturing Site - Vandechemie"
Description: "Example of Manufacturing site using the MfgTestSiteOrganization profle - Vandechemie"
* identifier[DUNSNumber].type.coding.code = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "143265222"
* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
//* type = "Manufacturing Site Function"
* name = "Vandechemie"
*  contact.address[+].text = "Vandechemie, Ruzettelaan 39234, Blankenberge, 8370, Belgium"
*  contact.address[=].line = "Ruzettelaan 39234"
*  contact.address[=].city = " Blankenberge"
*  contact.address[=].postalCode = "8370"
*  contact.address[=].country = "Belgium"
