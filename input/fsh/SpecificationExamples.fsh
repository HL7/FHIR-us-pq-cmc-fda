Instance: aa40b203-8f89-4e21-b328-161ec3c4cb03
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
Instance: f28f6bf7-1ae7-47e9-9450-3ddf8d0683ba
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
Instance: 2a6df33f-4e92-41cd-b31b-2eb8428f1d9e
InstanceOf: QualitySpecification
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-quality-specification"
* extension[specificationType].valueCodeableConcept = $NCIT#C134021 "Drug Product"
* identifier.value = "ExampleSpecification"
* version = "1.0"
* title = "Quality Specification for Buffered Asprin"
* status = #active
* subjectReference = Reference(f28f6bf7-1ae7-47e9-9450-3ddf8d0683ba)
* date = 2022-12-08
* useContext.valueCodeableConcept = $NCIT#C134011 "Not Approved"
* goal[+]
  * id = "4729db38-68a4-4352-a46c-8b76b7983c1e"
* goal[=].description.text = "Average of 10 between 2-3 pH"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 2 $NCIT#C45997 "pH"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailRange.high = 3 $NCIT#C45997 "pH"
* goal[+]
  * id = "f523ede3-5560-4e12-b5be-4d953b141f68"
* goal[=].description.text = "Maxima only at the same wavelengths compared to reference standard"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailString = "Conforms"
* goal[+]
  * id = "09096d99-82dd-4ce0-835c-c9223da4b9d7"
* goal[=].description.text = "<= 0.5 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "7202bb73-0164-434a-b3e8-77786bbb5ba7"
* goal[=].description.text = "Color of solution is clear"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailString = "Conforms"
* goal[+]
  * id = "4dfbb5da-7556-4897-91a2-91b0a47b0110"
* goal[=].description.text = "<= 0.05 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.05 $NCIT#C48570 "percent"
* goal[+]
  * id = "41f593fc-8cb9-4e0c-a846-fc8920b91261"
* goal[=].description.text = "No Particulate Matter detected"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailString = "pass"
* goal[+]
  * id = "c3f93e0e-2e0f-4d6d-b39c-16ae60e22fd5"
* goal[=].description.text = "<= 0.014 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.014 $NCIT#C48570 "percent"
* goal[+]
  * id = "4fc82267-5ad8-4859-93c0-935b1627a0a5"
* goal[=].description.text = "<= 0.04 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.04 $NCIT#C48570 "percent"
* goal[+]
  * id = "a1b3ef4b-092d-431e-82f1-75030290a2c0"
* goal[=].description.text = "<= 0.001 %"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.001 $NCIT#C48570 "percent"
* goal[+]
  * id = "263cc7e1-8716-4b6e-a26e-127cfa9e9fe9"
* goal[=].description.text = "Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * detailString = "pass"
* goal[+]
  * id = "7924a08c-0d39-4857-81c8-6d100013cd2b"
* goal[=].description.text = "Ethanol < 0.2%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=].addresses[+] = $NCIT#Stability
* goal[=]
  * target[+]
    * measure.text = "Ethanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.2 $NCIT#C48570 "percent"
* goal[+]
  * id = "226bfd90-9d36-422f-b12e-9454ed3b8360"
* goal[=].description.text = "Ethyl Ether < 0.1%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "Ethyl Ether"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.1 $NCIT#C48570 "percent"
* goal[+]
  * id = "1f43bb51-aed8-42c2-9710-7319d5eba1f4"
* goal[=].description.text = "1—propanol < 0.15%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "1—propanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.15 $NCIT#C48570 "percent"
* goal[+]
  * id = "54dd182b-6968-4919-8756-95ce4c599543"
* goal[=].description.text = "Total < 0.5%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * measure.text = "Total Residual Solvents"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "d13abea5-7e0b-4b44-9790-9fdeb430a2e7"
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
  * id = "a802e1da-0008-4002-82c9-62d258f8f9d4"
* goal[=].description.text = "n=6"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "73ff7356-ae9e-4d50-804c-7f475aafcc21"
* goal[=].description.text = "Each unit is NLT Q + 5%"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 85 $NCIT#C48570 "percent"
* goal[+]
  * id = "40111dd1-720e-4b9b-af18-d8002ffc7a25"
* goal[=].description.text = "n=6"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "6a96d60f-201a-4151-9ec9-73502674d434"
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
  * id = "0fe45619-c331-4a93-beca-83216f87a4cf"
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
  * id = "ec0fe6a2-0927-4d56-93c6-f6d1d5c8c2e7"
* goal[=].description.text = "n=12"
* goal[=].addresses[+] = $NCIT#Release
* goal[=]
  * target[+]
    * detailInteger = 12
* action[+]
  * id = "57e3b420-d587-4cca-9e7b-761a69a98bb3"
  * extension[testOrder].valueDecimal = 1.1
  * title = "Identity"
  * code
    * coding[testCategory] = $NCIT#730
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <197> Spectrophotometric Identification Tests"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity.pdf"
  * relatedAction[+].targetId = "6a1f3e31-5e82-43f6-900c-1c8d2f29c1cc"
  * selectionBehavior = #exactly-one
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Identity"
    * goalId[+] = "4729db38-68a4-4352-a46c-8b76b7983c1e"
* action[+]
  * id = "6a1f3e31-5e82-43f6-900c-1c8d2f29c1cc"
  * extension[testOrder].valueDecimal = 1.2
  * linkId = "57e3b420-d587-4cca-9e7b-761a69a98bb3"
  * title = "Identity"
  * code
    * coding[testCategory] = $NCIT#730
    * coding[methodOrigin] = $NCIT#113
    * text = "Ferric Chloride"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/identity-FC.pdf"
  * relatedAction[+].targetId = "57e3b420-d587-4cca-9e7b-761a69a98bb3"
  * selectionBehavior = #exactly-one
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Identity"
    * goalId[+] = "f523ede3-5560-4e12-b5be-4d953b141f68"
* action[+]
  * id = "06e51e0f-a0d7-42ad-a245-80974424116d"
  * extension[testOrder].valueDecimal = 2
  * title = "Loss on Drying"
  * code
    * coding[testCategory] = $NCIT#735
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <731> Loss on Drying"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/loss-on-drying.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Loss on Drying"
    * goalId[+] = "09096d99-82dd-4ce0-835c-c9223da4b9d7"
* action[+]
  * id = "53dfbdca-d32f-4676-bb07-811ef6953214"
  * extension[testOrder].valueDecimal = 3
  * title = "Readily Carbonizable Sub"
  * code
    * coding[testCategory] = $NCIT#729
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <271> Readily Carbonizable Substances Test"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/readily-carbonizable-substances.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Readily Carbonizable Sub"
    * goalId[+] = "7202bb73-0164-434a-b3e8-77786bbb5ba7"
* action[+]
  * id = "67dd3610-39f9-40c4-b295-f5e81e49d1e3"
  * extension[testOrder].valueDecimal = 4
  * title = "Residue on ignition (Ash)"
  * code
    * coding[testCategory] = $NCIT#761
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <281> Residue on Igition"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residue-on-ignition.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Residue on ignition (Ash)"
    * goalId[+] = "4dfbb5da-7556-4897-91a2-91b0a47b0110"
* action[+]
  * id = "2b2de153-cb10-4ba5-8b74-16bf61ff39b2"
  * extension[testOrder].valueDecimal = 5
  * title = "Insoluble Matter"
  * code
    * coding[testCategory] = $NCIT#734
    * coding[methodOrigin] = $NCIT#113
    * text = "Substances insoluble in sodium carbonate TS"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/insoluble-matter.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Insoluble Matter"
    * goalId[+] = "41f593fc-8cb9-4e0c-a846-fc8920b91261"
* action[+]
  * id = "f6d3899a-013b-4e82-bf1b-e68c7364aed6"
  * extension[testOrder].valueDecimal = 6
  * title = "Impurities - Chloride (Cl)"
  * code
    * coding[testCategory] = $NCIT#772
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <221> Chloride and Sulfate"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-chloride.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Impurities - Chloride (Cl)"
    * goalId[+] = "c3f93e0e-2e0f-4d6d-b39c-16ae60e22fd5"
* action[+]
  * id = "7733283a-8796-4184-af0a-557f2097f4e7"
  * extension[testOrder].valueDecimal = 7
  * title = "Impurities - Sulfate (SO4)"
  * code
    * coding[testCategory] = $NCIT#772
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <221> Chloride and Sulfate"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/impurities-sulfate.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Impurities - Sulfate (SO4)"
    * goalId[+] = "4fc82267-5ad8-4859-93c0-935b1627a0a5"
* action[+]
  * id = "9326fc26-42ce-4888-a734-e6df55df05c8"
  * extension[testOrder].valueDecimal = 8
  * title = "Elemental Impurities - Limits"
  * code
    * coding[testCategory] = $NCIT#772
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <231> Heavy Metals"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/elemental-impurities-limits.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Elemental Impurities - Limits"
    * goalId[+] = "a1b3ef4b-092d-431e-82f1-75030290a2c0"
* action[+]
  * id = "0ec89f5d-32f9-4f15-bb9c-da890cc232cf"
  * extension[testOrder].valueDecimal = 9
  * title = "Limit of Free Salicylic Acid"
  * code
    * coding[testCategory] = $NCIT#772
    * coding[methodOrigin] = $NCIT#113
    * text = "Limit of free salicylic acid"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/limit-of-free-salicylic-acid.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Limit of Free Salicylic Acid"
    * goalId[+] = "263cc7e1-8716-4b6e-a26e-127cfa9e9fe9"
* action[+]
  * id = "e3874a5f-f8a1-4e23-87c2-944f33431acc"
  * extension[testOrder].valueDecimal = 10
  * title = "Residual Solvents"
  * code
    * coding[testCategory] = $NCIT#772
    * coding[methodOrigin] = $NCIT#112
    * text = "USP <467> Organic Volatile Impurities"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/residual-solvents.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Residual Solvents"
    * goalId[+] = "7924a08c-0d39-4857-81c8-6d100013cd2b"
    * goalId[+] = "226bfd90-9d36-422f-b12e-9454ed3b8360"
    * goalId[+] = "1f43bb51-aed8-42c2-9710-7319d5eba1f4"
    * goalId[+] = "54dd182b-6968-4919-8756-95ce4c599543"
* action[+]
  * id = "72cea072-a474-4f94-93d8-3ba59727cc68"
  * extension[testOrder].valueDecimal = 11
  * title = "Assay"
  * code
    * coding[testCategory] = $NCIT#725
    * coding[methodOrigin] = $NCIT#113
    * text = "Assay Dry Basis"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/assay.pdf"
  * action
    * extension[testOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Assay"
    * goalId[+] = "d13abea5-7e0b-4b44-9790-9fdeb430a2e7"
* action[+]
  * id = "5584697f-c569-4465-ab11-d6f2f70c9d00"
  * extension[testOrder].valueDecimal = 12
  * title = "Dissolution"
  * code
    * coding[testCategory] = $NCIT#732
    * coding[methodOrigin] = $NCIT#113
    * text = "Dissolution - 30 minute"
  * documentation.type = #documentation
  * documentation.label = "m3/32-body-data/32p-drug-prod/wonder-asprin/32p5-contr-drug-prod/32p52-analyt-proc/dissolution.pdf"
  * action[+]
    * extension[testOrder].valueDecimal = 1
    * linkId = "5584697f-c569-4465-ab11-d6f2f70c9d00"
    * prefix = "Stage 1"
    * title = "Dissolution"
    * goalId = "a802e1da-0008-4002-82c9-62d258f8f9d4"
    * goalId = "73ff7356-ae9e-4d50-804c-7f475aafcc21"
  * action[+]
    * extension[testOrder].valueDecimal = 2
    * linkId = "5584697f-c569-4465-ab11-d6f2f70c9d00"
    * prefix = "Stage 2"
    * title = "Dissolution"
    * goalId = "40111dd1-720e-4b9b-af18-d8002ffc7a25"
    * goalId = "6a96d60f-201a-4151-9ec9-73502674d434"
  * action[+]
    * extension[testOrder].valueDecimal = 3
    * linkId = "5584697f-c569-4465-ab11-d6f2f70c9d00"
    * prefix = "Stage 3"
    * title = "Dissolution"
    * goalId = "0fe45619-c331-4a93-beca-83216f87a4cf"
    * goalId = "ec0fe6a2-0927-4d56-93c6-f6d1d5c8c2e7"

Instance: ae407644-5e23-4187-bf70-dcc7a5846af6
InstanceOf: EctdCompositionSP4151
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/ectd-composition-sp4151"
* identifier.value = "ExampleSpecification"
* status = #final
* type.coding = $SectionTypes#SP4151 "Quality Specification"
* author = Reference(aa40b203-8f89-4e21-b328-161ec3c4cb03)
* date = 2023-11-15T15:50:45.841Z
* title = """Quality Specification for Buffered Asprin"""
* section[DrugProduct]
  * code = $SectionTypes#32P51 "Product Specification"
  * title = "32P51"
  * entry = Reference(2a6df33f-4e92-41cd-b31b-2eb8428f1d9e)
  
Instance: ce9e0234-5b40-49b0-8c6c-dd4797dd08ce
InstanceOf: CMCeCTDDocumentSP4151
* meta.profile.extension[version].valueString = "0.1.15"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:d4ea4fa0-67d9-4f26-adb8-f00e9d896b09"
* timestamp = 2023-11-15T15:50:45.842Z
* entry[0].resource = ae407644-5e23-4187-bf70-dcc7a5846af6
* entry[=].fullUrl = "urn:uuid:ae407644-5e23-4187-bf70-dcc7a5846af6"
* entry[+].resource = 2a6df33f-4e92-41cd-b31b-2eb8428f1d9e
* entry[=].fullUrl = "urn:uuid:2a6df33f-4e92-41cd-b31b-2eb8428f1d9e"
* entry[+].resource = f28f6bf7-1ae7-47e9-9450-3ddf8d0683ba
* entry[=].fullUrl = "urn:uuid:f28f6bf7-1ae7-47e9-9450-3ddf8d0683ba"
* entry[+].resource = aa40b203-8f89-4e21-b328-161ec3c4cb03
* entry[=].fullUrl = "urn:uuid:aa40b203-8f89-4e21-b328-161ec3c4cb03"
