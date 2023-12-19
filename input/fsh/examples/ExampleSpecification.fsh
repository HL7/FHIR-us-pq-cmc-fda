Instance: 89676a69-1fe7-422c-ab00-92abe4ef6ea9
InstanceOf: RoutineDrugProduct
Title: "drug product for specification "
Description: "Includes the identifier of the drug product"
Usage: #example

* identifier.value = "Example2BeadDrug"
* combinedPharmaceuticalDoseForm = $NCIT#C25158 "CAPSULE"
* route = $NCIT#C38288 "ORAL"
* name[NonProprietary].part[Scientific][+].part = "OXAZEPAM"
* name[NonProprietary].part[Strength][+].part = "30mg"
* name[NonProprietary].part[Scientific][+].part = "PROPRANOLOL HYDROCHLORIDE"
* name[NonProprietary].part[Strength][+].part = "60mg"
* name[NonProprietary].productName = "OXAZEPAM 30mg, PROPRANOLOL HYDROCHLORIDE 60mg"
* name[NonProprietary].type.text = "Non-Proprietary"

Instance: aa514363-d43f-4052-b44e-b67aa4d6dee7
InstanceOf: QualitySpecification
Title: "A quality specification is for a drug product"
Description: "A quality specification is for a Drug Product"
Usage: #example

* extension[specificationType].valueCodeableConcept = $NCIT#C134021 "Drug Product"
* identifier.value = "ExampleSpecification"
* version = "1.0"
* title = "Quality Specification for Buffered Asprin"
* status = #active
* subjectReference = Reference(urn:uuid:89676a69-1fe7-422c-ab00-92abe4ef6ea9)
* date = 2022-12-08
* useContext.valueCodeableConcept = $NCIT#C134011 "Not Approved"
* goal[+]
  * id = "32649771-1290-4386-9cf7-7a72274f22b4"
  * description.text = "Average of 10 between 2-3 pH"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 2 $NCIT#C45997 "pH"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailRange.high = 3 $NCIT#C45997 "pH"
* goal[+]
  * id = "59a4ca76-858e-4d58-8e5f-88e75f51ec33"
  * description.text = "Maxima only at the same wavelengths compared to reference standard"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "c40aa176-e6aa-4fe4-869d-6550ee992903"
  * description.text = "<= 0.5 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "b122987d-586c-481b-951c-6202e660158d"
  * description.text = "Color of solution is clear"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailCodeableConcept.text = "Conforms"
* goal[+]
  * id = "929747ad-e83a-46f0-bbbc-133ee951e819"
  * description.text = "<= 0.05 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.05 $NCIT#C48570 "percent"
* goal[+]
  * id = "8d7c85c2-7a4b-432e-ac94-226f296e4fca"
  * description.text = "No Particulate Matter detected"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "de4f962a-d486-486d-8d84-f2d1635646b4"
  * description.text = "<= 0.014 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.014 $NCIT#C48570 "percent"
* goal[+]
  * id = "b46dce64-a009-46cd-ab95-21d1d5b4df77"
  * description.text = "<= 0.04 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.04 $NCIT#C48570 "percent"
* goal[+]
  * id = "5566f501-37e1-49fb-8783-b20c074ec0c3"
  * description.text = "<= 0.001 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailQuantity = 0.001 $NCIT#C48570 "percent"
* goal[+]
  * id = "db19e3ab-e28b-4477-8bd7-2409093ed5a3"
  * description.text = "Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailCodeableConcept.text = "pass"
* goal[+]
  * id = "82370588-7aae-4556-9262-a7f50dbd01aa"
  * description.text = "Ethanol < 0.2%"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * measure.text = "Ethanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.2 $NCIT#C48570 "percent"
* goal[+]
  * id = "cae2da87-c4b7-43d0-9e8e-c64d0d4df6c2"
  * description.text = "Ethyl Ether < 0.1%"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * measure.text = "Ethyl Ether"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.1 $NCIT#C48570 "percent"
* goal[+]
  * id = "28ad4d5b-d975-4f6e-9792-b3d9cc7ce279"
  * description.text = "1—propanol < 0.15%"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * measure.text = "1—propanol"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.15 $NCIT#C48570 "percent"
* goal[+]
  * id = "33fa051c-6b3c-4e4d-bd4e-09d39fc253b3"
  * description.text = "Total < 0.5%"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * measure.text = "Total Residual Solvents"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "9100e938-42ff-4004-8473-ed5090d66f3a"
  * description.text = "99.5 - 100.5 %"
  * addresses[+] = $NCIT#C134029 "Release"
  * addresses[+] = $NCIT#C134030 "Stability"
  * target[+]
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 99.5 $NCIT#C48570 "percent"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 100.5 $NCIT#C48570 "percent"
* goal[+]
  * id = "af260128-f105-4692-ba40-49f21f12ad46"
  * description.text = "n=6"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "31d9dcac-bf72-420b-a415-c924155a83f4"
  * description.text = "Each unit is NLT Q + 5%"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 85 $NCIT#C48570 "percent"
* goal[+]
  * id = "47c0d685-0b23-4637-9af8-a554e4fad7ec"
  * description.text = "n=6"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailInteger = 6
* goal[+]
  * id = "14d3dee8-e024-4367-b0a2-a2a809303ee0"
  * description.text = "Average of 12 units (S1 + S2) is equal to or greater than Q and no unit is less than Q – 15%"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * measure.text = "Average of 12 units"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 80 $NCIT#C48570 "percent"
  * target[+]
    * measure.text = "unit"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 65 $NCIT#C48570 "percent"
* goal[+]
  * id = "15309a78-92a9-4cf9-aee1-452d6d2f7a91"
  * description.text = "Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q – 15%, no unit is less than Q – 25%"
  * addresses[+] = $NCIT#C134029 "Release"
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
  * id = "666ace1e-bd29-4263-9ae2-2391106326bb"
  * description.text = "n=12"
  * addresses[+] = $NCIT#C134029 "Release"
  * target[+]
    * detailInteger = 12
* action[+]
  * id = "2047a6b6-e3fc-4071-8989-526297579091"
  * extension[testOrder].valueDecimal = 1.1
  * prefix = "Single Stage"
  * title = "Spectrophotometry Identification"
  * description = "Alternate"
  * code
    * coding = $NCIT#C96102 "Compendial"
    * text = "Spectrophotometry"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "USP <197>"
  * relatedAction[+].targetId = "84d64dd8-b799-418a-a713-a854c4d3c2b9"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * goalId[+] = "32649771-1290-4386-9cf7-7a72274f22b4"
* action[+]
  * id = "84d64dd8-b799-418a-a713-a854c4d3c2b9"
  * extension[testOrder].valueDecimal = 1.2
  * linkId = "2047a6b6-e3fc-4071-8989-526297579091"
  * prefix = "Single Stage"
  * title = "Identity - Ferric Chloride"
  * description = "Alternate"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "HPLC"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC7 "Identification"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-01"
  * relatedAction[+].targetId = "2047a6b6-e3fc-4071-8989-526297579091"
  * relatedAction[=].relationship = #concurrent
  * selectionBehavior = #exactly-one
  * goalId[+] = "59a4ca76-858e-4d58-8e5f-88e75f51ec33"
* action[+]
  * id = "838e66ce-f4b0-47a5-8ea0-aa7882a84303"
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
  * goalId[+] = "c40aa176-e6aa-4fe4-869d-6550ee992903"
* action[+]
  * id = "3510686b-fb93-4980-a41c-0a3754be7f37"
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
  * goalId[+] = "b122987d-586c-481b-951c-6202e660158d"
* action[+]
  * id = "b2e18cc4-f494-4ef0-be34-810d8d4b439b"
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
  * goalId[+] = "929747ad-e83a-46f0-bbbc-133ee951e819"
* action[+]
  * id = "d315a1c3-dd93-498d-8ae3-dc0d4b3bec75"
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
  * goalId[+] = "8d7c85c2-7a4b-432e-ac94-226f296e4fca"
* action[+]
  * id = "6ec15bbc-a78a-4351-9ad8-fcf97e839ab9"
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
  * goalId[+] = "de4f962a-d486-486d-8d84-f2d1635646b4"
* action[+]
  * id = "fa31b425-896c-4b25-b693-ccdd14e0c8ee"
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
  * goalId[+] = "b46dce64-a009-46cd-ab95-21d1d5b4df77"
* action[+]
  * id = "cef5aa1a-8770-4f78-9bc3-da9f18b77e5c"
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
  * goalId[+] = "5566f501-37e1-49fb-8783-b20c074ec0c3"
* action[+]
  * id = "d5871ee2-8b06-414c-91b4-4b30f5881c8a"
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
  * goalId[+] = "db19e3ab-e28b-4477-8bd7-2409093ed5a3"
* action[+]
  * id = "e192fc72-c4b1-419f-8098-6f65037a3962"
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
  * goalId[+] = "82370588-7aae-4556-9262-a7f50dbd01aa"
  * goalId[+] = "cae2da87-c4b7-43d0-9e8e-c64d0d4df6c2"
  * goalId[+] = "28ad4d5b-d975-4f6e-9792-b3d9cc7ce279"
  * goalId[+] = "33fa051c-6b3c-4e4d-bd4e-09d39fc253b3"
* action[+]
  * id = "b7e88ea0-3c61-49db-86ec-8d01f8b7667b"
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
  * goalId[+] = "9100e938-42ff-4004-8473-ed5090d66f3a"
* action[+]
  * id = "6d1ba5a8-6590-496a-ad6b-ca68cfda2878"
  * extension[testOrder].valueDecimal = 12
  * title = "Dissolution - 30 minute"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "Visual"
  * reason[+].extension[categoryLevel].valueInteger = 1
  * reason[=].coding = $TestCats#TC9 "Dissolution"
  * documentation.type = #documentation
  * documentation.label = "EX-TEST-05"
  * action[+]
    * extension[stageOrder].valueDecimal = 1
    * linkId = "6d1ba5a8-6590-496a-ad6b-ca68cfda2878"
    * prefix = "Stage 1"
    * goalId[+] = "af260128-f105-4692-ba40-49f21f12ad46"
    * goalId[+] = "31d9dcac-bf72-420b-a415-c924155a83f4"
  * action[+]
    * extension[stageOrder].valueDecimal = 2
    * linkId = "6d1ba5a8-6590-496a-ad6b-ca68cfda2878"
    * prefix = "Stage 2"
    * goalId[+] = "47c0d685-0b23-4637-9af8-a554e4fad7ec"
    * goalId[+] = "14d3dee8-e024-4367-b0a2-a2a809303ee0"
  * action[+]
    * extension[stageOrder].valueDecimal = 3
    * linkId = "6d1ba5a8-6590-496a-ad6b-ca68cfda2878"
    * prefix = "Stage 3"
    * goalId[+] = "15309a78-92a9-4cf9-aee1-452d6d2f7a91"
    * goalId[+] = "666ace1e-bd29-4263-9ae2-2391106326bb"

Instance: d332acdf-4874-407b-9950-528f14c6bea2
InstanceOf: EctdCompositionSP4151
Title: "eCTD Product Specification Composition SP4151"
Description: "Composition SP4151 implementing eCTD 3.2.P.5.1."
Usage: #example

* identifier.value = "ExampleSpecification"
* status = #final
* type.coding = $SectionTypes#SP4151 "Quality Specification"
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* date = 2023-12-15T22:33:13.089Z
* title = """Quality Specification for Buffered Asprin"""
* section[DrugProduct]
  * code = $SectionTypes#32P51 "Product Specification"
  * title = "32P51"
  * entry = Reference(urn:uuid:aa514363-d43f-4052-b44e-b67aa4d6dee7)

Instance: 4a7e17c1-a611-4cc7-9a71-8005a8b427ab
InstanceOf: CMCeCTDDocumentSP4151
Title: "FHIR Document example of 3.2.P.5.1."
Description: "FHIR document bundle with the CMC eCTD SP4151 profile for a Drug Product"
Usage: #example
* meta.profile.extension[version].valueString = "0.1.17"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:34a0748d-b199-4a2e-a5bc-0f880886fef7"
* timestamp = 2023-12-15T22:33:13.089Z
* entry[0].resource = d332acdf-4874-407b-9950-528f14c6bea2
* entry[=].fullUrl = "urn:uuid:d332acdf-4874-407b-9950-528f14c6bea2"
* entry[+].resource = aa514363-d43f-4052-b44e-b67aa4d6dee7
* entry[=].fullUrl = "urn:uuid:aa514363-d43f-4052-b44e-b67aa4d6dee7"
* entry[+].resource = 89676a69-1fe7-422c-ab00-92abe4ef6ea9
* entry[=].fullUrl = "urn:uuid:89676a69-1fe7-422c-ab00-92abe4ef6ea9"
* entry[+].resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
* entry[=].fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
