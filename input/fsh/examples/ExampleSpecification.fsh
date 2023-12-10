Instance: 69184148-20ca-4b23-bc74-fedcd1c9e796
InstanceOf: SponsorOrganization
* name = "test site A"
* contact.address.line[0] = "123 Broad Way"
* contact.address.state = "ny"
* contact.address.city = "new york"
* contact.address.country = "United States"
* contact.address.postalCode = "100000"
* contact.address.text = "test site A, 123 Broad Way, new york, ny, United States"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
Instance: d2ec5eaf-a1c9-4e69-85c5-9e2fe9cf7188
InstanceOf: RoutineDrugProduct
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-routine-drug-product"
* identifier.value = "Example2BeadDrug"
* combinedPharmaceuticalDoseForm = $NCIT#C25158 "CAPSULE"
* route = $NCIT#C38288 "ORAL"
* name[NonProprietary].part[Scientific][+].part = "OXAZEPAM"
* name[NonProprietary].part[Strength][+].part = "30mg"
* name[NonProprietary].part[Scientific][+].part = "PROPRANOLOL HYDROCHLORIDE"
* name[NonProprietary].part[Strength][+].part = "60mg"
* name[NonProprietary].productName = "OXAZEPAM 30mg, PROPRANOLOL HYDROCHLORIDE 60mg"
* name[NonProprietary].type.text = "Non-Proprietary"
Instance: 479d490a-1f23-4181-86ce-ef96e092766e
InstanceOf: QualitySpecification
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-quality-specification"
* extension[specificationType].valueCodeableConcept = $NCIT#C134021 "Drug Product"
* identifier.value = "ExampleSpecification"
* version = "1.0"
* title = "Quality Specification for Buffered Asprin"
* status = #active
* subjectReference = Reference(d2ec5eaf-a1c9-4e69-85c5-9e2fe9cf7188)
* date = 2022-12-08
* useContext.valueCodeableConcept = $NCIT#C134011 "Not Approved"
* goal[+]
  * id = "d7646256-3f95-45f2-9132-12df90f849ff"
  * description.text = "Average of 10 between 2-3 pH"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 2 $NCIT#C45997 "pH"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailRange.high = 3 $NCIT#C45997 "pH"
* goal[+]
  * id = "f7f57b4b-5fb5-4f81-bfcb-ccb9bd1428e5"
  * description.text = "Maxima only at the same wavelengths compared to reference standard"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "043d11fb-553a-4261-808c-4adea9dc7b68"
  * description.text = "<= 0.5 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "7f66cb95-ee8b-4865-aa70-be7c6db92c47"
  * description.text = "Color of solution is clear"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "37dadbf7-08de-4a7e-b3e1-af75dc18e170"
  * description.text = "<= 0.05 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.05 $NCIT#C48570 "percent"
* goal[+]
  * id = "df608289-5fb4-4422-9a63-e25cbfd89362"
  * description.text = "No Particulate Matter detected"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "2bb381eb-3a04-4cc8-9a42-8246c4d1cd7d"
  * description.text = "<= 0.014 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.014 $NCIT#C48570 "percent"
* goal[+]
  * id = "f39ad289-b434-4f3b-9481-90c09783285a"
  * description.text = "<= 0.04 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.04 $NCIT#C48570 "percent"
* goal[+]
  * id = "60adbbde-e80f-4693-a52b-ba746d75a70e"
  * description.text = "<= 0.001 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.001 $NCIT#C48570 "percent"
* goal[+]
  * id = "d1c7689f-e577-4de6-a360-3c5b92d26a6b"
  * description.text = "Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "1a25489e-8dcb-459c-9ba2-43a0bed7d4e4"
  * description.text = "Ethanol < 0.2%"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "Ethanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.2 $NCIT#C48570 "percent"
* goal[+]
  * id = "446d0b3a-04e4-40f0-80a3-e97f7be8fd2d"
  * description.text = "Ethyl Ether < 0.1%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * measure.text = "Ethyl Ether"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.1 $NCIT#C48570 "percent"
* goal[+]
  * id = "1ca2b921-67c6-45d6-9fb8-0c1e7156a3f3"
  * description.text = "1—propanol < 0.15%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * measure.text = "1—propanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.15 $NCIT#C48570 "percent"
* goal[+]
  * id = "d387623d-5a6f-444e-8751-41c838c06272"
  * description.text = "Total < 0.5%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * measure.text = "Total Residual Solvents"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "606819bd-25b1-4345-88d1-7303ac3248ec"
  * description.text = "99.5 - 100.5 %"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 99.5 $NCIT#C48570 "percent"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 100.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "18da2d28-a4f8-49b2-84c5-6e108bec0962"
  * description.text = "n=6"
  * addresses[+] = $NCIT#Release
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "1907e505-b638-46dc-8a3e-7ac719bdf0ee"
  * description.text = "Each unit is NLT Q + 5%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 85 $NCIT#C48570 "percent"
* goal[+]
  * id = "da15f36d-23ef-40c4-9f10-cc18d4e473fb"
  * description.text = "n=6"
  * addresses[+] = $NCIT#Release
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "cc50a7a5-e562-491d-b160-87962ff82f42"
  * description.text = "Average of 12 units (S1 + S2) is equal to or greater than Q and no unit is less than Q – 15%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * measure.text = "Average of 12 units"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 80 $NCIT#C48570 "percent"
  * target[+]
    * measure.text = "unit"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 65 $NCIT#C48570 "percent"
* goal[+]
  * id = "84c22030-2b82-4cf5-ae8a-e4800bee250d"
  * description.text = "Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q – 15%, no unit is less than Q – 25%"
  * addresses[+] = $NCIT#Release
  * target[+]
    * measure.text = "Average of 24 units"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 80 $NCIT#C48570 "percent"
  * target[+]
    * measure.text = "units less than Q – 15%"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 2 $NCIT#C92953  "amb a 1 units"
  * target[+]
    * measure.text = "units less than Q – 25%"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0 $NCIT#C92953  "amb a 1 units"
* goal[+]
  * id = "0664a740-2c41-4ce1-9009-b5dcb3d68117"
  * description.text = "n=12"
  * addresses[+] = $NCIT#Release
  * target[+]
    * detailInteger = 12
* action[+]
  * id = "fdf1c28a-8b79-4b74-9d82-ad7537f30d17"
  * extension[testOrder].valueDecimal = 1.1
  * prefix = "Single Stage"
  * title = "Spectrophotometry Identification"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Spectrophotometry"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "USP <197>"
  * relatedAction[+].targetId = "0cae8a46-f954-442b-978f-f9fbe3ebe940"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * goalId[+] = "d7646256-3f95-45f2-9132-12df90f849ff"
* action[+]
  * id = "0cae8a46-f954-442b-978f-f9fbe3ebe940"
  * extension[testOrder].valueDecimal = 1.2
  * linkId = "fdf1c28a-8b79-4b74-9d82-ad7537f30d17"
  * prefix = "Single Stage"
  * title = "Identity - Ferric Chloride"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "HPLC"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-01"
  * relatedAction[+].targetId = "fdf1c28a-8b79-4b74-9d82-ad7537f30d17"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * goalId[+] = "f7f57b4b-5fb5-4f81-bfcb-ccb9bd1428e5"
* action[+]
  * id = "0180462b-4706-4a0e-8587-420b0f2fad03"
  * extension[testOrder].valueDecimal = 2
  * prefix = "Single Stage"
  * title = "Loss on Drying"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC12 "Loss on Drying"
  * documentation.type = #documentation
  * documentation.label = "USP <731>"
  * goalId[+] = "043d11fb-553a-4261-808c-4adea9dc7b68"
* action[+]
  * id = "13fc3673-d345-4c25-b67c-74852bdd0f99"
  * extension[testOrder].valueDecimal = 3
  * prefix = "Single Stage"
  * title = "Readily Carbonizable Sub"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC6 "Organoleptic"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC22 "Color of solution"
  * documentation.type = #documentation
  * documentation.label = "USP <271>"
  * goalId[+] = "7f66cb95-ee8b-4865-aa70-be7c6db92c47"
* action[+]
  * id = "a27e1a49-40f1-4a31-a149-6c5f013f265c"
  * extension[testOrder].valueDecimal = 4
  * prefix = "Single Stage"
  * title = "Residue on ignition (Ash)"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC38 "Residue on Ignition"
  * documentation.type = #documentation
  * documentation.label = "USP <281>"
  * goalId[+] = "37dadbf7-08de-4a7e-b3e1-af75dc18e170"
* action[+]
  * id = "472f5b8a-1e2d-48c9-972e-97971e79e97f"
  * extension[testOrder].valueDecimal = 5
  * prefix = "Single Stage"
  * title = "Substances insoluble in sodium carbonate TS"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC11 "Foreign and Particulate Matter"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-02"
  * goalId[+] = "df608289-5fb4-4422-9a63-e25cbfd89362"
* action[+]
  * id = "ca630dda-bf9f-487f-8057-cd2c8e37f640"
  * extension[testOrder].valueDecimal = 6
  * prefix = "Single Stage"
  * title = "Impurities - Chloride (Cl)"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "FTIR"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC53 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC92 "Specified identified impurity"
  * documentation.type = #documentation
  * documentation.label = "USP <221>"
  * goalId[+] = "2bb381eb-3a04-4cc8-9a42-8246c4d1cd7d"
* action[+]
  * id = "849d0139-96c8-4910-a313-3c690fb961fe"
  * extension[testOrder].valueDecimal = 7
  * prefix = "Single Stage"
  * title = "Impurities - Sulfate (SO4)"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "FTIR"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC53 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC92 "Specified identified impurity"
  * documentation.type = #documentation
  * documentation.label = "USP <221>"
  * goalId[+] = "f39ad289-b434-4f3b-9481-90c09783285a"
* action[+]
  * id = "b36c297a-ae4e-432d-a41c-ac90c05eca91"
  * extension[testOrder].valueDecimal = 8
  * prefix = "Single Stage"
  * title = "Elemental Impurities - Limits"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "UV"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC53 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC98 "elemental impurity"
  * documentation.type = #documentation
  * documentation.label = "USP <231>"
  * goalId[+] = "60adbbde-e80f-4693-a52b-ba746d75a70e"
* action[+]
  * id = "7a7975fb-6ddb-421f-b85a-437bce2fd03f"
  * extension[testOrder].valueDecimal = 9
  * prefix = "Single Stage"
  * title = "Limit of Free Salicylic Acid"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Titration"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC53 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC100 "Impurities/Degradation Products/Related Substances"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-03"
  * goalId[+] = "d1c7689f-e577-4de6-a360-3c5b92d26a6b"
* action[+]
  * id = "aaf137e5-0b2d-4f1e-a486-4fedb4613393"
  * extension[testOrder].valueDecimal = 10
  * prefix = "Single Stage"
  * title = "Organic Volatile Impurities"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC53 "Impurity"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC101 "residual solvent"
  * documentation.type = #documentation
  * documentation.label = "USP <467>"
  * goalId[+] = "1a25489e-8dcb-459c-9ba2-43a0bed7d4e4"
  * goalId[+] = "446d0b3a-04e4-40f0-80a3-e97f7be8fd2d"
  * goalId[+] = "1ca2b921-67c6-45d6-9fb8-0c1e7156a3f3"
  * goalId[+] = "d387623d-5a6f-444e-8751-41c838c06272"
* action[+]
  * id = "44f2e227-5760-4aff-b036-e15d370e3742"
  * extension[testOrder].valueDecimal = 11
  * prefix = "Single Stage"
  * title = "Assay Dry Basis"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC1 "Assay"
  * reason[+].extension[categoryLevel].valueInteger = 2
  * reason[=].coding = $TestCats#SUBC2 "active ingredient"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-04"
  * goalId[+] = "606819bd-25b1-4345-88d1-7303ac3248ec"
* action[+]
  * id = "4b3b0233-3f1d-4d58-be90-5047549bfdc3"
  * extension[testOrder].valueDecimal = 12
  * title = "Dissolution - 30 minute"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $NCIT#TC9 "Dissolution"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-05"
  * action[+]
    * extension[stageOrder].valueDecimal = 1
    * linkId = "4b3b0233-3f1d-4d58-be90-5047549bfdc3"
    * prefix = "Stage 1"
    * goalId[+] = "18da2d28-a4f8-49b2-84c5-6e108bec0962"
    * goalId[+] = "1907e505-b638-46dc-8a3e-7ac719bdf0ee"
  * action[+]
    * extension[stageOrder].valueDecimal = 2
    * linkId = "4b3b0233-3f1d-4d58-be90-5047549bfdc3"
    * prefix = "Stage 2"
    * goalId[+] = "da15f36d-23ef-40c4-9f10-cc18d4e473fb"
    * goalId[+] = "cc50a7a5-e562-491d-b160-87962ff82f42"
  * action[+]
    * extension[stageOrder].valueDecimal = 3
    * linkId = "4b3b0233-3f1d-4d58-be90-5047549bfdc3"
    * prefix = "Stage 3"
    * goalId[+] = "84c22030-2b82-4cf5-ae8a-e4800bee250d"
    * goalId[+] = "0664a740-2c41-4ce1-9009-b5dcb3d68117"
Instance: 512fde75-4e96-4ac3-9b8f-bb7d5ae2f6bb
InstanceOf: EctdCompositionSP4151
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/ectd-composition-sp4151"
* identifier.value = "ExampleSpecification"
* status = #final
* type.coding = $SectionTypes#SP4151 "Quality Specification"
* author = Reference(69184148-20ca-4b23-bc74-fedcd1c9e796)
* date = 2023-12-05T03:21:48.064Z
* title = """Quality Specification for Buffered Asprin"""
* section[DrugProduct]
  * code = $SectionTypes#32P51 "Product Specification"
  * title = "32P51"
  * entry = Reference(479d490a-1f23-4181-86ce-ef96e092766e)
Instance: bf6d4b82-baa2-45b4-bab3-874da526af22
InstanceOf: CMCeCTDDocumentSP4151
* meta.profile.extension[version].valueString = "0.1.16"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:e8de04e7-5996-4211-94e5-bd66fc6f9435"
* timestamp = 2023-12-05T03:21:48.064Z
* entry[0].resource = 512fde75-4e96-4ac3-9b8f-bb7d5ae2f6bb
* entry[=].fullUrl = "urn:uuid:512fde75-4e96-4ac3-9b8f-bb7d5ae2f6bb"
* entry[+].resource = 479d490a-1f23-4181-86ce-ef96e092766e
* entry[=].fullUrl = "urn:uuid:479d490a-1f23-4181-86ce-ef96e092766e"
* entry[+].resource = d2ec5eaf-a1c9-4e69-85c5-9e2fe9cf7188
* entry[=].fullUrl = "urn:uuid:d2ec5eaf-a1c9-4e69-85c5-9e2fe9cf7188"
* entry[+].resource = 69184148-20ca-4b23-bc74-fedcd1c9e796
* entry[=].fullUrl = "urn:uuid:69184148-20ca-4b23-bc74-fedcd1c9e796"
