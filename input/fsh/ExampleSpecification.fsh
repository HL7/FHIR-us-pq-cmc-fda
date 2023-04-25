Instance: 0baed83c-495e-4129-8e26-537a0ede5e15
InstanceOf: QualitySpecification
Title: "A quality specification is for an Excipient or Raw material"
Description: "Indtifiying information for an Excipient or Raw material including source information"
Usage: #example

* extension[pq-specification-status-extension].valueCodeableConcept = $NCIT#C134011 "Not Approved"
* extension[pq-specification-type-extension].valueCodeableConcept = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"

* id = "0baed83c-495e-4129-8e26-537a0ede5e15"
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
* goal.target.detailQuantity.code = $NCIT#C68742 "[CFU]"

* action
  * .extension[testOrder].valueDecimal = 1.0
* action.prefix = "Single Stage"
* action.title = "Microbial Limits"
* action.code.coding[testCategory] = $PQTC#TC13 "Microbial Limits"
// action[=].code.coding[testSubCat] = "Test Sub-category"
* action.code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
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
* goal.target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal.target.detailRange.low.value = 20
* goal.target.detailRange.low.unit = "pH"
* goal.target.detailRange.low.code = $NCIT#C45997 "[pH]"
* goal.target.detailRange.high
* goal.target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal.target.detailRange.high.value = 3.0
* goal.target.detailRange.high.unit = "pH"
* goal.target.detailRange.high.code = $NCIT#C45997 "[pH]"
* goal.target.detailIntegergoal[19].
* goal.target.detailRange.high.value = 10
* action
  * .extension[testOrder].valueDecimal = 1.0
* action.prefix = "Single Stage"
* action.title = "pH Average"
* action.code.coding[testCategory] = $PQTC#TC23 "pH"
// action.code.coding[testSubCat] = "Test Sub-category"
* action.code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action.code.text = "pH method - ipid50"
* action.documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/pHall.pdf"
* action.goalId = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"

//From Resource Profile: Drug Product. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-pqcmc-drug-produc.html
Instance: 8e854cea-f491-471f-b5dc-910f20135658
InstanceOf: RoutineDrugProduct
Title: "drug product for specification "
Description: "Includes the identifier of the drug product"
Usage: #example


* id = "8e854cea-f491-471f-b5dc-910f20135658"
* combinedPharmaceuticalDoseForm = $NCIT#C42897 "TABLET, COATED"
* route = $NCIT#C38288 "ORAL"
* name[NonProprietary].productName = "Buffered Asprin"
* name[NonProprietary].type.text = "Non-Proprietary"
* name[NonProprietary].part.part = "Asprin"
* name[NonProprietary].part.type = $NamePartType#SCI "scientific name"

Instance: 6EB934CF-94AA-4646-9346-93FC9A7A4558
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug product"
Description: "A quality specification is for a Drug Product"
Usage: #example

* extension[pq-specification-status-extension].valueCodeableConcept = $NCIT#C134011 "Not Approved"
* extension[pq-specification-type-extension].valueCodeableConcept = $NCIT#C134022 "Drug Substance"


* id = "6EB934CF-94AA-4646-9346-93FC9A7A4558"
* version = "1.0"
* title = "Quality Specification for Buffer Asprin"
* status = #active
//Reference an Drug Product
* subjectReference = Reference(8e854cea-f491-471f-b5dc-910f20135658)
* date = "2022-12-08"
* useContext.valueCodeableConcept.coding = $NCIT#C134011 "Not Approved"
* goal[0]
* goal[0].id = "85CFC0BE-8739-4100-B2C5-ABCDCB914CAA"
* goal[0].description.text = "Maxima only at the same wavelengths compared to reference standard"
* goal[0].addresses = $NCIT#C134029 "Release"
* goal[0].addresses = $NCIT#C134030 "Stability"
* goal[0].target.detailString.extension[interpretationCode].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* goal[0].target.detailString.value = "Conforms"

* goal[1]
* goal[1].id = "CB3A6F6D-4C7B-4831-886B-A88C13E1415D"
* goal[1].description.text = "&lt;= 0.5 %"
* goal[1].addresses = $NCIT#C134029 "Release"
* goal[1].addresses = $NCIT#C134030 "Stability"
* goal[1].target.detailQuantity
* goal[1].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[1].target.detailQuantity.value = 5
* goal[1].target.detailQuantity.unit = "%"
* goal[1].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[2]
* goal[2].id = "7787D376-3DC1-423A-B0C6-0F21ADD5DEE7"
* goal[2].description.text = "Color of solution is clear"
* goal[2].addresses = $NCIT#C134029 "Release"
* goal[2].addresses = $NCIT#C134030 "Stability"
* goal[2].target.detailString.extension[interpretationCode].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* goal[2].target.detailString.value = "Conforms"

* goal[3]
* goal[3].id = "0A323F6A-52D3-4B9F-9421-E4A7B763AE66"
* goal[3].description.text = "&lt;= 0.05 %"
* goal[3].addresses = $NCIT#C134029 "Release"
* goal[3].addresses = $NCIT#C134030 "Stability"
* goal[3].target.detailQuantity
* goal[3].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[3].target.detailQuantity.value = 0.05
* goal[3].target.detailQuantity.unit = "%"
* goal[3].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[4]
* goal[4].id = "238D5E12-30A1-469C-B795-E9C6E247422E"
* goal[4].description.text = "No Particulate Matter detected"
* goal[4].addresses = $NCIT#C134029 "Release"
* goal[4].addresses = $NCIT#C134030 "Stability"
* goal[4].target.detailString.extension[interpretationCode].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* goal[4].target.detailString.value = "pass"

* goal[5]
* goal[5].id = "0504A234-01E9-4D9D-B0F8-0044A6EEB30E"
* goal[5].description.text = "&lt;= 0.014 %"
* goal[5].addresses = $NCIT#C134029 "Release"
* goal[5].addresses = $NCIT#C134030 "Stability"
* goal[5].target.detailQuantity
* goal[5].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[5].target.detailQuantity.value = 0.014
* goal[5].target.detailQuantity.unit = "%"
* goal[5].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[6]
* goal[6].id = "D59B0728-B53A-4C52-8870-7831602EB5EE"
* goal[6].description.text = "&lt;= 0.04 %"
* goal[6].addresses = $NCIT#C134029 "Release"
* goal[6].addresses = $NCIT#C134030 "Stability"
* goal[6].target.detailQuantity
* goal[6].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[6].target.detailQuantity.value = 0.04
* goal[6].target.detailQuantity.unit = "%"
* goal[6].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[7]
* goal[7].id = "2B6C7C8A-EA23-4B84-9BEA-1E1FACBD5673"
* goal[7].description.text = "&lt;= 0.001 %"
* goal[7].addresses = $NCIT#C134029 "Release"
* goal[7].addresses = $NCIT#C134030 "Stability"
* goal[7].target.detailQuantity
* goal[7].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[7].target.detailQuantity.value = 0.001
* goal[7].target.detailQuantity.unit = "%"
* goal[7].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[8]
* goal[8].id = "EC7DCBA0-F8D0-41DD-AC1C-DB0A269D5A32"
* goal[8].description.text = "Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution"
* goal[8].addresses = $NCIT#C134029 "Release"
* goal[8].addresses = $NCIT#C134030 "Stability"
* goal[8].target.detailString.extension[interpretationCode].valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* goal[8].target.detailString.value = "pass"

* goal[9]
* goal[9].id = "37D27851-4603-42CF-8289-459A5B9C79EF"
* goal[9].description.text = "Ethanol &lt;0.2%"
* goal[9].addresses = $NCIT#C134029 "Release"
* goal[9].addresses = $NCIT#C134030 "Stability"
* goal[9].target.measure.text = "Ethanol"
* goal[9].target.detailQuantity
* goal[9].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[9].target.detailQuantity.value = 0.2
* goal[9].target.detailQuantity.unit = "%"
* goal[9].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[10]
* goal[10].id = "79B136E3-0396-4441-8146-C4ACFD2CA435"
* goal[10].description.text = "Ethyl Ether &lt;0.1%"
* goal[10].addresses = $NCIT#C134029 "Release"
* goal[10].target.measure.text = "Ethyl Ether"
* goal[10].target.detailQuantity
* goal[10].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[10].target.detailQuantity.value = 0.1
* goal[10].target.detailQuantity.unit = "%"
* goal[10].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[11]
* goal[11].id = "C11B6C87-1A59-435E-87F3-609A9474534F"
* goal[11].description.text = "1—propanol &lt;0.15%"
* goal[11].addresses = $NCIT#C134029 "Release"
* goal[11].target.measure.text = "1—propanol"
* goal[11].target.detailQuantity
* goal[11].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[11].target.detailQuantity.value = 0.15
* goal[11].target.detailQuantity.unit = "%"
* goal[11].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[12]
* goal[12].id = "A886F079-B6DB-41AB-ABD1-5E8AEE0B07A6"
* goal[12].description.text = "99.5 - 100.5 %"
* goal[12].addresses = $NCIT#C134029 "Release"
* goal[12].addresses = $NCIT#C134030 "Stability"
* goal[12].target.detailRange.low
* goal[12].target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal[12].target.detailRange.low.value = 99.5
* goal[12].target.detailRange.low.unit = "%"
* goal[12].target.detailRange.low.code =  $NCIT#C48570 "%"
* goal[12].target.detailRange.high
* goal[12].target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[12].target.detailRange.high.value = 100.5
* goal[12].target.detailRange.high.unit = "%"
* goal[12].target.detailRange.high.code =  $NCIT#C48570 "%"

* goal[13]
* goal[13].id = "1C85A597-61EB-4549-BADF-DE84EAE3BA56"
* goal[13].description.text = "Each unit is NLT Q + 5%"
* goal[13].addresses = $NCIT#C134029 "Release"
* goal[13].target.detailQuantity
* goal[13].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal[13].target.detailQuantity.value = 85
* goal[13].target.detailQuantity.unit = "%"
* goal[13].target.detailQuantity.code =  $NCIT#C48570 "%"

* goal[14]
* goal[14].id = "2D313CA8-7C74-4862-8406-17E4269FB524"
* goal[14].description.text = "n=6"
* goal[14].addresses = $NCIT#C134029 "Release"
* goal[14].target.detailInteger.value = 6

* goal[15]
* goal[15].id = "6DB52CAE-0D93-49F0-966D-B73FD77E20E3"
* goal[15].description.text = "Average of 12 units (S1 + S2) is equal to or greater than Q and no unit is less than Q – 15%"
* goal[15].addresses = $NCIT#C134029 "Release"
* goal[15].target[0].measure.text = "Average of 12 units"
* goal[15].target[0].detailQuantity
* goal[15].target[0].detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal[15].target[0].detailQuantity.value = 0.80
* goal[15].target[0].detailQuantity.unit = "%"
* goal[15].target[0].detailQuantity.code =  $NCIT#C48570 "%"
* goal[15].target[+].measure.text = "unit"
* goal[15].target[=].detailQuantity
* goal[15].target[=].detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[15].target[=].detailQuantity.value = 0.65
* goal[15].target[=].detailQuantity.unit = "%"
* goal[15].target[=].detailQuantity.code =  $NCIT#C48570 "%"

* goal[16]
* goal[16].id = "26E89541-D1DF-402E-AC82-6E370D7C4C69"
* goal[16].description.text = "Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q – 15%, no unit is less than Q – 25%"
* goal[16].addresses = $NCIT#C134029 "Release"
* goal[16].target[0].measure.text = "Average of 24 units"
* goal[16].target[0].detailQuantity
* goal[16].target[0].detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal[16].target[0].detailQuantity.value = 0.80
* goal[16].target[0].detailQuantity.unit = "%"
* goal[16].target[0].detailQuantity.code =  $NCIT#C48570 "%"
* goal[16].target[+].measure.text = "units less than Q – 15%"
* goal[16].target[=].detailQuantity
* goal[16].target[=].detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal[16].target[=].detailQuantity.value = 2
* goal[16].target[=].detailQuantity.unit = "unit"
* goal[16].target[=].detailQuantity.code =  $NCIT#C92953 "[Amb'a'1'U]"
* goal[16].target[+].measure.text = "units less than Q – 25%"
* goal[16].target[=].detailQuantity
* goal[16].target[=].detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[16].target[=].detailQuantity.value = 0
* goal[16].target[=].detailQuantity.unit = "unit"
* goal[16].target[=].detailQuantity.code =  $NCIT#C92953 "[Amb'a'1'U]"

* goal[17]
* goal[17].id = "A2CE10F0-B511-44D5-9A9C-6D08A9EE9C66"
* goal[17].description.text = "n=12"
* goal[17].addresses = $NCIT#C134029 "Release"
* goal[17].target.detailInteger.value = 12

* goal[18]
* goal[18].id = "F331D882-8533-4CC9-A73D-1627B1F10FA5"
* goal[18].description.text = "Averge of 10 between 2-3 pH"
* goal[18].addresses = $NCIT#C134029 "Release" 
* goal[18].addresses = $NCIT#C134030 "Stability"
* goal[18].target.detailRange.low
* goal[18].target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[18].target.detailRange.low.value = 2
* goal[18].target.detailRange.low.unit = "pH"
* goal[18].target.detailRange.low.code = $NCIT#C45997 "[pH]"
* goal[18].target.detailRange.high
* goal[18].target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[18].target.detailRange.high.value = 3
* goal[18].target.detailRange.high.unit = "pH"
* goal[18].target.detailRange.high.code = $NCIT#C45997 "[pH]"

* goal[19]
* goal[19].id = "4B42D3D0-CC58-4986-A7C5-24B885D05D49"
* goal[19].description.text = "Total &lt;0.5%"
* goal[19].addresses = $NCIT#C134029 "Release"
* goal[19].target.measure.text = "Total Residual Solvents"
* goal[19].target.detailQuantity
* goal[19].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
* goal[19].target.detailQuantity.value = 0.5
* goal[19].target.detailQuantity.unit = "%"
* goal[19].target.detailQuantity.code =  $NCIT#C48570 "%"

* action[0] 
  * .extension[testOrder].valueDecimal = 1.1
* action[0].prefix = "Single Stage"
* action[0].title = "Identity"
* action[0].code.coding[testCategory] = $PQTC#TC7 "Identification"
* action[0].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[0].code.text = "USP &lt;197&gt; Spectrophotometric Identification Tests"
* action[0].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity.pdf"
* action[0].goalId = "F331D882-8533-4CC9-A73D-1627B1F10FA5"
* action[0].relatedAction.targetId = "85CFC0BE-8739-4100-B2C5-ABCDCB914CAA"
* action[0].relatedAction.relationship = #concurrent
* action[0].selectionBehavior = #exactly-one

* action[1]
  * .extension[testOrder].valueDecimal = 1.2
* action[1].prefix = "Single Stage"
* action[1].title = "Identity"
* action[1].code.coding[testCategory] = $PQTC#TC7 "Identification"
* action[1].code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action[1].code.text = "Ferric Chloride"
* action[1].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity-FC.pdf"
* action[1].goalId = "85CFC0BE-8739-4100-B2C5-ABCDCB914CAA"
* action[1].relatedAction.targetId = "F331D882-8533-4CC9-A73D-1627B1F10FA5"
* action[1].relatedAction.relationship = #concurrent
* action[1].selectionBehavior = #exactly-one

* action[2]
  * .extension[testOrder].valueDecimal = 2.0
* action[2].prefix = "Single Stage"
* action[2].title = "Loss on Drying"
* action[2].code.coding[testCategory] = $PQTC#TC12 "Loss on Drying"
* action[2].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[2].code.text = "USP &lt;731&gt; Loss on Drying"
* action[2].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/loss-on-drying.pdf"
* action[2].goalId = "CB3A6F6D-4C7B-4831-886B-A88C13E1415D"

* action[3]
  * .extension[testOrder].valueDecimal = 3.0
* action[3].prefix = "Single Stage"
* action[3].title = "Readily Carbonizable Sub"
* action[3].code.coding[testCategory] = $PQTC#TC6 "Organoleptic"
* action[3].code.coding[testSubCat] = $PQTC#SBTC22 "Color of solution"
* action[3].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[3].code.text = "USP &lt;271&gt; Readily Carbonizable Substances Test"
* action[3].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/readily-carbonizable-substances.pdf"
* action[3].goalId = "7787D376-3DC1-423A-B0C6-0F21ADD5DEE7"

* action[4]
  * .extension[testOrder].valueDecimal = 4.0
* action[=].prefix = "Single Stage"
* action[=].title = "Residue on ignition (Ash)"
* action[=].code.coding[testCategory] = $PQTC#TC38 "Residue on Ignition"
* action[=].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[=].code.text = "USP &lt;281&gt; Residue on Igition"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residue-on-ignition.pdf"
* action[=].goalId = "0A323F6A-52D3-4B9F-9421-E4A7B763AE66"

* action[5]
  * .extension[testOrder].valueDecimal = 5.0
* action[=].prefix = "Single Stage"
* action[=].title = "Insoluble Matter"
* action[=].code.coding[testCategory] = $PQTC#TC11 "Foreign and Particulate Matter"
* action[=].code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action[=].code.text = "Substances insoluble in sodium carbonate TS"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/insoluble-matter.pdf"
* action[=].goalId = "238D5E12-30A1-469C-B795-E9C6E247422E"

* action[6]
  * .extension[testOrder].valueDecimal = 6.0
* action[=].prefix = "Single Stage"
* action[=].title = "Impurities - Chloride (Cl)"
* action[=].code.coding[testCategory] = $PQTC#TC53 "Impurity"
* action[=].code.coding[testSubCat] = $PQTC#SBTC92 "Specified identified impurity"
* action[=].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[=].code.text = "USP &lt;221&gt; Chloride and Sulfate"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-chloride.pdf"
* action[=].goalId = "0504A234-01E9-4D9D-B0F8-0044A6EEB30E"

* action[7]
  * .extension[testOrder].valueDecimal = 7.0
* action[=].prefix = "Single Stage"
* action[=].title = "Impurities - Sulfate (SO4)"
* action[=].code.coding[testCategory] = $PQTC#TC53 "Impurity"
* action[=].code.coding[testSubCat] = $PQTC#SBTC92 "Specified identified impurity"
* action[=].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[=].code.text = "USP &lt;221&gt; Chloride and Sulfate"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-sulfate.pdf"
* action[=].goalId = "D59B0728-B53A-4C52-8870-7831602EB5EE"

* action[8]
  * .extension[testOrder].valueDecimal = 8.0
* action[=].prefix = "Single Stage"
* action[=].title = "Elemental Impurities - Limits"
* action[=].code.coding[testCategory] = $PQTC#TC53 "Impurity"
* action[=].code.coding[testSubCat] = $PQTC#SBTC98 "elemental impurity"
* action[=].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[=].code.text = "USP &lt;231&gt; Heavy Metals"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/elemental-impurities-limits.pdf"
* action[=].goalId = "2B6C7C8A-EA23-4B84-9BEA-1E1FACBD5673"

* action[9]
  * .extension[testOrder].valueDecimal = 9.0
* action[=].prefix = "Single Stage"
* action[=].title = "Limit of Free Salicylic Acid"
* action[=].code.coding[testCategory] = $PQTC#TC53 "Impurity"
* action[=].code.coding[testSubCat] = $PQTC#SBTC100 "Impurities/Degradation Products/Related Substances"
* action[=].code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action[=].code.text = "Limit of free salicylic acid"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/limit-of-free-salicylic-acid.pdf"
* action[=].goalId = "EC7DCBA0-F8D0-41DD-AC1C-DB0A269D5A32"

* action[10]
  * .extension[testOrder].valueDecimal = 10.0
* action[=].prefix = "Single Stage"
* action[=].title = "Residual Solvents"
* action[=].code.coding[testCategory] = $PQTC#TC53 "Impurity"
* action[=].code.coding[testSubCat] = $PQTC#SBTC101 "residual solvent"
* action[=].code.coding[methodOrigin] = $NCIT#C96102 "Compendial"
* action[=].code.text = "USP &lt;467&gt; Organic Volatile Impurities"
* action[=].documentation.label
 = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residual-solvents.pdf"
* action[=].goalId = "37D27851-4603-42CF-8289-459A5B9C79EF"
* action[=].goalId = "79B136E3-0396-4441-8146-C4ACFD2CA435"
* action[=].goalId = "C11B6C87-1A59-435E-87F3-609A9474534F"
* action[=].goalId = "4B42D3D0-CC58-4986-A7C5-24B885D05D49"

* action[11]
  * .extension[testOrder].valueDecimal = 11.0
* action[=].prefix = "Single Stage"
* action[=].title = "Assay"
* action[=].code.coding[testCategory] = $PQTC#TC1 "Assay"
* action[=].code.coding[testSubCat] = $PQTC#SBTC2 "active ingredient"
* action[=].code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action[=].code.text = "Assay Dry Basis"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/assay.pdf"
* action[=].goalId = "A886F079-B6DB-41AB-ABD1-5E8AEE0B07A6"

* action[12]
  * .extension[testOrder].valueDecimal = 13.1
* action[=].prefix = "Stage 1"
* action[=].title = "Dissolution"
* action[=].description = "Single Point: Q = 80% (30 minutes)"
* action[=].code.coding[testCategory] = $PQTC#TC9 "Dissolution"
* action[=].code.coding[methodOrigin] = $NCIT#C96103 "Proprietary"
* action[=].code.text = "Dissolution - 30 minute"
* action[=].documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/dissolution.pdf"
* action[=].goalId = "2D313CA8-7C74-4862-8406-17E4269FB524"
* action[=].goalId = "1C85A597-61EB-4549-BADF-DE84EAE3BA56"
* action[=].relatedAction.targetId = "Disso-stage2"
* action[=].relatedAction.relationship = #after-end

* action[13]
  * .extension[testOrder].valueDecimal = 13.2
* action[=].linkId = "Disso-stage2"
* action[=].prefix = "Stage 2"
* action[=].title = "Dissolution"
* action[=].goalId = "2D313CA8-7C74-4862-8406-17E4269FB524"
* action[=].goalId = "6DB52CAE-0D93-49F0-966D-B73FD77E20E3"
* action[=].relatedAction.targetId = "Disso-stage3"
* action[=].relatedAction.relationship = #after-end

* action[14]
  * .extension[testOrder].valueDecimal = 13.3
* action[=].linkId = "Disso-stage3"
* action[=].prefix = "Stage 3"
* action[=].title = "Dissolution"
* action[=].goalId = "26E89541-D1DF-402E-AC82-6E370D7C4C69"
* action[=].goalId = "A2CE10F0-B511-44D5-9A9C-6D08A9EE9C66"

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
* name.name = "HUMAN SERUM ALBUMIN, RECOMBINANT RICE-DERIVED"  
* sourceMaterial.type = $NCIT#C14225 "Human"
* sourceMaterial.genus.text = "Homo"
* sourceMaterial.species.text = "Homo sapiens"
* sourceMaterial.part.text = "male AB plasma"
* sourceMaterial.countryOfOrigin.coding = $GENC#USA "UNITED STATES"

//From Resource Profile: Routine Drug Substance. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-pqcmc-routine-drug-substance.html
Instance: f5de5600-7e54-4d2d-b442-7b3366531231
InstanceOf: RoutineSubstanceDefinition
Title: "Example RoutineSubstanceDefinition"
Description: "Provides sufficient information to identify a drug substance"
Usage: #example

* id = "f5de5600-7e54-4d2d-b442-7b3366531231"
* classification = $EMAIDMP#17 "Mixture"
* grade.coding =  $NCIT#C134006 "USPNF"
//Reference MfgTestSiteOrganization
* manufacturer = Reference(029f1cb8-2dc7-4971-8309-55e6dd129918)
* code.code = $UNII#RT9P9S09QI "RT9P9S09QI"
* name.name = "PROPYLENE GLYCOL MONOCAPRYLATE"
* name.type.coding = PqcmcProductIngredientNameType#141 "GSRS Accepted"
* name.preferred = true
* sourceMaterial.type = $NCIT#C48807 "Chemical"


//From Resource Profile: MfgTestSiteOrganization. http://build.fhir.org/ig/HL7/FHIR-us-pq-cmc/StructureDefinition-mfg-test-site-organization.html
Instance: 029f1cb8-2dc7-4971-8309-55e6dd129918
InstanceOf: MfgTestSiteOrganization
Title: "Example of MfgTestSiteOrganization profile on Organization"
Description: "A profile for the data elements required to identify an organization that manufactures, processes or tests drug products or substances."
Usage: #example

* id = "029f1cb8-2dc7-4971-8309-55e6dd129918"

//Slicing of Identifier
* identifier[DUNSNumber]
  * system = "urn:oid:1.3.6.1.4.1.519.1"
  * value = "123456789"
* identifier[FEINumber]
  * system = "urn:oid:2.16.840.1.113883.4.82"
  * value = "1234567"
* name = "Sams BioPharm"
  //PqAddress
* contact.address.line = "2752 Main Street"
* contact.address.city = "Princeton"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"

