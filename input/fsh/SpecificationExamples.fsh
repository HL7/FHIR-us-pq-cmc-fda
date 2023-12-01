Instance: 6ceaa627-02a3-4f81-a840-25ecc5a2adf7
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

Instance: e448eeab-b0e6-4ce5-bf0e-b77ca63ce774
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

Instance: 26046654-c10d-4ac4-a097-07f2cd3ca560
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug product"
Description: "A quality specification is for a drug product with various test types"

* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-quality-specification"
* extension[specificationType].valueCodeableConcept = $NCIT#C134021 "Drug Product"
* identifier.value = "ExampleSpecification"
* version = "1.0"
* title = "Quality Specification for Buffered Asprin"
* status = #active
* subjectReference = Reference(e448eeab-b0e6-4ce5-bf0e-b77ca63ce774)
* date = 2022-12-08
* useContext.valueCodeableConcept = $NCIT#C134011 "Not Approved"
* goal[+]
  * id = "de05a9be-419b-429e-b2f1-1b786c7d55be"
* goal[=].description.text = "Average of 10 between 2-3 pH"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 2 $NCIT#C45997 * action[+]
  * extension[testOrder].valueDecimal = 1.0
  * title = "pH  Tests"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "potential of hydrogen"
  * reason
    * coding = $TestCats#TC23 "pH"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/pHall.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "pH Average"
    * goalId[+] = "85154af5-e3fd-4d9a-9a43-f4d1703c06e7"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailRange.high = 3 $NCIT#C45997 "pH"
* goal[+]
  * id = "702b5147-d86f-416e-b4d5-582c326c890d"
* goal[=].description.text = "Maxima only at the same wavelengths compared to reference standard"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "50bf6449-f14e-4a5f-8f9a-ebcff5bea10f"
* goal[=].description.text = "<= 0.5 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "1f19860e-e764-4802-b8be-1420161ae952"
* goal[=].description.text = "Color of solution is clear"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "f43ed61a-a4a3-421d-9b44-f9477e0aa48e"
* goal[=].description.text = "<= 0.05 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.05 $NCIT#C48570 "percent"
* goal[+]
  * id = "6124d267-4977-4037-965a-70ccaf442e56"
* goal[=].description.text = "No Particulate Matter detected"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "5a3e4427-3df0-43f5-b2e9-819f6ad38ac8"
* goal[=].description.text = "<= 0.014 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.014 $NCIT#C48570 "percent"
* goal[+]
  * id = "3a4272bb-f5d2-4730-86d1-21afbab871f3"
* goal[=].description.text = "<= 0.04 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.04 $NCIT#C48570 "percent"
* goal[+]
  * id = "460ffa9b-e439-4cc6-9a49-1547d8c738c2"
* goal[=].description.text = "<= 0.001 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.001 $NCIT#C48570 "percent"
* goal[+]
  * id = "8227253e-a2a9-4a39-a199-53e2eca7d404"
* goal[=].description.text = "Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "44e30387-ddbc-45d7-a5c2-0e334e6093b8"
* goal[=].description.text = "Ethanol < 0.2%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * measure.text = "Ethanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.2 $NCIT#C48570 "percent"
* goal[+]
  * id = "1c80f56d-2fb0-421a-84eb-f16ee98d9034"
* goal[=].description.text = "Ethyl Ether < 0.1%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "Ethyl Ether"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.1 $NCIT#C48570 "percent"
* goal[+]
  * id = "691fac26-8bcb-45fb-a5ba-cbd04a00a778"
* goal[=].description.text = "1—propanol < 0.15%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "1—propanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.15 $NCIT#C48570 "percent"
* goal[+]
  * id = "fca2fd64-7f55-47bb-8bb4-454118e73221"
* goal[=].description.text = "Total < 0.5%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "Total Residual Solvents"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "da997e5d-6023-4be1-b402-59eb713fae9c"
* goal[=].description.text = "99.5 - 100.5 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 99.5 $NCIT#C48570 "percent"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 100.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "7d457f96-a24b-436c-8791-7b65420f350d"
* goal[=].description.text = "n=6"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "1afdf893-a076-413b-aadf-46f799aead55"
* goal[=].description.text = "Each unit is NLT Q + 5%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 85 $NCIT#C48570 "percent"
* goal[+]
  * id = "bc8dd4af-c1f8-43b2-a00b-20361a66d575"
* goal[=].description.text = "n=6"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "c59aad9c-3380-4b58-8609-8aeb27adb91d"
* goal[=].description.text = "Average of 12 units (S1 + S2) is equal to or greater than Q and no unit is less than Q – 15%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "Average of 12 units"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 80 $NCIT#C48570 "percent"
  * target[+]
    * measure.text = "unit"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 65 $NCIT#C48570 "percent"
* goal[+]
  * id = "dbb30bcc-8c49-479d-8051-dec94c9d4511"
* goal[=].description.text = "Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q – 15%, no unit is less than Q – 25%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
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
  * id = "2b82142e-ebd1-41b8-b252-b214a23eca72"
* goal[=].description.text = "n=12"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 12
* action[+]
  * id = "6c93d469-378c-4370-81a2-e67602f28b6a"
  * extension[testOrder].valueDecimal = 1.1
  * title = "Identity"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <197> Spectrophotometric Identification Tests"
  * reason
    * coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity.pdf"
  * relatedAction[+].targetId = "cbcf54fa-59f4-4400-afb1-3ffabb423b38"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Identity"
    * goalId[+] = "de05a9be-419b-429e-b2f1-1b786c7d55be"
* action[+]
  * id = "cbcf54fa-59f4-4400-afb1-3ffabb423b38"
  * extension[testOrder].valueDecimal = 1.2
  * linkId = "6c93d469-378c-4370-81a2-e67602f28b6a"
  * title = "Identity"
  * code 
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Ferric Chloride"
  * reason
    * coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity-FC.pdf"
  * relatedAction[+].targetId = "6c93d469-378c-4370-81a2-e67602f28b6a"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Identity"
    * goalId[+] = "702b5147-d86f-416e-b4d5-582c326c890d"
* action[+]
  * id = "9c2fabfc-0149-4d08-adc3-ea1d34c4e21f"
  * extension[testOrder].valueDecimal = 2
  * title = "Loss on Drying"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <731> Loss on Drying"
  * reason
    * coding = $TestCats#TC12 "Loss on Drying"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/loss-on-drying.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Loss on Drying Average"
    * goalId[+] = "50bf6449-f14e-4a5f-8f9a-ebcff5bea10f"
* action[+]
  * extension[testOrder].valueDecimal = 1.0
  * title = "pH  Tests"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "potential of hydrogen"
  * reason
    * coding = $TestCats#TC23 "pH"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/pHall.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "pH Average"
    * goalId[+] = "85154af5-e3fd-4d9a-9a43-f4d1703c06e7"    
* action[+]
  * id = "0227aa39-84e5-4f8b-988b-88f64b84934d"
  * extension[testOrder].valueDecimal = 3
  * title = "Readily Carbonizable Sub"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <271> Readily Carbonizable Substances Test"
  * reason
    * coding = $TestCats#TC6 "Organoleptic"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/readily-carbonizable-substances.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Readily Carbonizable Sub"
    * goalId[+] = "1f19860e-e764-4802-b8be-1420161ae952"
* action[+]
  * id = "8cfb4077-f127-4e30-9eda-de9324c41ce8"
  * extension[testOrder].valueDecimal = 4
  * title = "Residue on ignition (Ash)"
  * code
    * coding = $NCIT#C96102 "Compendial"   
    * text = "USP <281> Residue on Igition"
  * reason
    * coding = $TestCats#TC38 "Residue on Ignition"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residue-on-ignition.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Residue on ignition (Ash)"
    * goalId[+] = "f43ed61a-a4a3-421d-9b44-f9477e0aa48e"
* action[+]
  * id = "cec9cc79-fae5-45de-a08c-618fa52f63e3"
  * extension[testOrder].valueDecimal = 5
  * title = "Insoluble Matter"
  * code
    * coding = $NCIT##C96103 "Proprietary"
    * text = "Substances insoluble in sodium carbonate TS"
  * reason
    * coding = $TestCats#TC11 "Foreign and Particulate Matter"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/insoluble-matter.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Insoluble Matter"
    * goalId[+] = "6124d267-4977-4037-965a-70ccaf442e56"
* action[+]
  * id = "27f51d24-e95c-4850-8646-c2e183fabb95"
  * extension[testOrder].valueDecimal = 6
  * title = "Impurities - Chloride (Cl)"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <221> Chloride and Sulfate"
  * reason
    * coding = $TestCats#TC53 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-chloride.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Impurities - Chloride (Cl)"
    * goalId[+] = "5a3e4427-3df0-43f5-b2e9-819f6ad38ac8"
* action[+]
  * id = "8348df1f-6f05-4e68-a330-4aa0b2dcab0d"
  * extension[testOrder].valueDecimal = 7
  * title = "Impurities - Sulfate (SO4)"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <221> Chloride and Sulfate"
  * reason
    * coding = $TestCats#TC53 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-sulfate.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Impurities - Sulfate (SO4)"
    * goalId[+] = "3a4272bb-f5d2-4730-86d1-21afbab871f3"
* action[+]
  * id = "c0423457-97eb-4c81-a2d4-59b9d2e052a5"
  * extension[testOrder].valueDecimal = 8
  * title = "Elemental Impurities - Limits"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <231> Heavy Metals"
  * reason
    * coding = $TestCats#TC53 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/elemental-impurities-limits.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Elemental Impurities - Limits"
    * goalId[+] = "460ffa9b-e439-4cc6-9a49-1547d8c738c2"
* action[+]
  * id = "ce5d3dca-1704-4495-9a2d-588de7a0a491"
  * extension[testOrder].valueDecimal = 9
  * title = "Limit of Free Salicylic Acid"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Limit of free salicylic acid"
  * reason
    * coding = $TestCats#TC53 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/limit-of-free-salicylic-acid.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Limit of Free Salicylic Acid"
    * goalId[+] = "8227253e-a2a9-4a39-a199-53e2eca7d404"
* action[+]
  * id = "b98b73c6-122a-4c95-a39a-8fe34639cfe9"
  * extension[testOrder].valueDecimal = 10
  * title = "Residual Solvents"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "USP <467> Organic Volatile Impurities"
  * reason
    * coding = $TestCats#TC53 "Impurity"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residual-solvents.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Individual Residual Solvents and Total Residual Solvents"
    * goalId[+] = "44e30387-ddbc-45d7-a5c2-0e334e6093b8"
    * goalId[+] = "1c80f56d-2fb0-421a-84eb-f16ee98d9034"
    * goalId[+] = "691fac26-8bcb-45fb-a5ba-cbd04a00a778"
    * goalId[+] = "fca2fd64-7f55-47bb-8bb4-454118e73221"
* action[+]
  * id = "1d164b26-d865-40a3-a83f-00a7bfe4134c"
  * extension[testOrder].valueDecimal = 11
  * title = "Assay"
  * code
    * coding = $NCIT#C96103 "Proprietary" 
    * text = "Assay Dry Basis"
  * reason[+]
    * coding = $TestCats#TC1 "Assay" 
  * reason[+]
    * coding = $TestCats#SUBC2 "active ingredient"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/assay.pdf"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Assay"
    * goalId[+] = "da997e5d-6023-4be1-b402-59eb713fae9c"
* action[+]
  * id = "71041ef3-0064-48fe-b16a-b346ddd1b80d"
  * extension[testOrder].valueDecimal = 12
  * title = "Dissolution"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Dissolution - 30 minute"
  * reason
    * coding = $TestCats#TC9 "Dissolution"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/dissolution.pdf"
  * action[+]
    * extension[stageOrder].valueDecimal = 1
    * linkId = "71041ef3-0064-48fe-b16a-b346ddd1b80d"
    * prefix = "Stage 1"
    * title = "Dissolution"
    * goalId = "7d457f96-a24b-436c-8791-7b65420f350d"
    * goalId = "1afdf893-a076-413b-aadf-46f799aead55"
  * action[+]
    * extension[stageOrder].valueDecimal = 2
    * linkId = "71041ef3-0064-48fe-b16a-b346ddd1b80d"
    * prefix = "Stage 2"
    * title = "Dissolution"
    * goalId = "bc8dd4af-c1f8-43b2-a00b-20361a66d575"
    * goalId = "c59aad9c-3380-4b58-8609-8aeb27adb91d"
  * action[+]
    * extension[stageOrder].valueDecimal = 3
    * linkId = "71041ef3-0064-48fe-b16a-b346ddd1b80d"
    * prefix = "Stage 3"
    * title = "Dissolution"
    * goalId = "dbb30bcc-8c49-479d-8051-dec94c9d4511"
    * goalId = "2b82142e-ebd1-41b8-b252-b214a23eca72"


Instance: 455314e7-4679-49f5-b7ca-0a4532e8c7c9
InstanceOf: EctdCompositionSP4151
Title: "A quality specification composition"
Description: "A quality specification composition using a drug product"
Usage: #example

* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/ectd-composition-sp4151"
* identifier.value = "ExampleSpecification"
* status = #final
* type.coding = $SectionTypes#SP4151 "Quality Specification"
* author = Reference(6ceaa627-02a3-4f81-a840-25ecc5a2adf7)
* date = 2023-11-16T18:23:54.515Z
* title = """Quality Specification for Buffered Asprin"""
* section[DrugProduct]
  * code = $SectionTypes#32P51 "Product Specification"
  * title = "32P51"
  * entry = Reference(26046654-c10d-4ac4-a097-07f2cd3ca560)

Instance: 5a33aea1-1a3d-4db7-8ba3-d5b0d7395d70
InstanceOf: CMCeCTDDocumentSP4151
Title: "A quality specification bundle"
Description: "A quality specification bundle for a drug product."
Usage: #example

* meta.profile.extension[version].valueString = "0.1.15"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:80c383db-06e3-4d84-a1a5-024d81465e1f"
* timestamp = 2023-11-16T18:23:54.515Z
* entry[0].resource = 455314e7-4679-49f5-b7ca-0a4532e8c7c9
* entry[=].fullUrl = "urn:uuid:455314e7-4679-49f5-b7ca-0a4532e8c7c9"
* entry[+].resource = 26046654-c10d-4ac4-a097-07f2cd3ca560
* entry[=].fullUrl = "urn:uuid:26046654-c10d-4ac4-a097-07f2cd3ca560"
* entry[+].resource = e448eeab-b0e6-4ce5-bf0e-b77ca63ce774
* entry[=].fullUrl = "urn:uuid:e448eeab-b0e6-4ce5-bf0e-b77ca63ce774"
* entry[+].resource = 6ceaa627-02a3-4f81-a840-25ecc5a2adf7
* entry[=].fullUrl = "urn:uuid:6ceaa627-02a3-4f81-a840-25ecc5a2adf7"

Instance: 394c19af-062b-49b4-9f8d-f5a3499a8476
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug substance "
Description: "A quality specification is for an API highlighting a test with multiple sub-tests"
Usage: #example

* extension[specificationType].valueCodeableConcept = $NCIT#C134022 "Drug Substance"
* version = "1.0"
* title = "Quality Specification for API"
* status = #active
//Reference an Excipient Substance Definition
* subjectReference = Reference(0e2ca9e4-bb2a-48ec-8cbb-d2aaf6a4432b)
* date = "2022-12-08"
* useContext.valueCodeableConcept.coding = $NCIT#C134010 "Tentatively Approved"
* approvalDate = "2022-12-08"
* goal[+]
* goal[=].id = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"
* goal[=].description.text = "Negative"
* goal[=].addresses = $NCIT#C134029 "Release"
* goal[=].addresses = $NCIT#C134030 "Stability"
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "Negative"
* goal[+]
* goal[=].id = "dbb30bzz-8z47-477d-8061-dez74z7d4611"
* goal[=].description.text = "Negative"
* goal[=].addresses = $NCIT#C134029 "Release"
* goal[=].addresses = $NCIT#C134030 "Stability"
* goal[=]
  * target[+]
    * detailCodeableConcept.text = "Negative"
* goal[+]
* goal[=].id = "13fg7cd2-132a-414c-81c9-1d0g6g6a8216"
* goal[=].description.text = "NMT 100 colony-forming units"
* goal[=].addresses = $NCIT#C134029 "Release"
* goal[=].addresses = $NCIT#C134030 "Stability"
* goal[=].target.detailQuantity
* goal[=].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[=].target.detailQuantity.value = 100
* goal[=].target.detailQuantity.unit = "cfu"
* goal[=].target.detailQuantity.code = $NCIT#C68742 "[CFU]"

* goal[+]
* goal[=].id = "kbb30bcc-8c49-479k-8061-kec94c9k4611"
* goal[=].description.text = "NMT 10 colony-forming units"
* goal[=].addresses = $NCIT#C134029 "Release"
* goal[=].addresses = $NCIT#C134030 "Stability"
* goal[=].target.detailQuantity
* goal[=].target.detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal[=].target.detailQuantity.value = 10
* goal[=].target.detailQuantity.unit = "cfu"
* goal[=].target.detailQuantity.code = $NCIT#C68742 "[CFU]"

* action[+]
  * extension[testOrder].valueDecimal = 9
  * title = "Microbial Limits"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Microbiological Examination of Nonsterile Products"
  * reason
    * coding = $TestCats#TC13 "Microbial Limits"
  * documentation.type = #documentation
  * documentation.label = "USP.org <61> MICROBIOLOGICAL EXAMINATION OF NONSTERILE PRODUCTS: MICROBIAL ENUMERATION TESTS"
  * action[+]
    * extension[stageOrder].valueDecimal = 1
    * prefix = "Stage 1"
    * action[+]
      * extension[stageOrder].valueDecimal = 1
      * title =  "Staphylococcus aureus"
      * goalId = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"
    * action[+]
      * extension[stageOrder].valueDecimal = 2
      * title =  "Pseudomonas aeruginosa"
      * goalId = "53ee7cd2-532a-454c-85c9-5d0b6b6a8216"
    * action[+]
      * extension[stageOrder].valueDecimal = 3
      * title = "Bacillus subtilis"
      * goalId = "dbb30bzz-8z47-477d-8061-dez74z7d4611"
    * action[+]
      * extension[stageOrder].valueDecimal = 4
      * title = "Total Aerobic Microbial Count (TAMC) i"
      * goalId = "kbb30bcc-8c49-479k-8061-kec94c9k4611"
    * action[+]
      * extension[stageOrder].valueDecimal = 5
      * title = "Total Yeasts and Nolds Count (TYMC)"
      * goalId = "13fg7cd2-132a-414c-81c9-1d0g6g6a8216"

Instance: 0baed83c-495e-4129-8e26-537a0ede5e15
InstanceOf: QualitySpecification
Title: "A quality specification is for an Excipient or Raw material"
Description: "Indtifiying information for an Excipient or Raw material including source information"
Usage: #example

* extension[specificationType].valueCodeableConcept = $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"	
* version = "1.0"
* title = "Quality Specification for API"
* status = #active
//Reference an Active Pharmaceutical Ingredient (API)
* subjectReference = Reference(f5de5600-7e54-4d2d-b442-7b3366531231)
* date = "2022-12-08"
* useContext.valueCodeableConcept.coding = $NCIT#C134011 "Not Approved"
* goal
* goal.id = "85154af5-e3fd-4d9a-9a43-f4d1703c06e7"
* goal.description.text = " Averge of 10 between 2-3  pH"
* goal.addresses = $NCIT#C134029 "Release"
* goal.addresses = $NCIT#C134030 "Stability"
* goal.target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
* goal.target.detailRange.low = 2.0 $NCIT#C45997 "[pH]"
* goal.target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
* goal.target.detailRange.high = 3.0 $NCIT#C45997 "[pH]"
* goal.target.detailInteger.value = 10
* action[+]
  * extension[testOrder].valueDecimal = 1.0
  * title = "pH  Tests"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "potential of hydrogen"
  * reason
    * coding = $TestCats#TC23 "pH"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-acetate-400-600-800mg/32p5-contr-drug-prod/32p52-analyt-proc/pHall.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "pH Average"
    * goalId[+] = "85154af5-e3fd-4d9a-9a43-f4d1703c06e7"


