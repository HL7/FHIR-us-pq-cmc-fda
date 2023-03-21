Instance: 4f25eb50-6763-44c6-b4f4-def04382918e
InstanceOf: MfgTestSiteOrganization
Title: "Manufacturing Test Site (test site C)"
Description: "manufacturing site instance generated programatically"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* name = "test site C"
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* contact.address.line[0] = "100 Stillwater Avenue"
* contact.address.city = "bangor"
* contact.address.country = "United States"
* contact.address.postalCode = "04401"
* contact.address.text = "test site C, 100 Stillwater Avenue, Building #2, bangor, me, United States"
* contact.address.line[1] = "Building #2"
* contact.address.state = "me"

Instance: 28629bd0-7744-4c57-abba-e138196f82fa
InstanceOf: MfgTestSiteOrganization
Title: "Manufacturing Test Site (test site A)"
Description: "manufacturing site instance generated programatically"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* name = "test site A"
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* contact.address.line[0] = "123 Broad Way"
* contact.address.city = "new york"
* contact.address.country = "United States"
* contact.address.postalCode = "100000"
* contact.address.text = "test site A, 123 Broad Way, new york, ny, United States"
* contact.address.state = "ny"

Instance: 9949f8af-99c9-4930-a766-752d7d65b1ab
InstanceOf: MfgTestSiteOrganization
Title: "Manufacturing Test Site (test site B)"
Description: "manufacturing site instance generated programatically"
* identifier[DUNSNumber].value = "143265222"
* identifier[DUNSNumber].type = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].system = $DUNS
* name = "test site B"
* identifier[FEINumber].type = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
* identifier[FEINumber].system = $FEINumber
* contact.address.line[0] = "350 W Main Street"
* contact.address.city = "Rochester"
* contact.address.country = "United States"
* contact.address.postalCode = "14608"
* contact.address.text = "test site B, 350 W Main Street, Rochester, NY, United States"
* contact.address.state = "NY"

Instance: d860b368-2de7-40e9-9f8a-1dd2b5c75ca6
InstanceOf: ComponentSubstance
Title: "Substance in role of product substance"
Description: "Product component substanceNitazoxanide"

* identifier.value = "Nitazoxanide"
* classification = $NCIT#1 "Chemical"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:4f25eb50-6763-44c6-b4f4-def04382918e)
* manufacturer = Reference(urn:uuid:28629bd0-7744-4c57-abba-e138196f82fa)
* code.code = $UNII#SOA12P041N
* name[sub].name = "NITAZOXANIDE"
* sourceMaterial.type = $NCIT#C48807 "Chemical"
* sourceMaterial.countryOfOrigin.text = "Argentina"

Instance: a8b37824-6be3-4519-9cbf-3651ef8f0af9
InstanceOf: DrugProductComponent
Title: "Example drug product component"
Description: "ilustrates presentation strength"
* substance.code.reference = Reference(urn:uuid:d860b368-2de7-40e9-9f8a-1dd2b5c75ca6)
* role = http://hl7.org/fhir/ingredient-role#100000072072 "Active"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.4558
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 675
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a
InstanceOf: ComponentSubstance
Title: "Component Substace - Maize starch"
Description: "Exmple of plant source"
* identifier.value = "Maize starch"
* classification = $NCIT#17 "Mixture"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#O8232NY3SJ
* name[comn].name = "Maize starch"
* sourceMaterial.type = $NCIT#C14258 "Plant"
* sourceMaterial.genus.text = "zea"
* sourceMaterial.species.text = "mays"
* sourceMaterial.countryOfOrigin.text = "Argentina"

Instance: c737cca8-d8d7-42ba-8eea-cc4c13b2b279
InstanceOf: DrugProductComponent
Title: "Drug product component - Excipient"
Description: "Example Excipient dDrug product component"
* substance.code.reference = Reference(urn:uuid:0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0243
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 36
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: f201f024-e53c-43cd-bfc9-2b5cbb7f79da
InstanceOf: ComponentSubstance
Title: "Component Substance - hydroxypropylcellulose"
Description: "Component Substance for 32P10"
* identifier.value = "hydroxypropylcellulose"
* classification = $NCIT#3 "Polymer"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#0A7M0N7SPE
* name[comn].name = "hydroxypropylcellulose"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 0b39649a-9e43-48f8-8c92-5bf289409714
InstanceOf: DrugProductComponent
Title: "Drug Product Component Excipient"
Description: "Example Drug Product Component excipient for 32P10"
* substance.code.reference = Reference(urn:uuid:f201f024-e53c-43cd-bfc9-2b5cbb7f79da)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0051
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 7.5
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: aa200c60-3cf4-47e0-9afc-a3693f0d0a08
InstanceOf: ComponentSubstance
Title: "Component Substance - Sodium croscarmellose"
Description: "Component Substance for 32P10"
* identifier.value = "Sodium croscarmellose"
* classification = $NCIT#3 "Polymer"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#M28OL1HH48
* name[comn].name = "Sodium croscarmellose"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 646f1115-2aad-4f0f-b7bc-a690a3d30b5b
InstanceOf: DrugProductComponent
Title: "Drug Product Component - 32P10 excipient"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:aa200c60-3cf4-47e0-9afc-a3693f0d0a08)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0051
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 7.5
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: adfe47f8-afc6-4e38-8bc5-473b6d40fdc9
InstanceOf: ComponentSubstance
Title: "Component Substance - Colloidal anhydrous silica"
Description: "Component Substance for 32P10"
* identifier.value = "Colloidal anhydrous silica"
* classification = $NCIT#1 "Chemical"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#ETJ7Z6XBU4
* name[comn].name = "Colloidal anhydrous silica"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 1f8abd13-b06a-4b28-b5de-4d5680be805d
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Colloidal anhydrous silica"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:adfe47f8-afc6-4e38-8bc5-473b6d40fdc9)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0027
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 4
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 25a9214e-c913-4935-a794-3646793530ed
InstanceOf: ComponentSubstance
Title: "Component Substance - Magnesium stearate"
Description: "Component Substance for 32P10"
* identifier.value = "Magnesium stearate"
* classification = $NCIT#1 "Chemical"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#70097M6I30
* name[comn].name = "Magnesium stearate"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 1019ae87-0010-4cd0-b6e9-13e581009b43
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Magnesium stearate"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:25a9214e-c913-4935-a794-3646793530ed)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0064
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 9.5
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: a200db80-d7bb-46fa-b6c1-049c2d1ed07b
InstanceOf: ComponentSubstance
Title: "Component Substance - Microcrystalline cellulose"
Description: "Component Substance for 32P10"
* identifier.value = "Microcrystalline cellulose"
* classification = $NCIT#3 "Polymer"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#OP1R32D61U
* name[comn].name = "Microcrystalline cellulose"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: e9042a05-de7e-4674-9a2d-0cac4a7144c1
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Microcrystalline cellulose"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:a200db80-d7bb-46fa-b6c1-049c2d1ed07b)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0155
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 23
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 7d9aadeb-096a-4685-b234-774aedb0bdd7
InstanceOf: ComponentSubstance
Title: "Component Substance - water"
Description: "Component Substance for 32P10"
* identifier.value = "water"
* classification = $NCIT#1 "Chemical"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#059QF0KO0R
* name[comn].name = "water"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 54d2699b-0efa-46e6-ac47-c92ff890b422
InstanceOf: DrugProductComponent
Title: "Drug Product Component - water"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:7d9aadeb-096a-4685-b234-774aedb0bdd7)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.2944
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 436
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: e35cbed2-cc09-4e15-a1c2-a71c8989297e
InstanceOf: ComponentSubstance
Title: "Component Substance - Opadry AMB 80W91416 Green"
Description: "Component Substance for 32P10"
* identifier.value = "Opadry AMB 80W91416 Green"
* classification = $NCIT#17 "Mixture"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* name[comn].name = "Opadry AMB 80W91416 Green"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 25de86cc-fbab-47d4-b410-c8e6bdf53ebb
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Opadry AMB 80W91416 Green"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:e35cbed2-cc09-4e15-a1c2-a71c8989297e)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.027
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 40
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 29c88a54-f014-4bd1-9a6a-2da0e033b8da
InstanceOf: ComponentSubstance
Title: "Component Substance - Opadry FX 63F97546 Gloss"
Description: "Component Substance for 32P10"
* identifier.value = "Opadry FX 63F97546 Gloss"
* classification = $NCIT#17 "Mixture"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* name[comn].name = "Opadry FX 63F97546 Gloss"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: b69f8d81-2a78-48e5-b190-fbd916285af1
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Opadry FX 63F97546 Gloss"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:29c88a54-f014-4bd1-9a6a-2da0e033b8da)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0034
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 5
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 5863a14d-6589-484b-8ad4-939a050071b3
InstanceOf: ComponentSubstance
Title: "Component Substance - hydroxypropyl-methylcellulose"
Description: "Component Substance for 32P10"
* identifier.value = "hydroxypropyl-methylcellulose"
* classification = $NCIT#3 "Polymer"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#1IVH67816N
* name[comn].name = "hydroxypropyl-methylcellulose"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 9b7c6fed-ca72-41bb-bc8e-6eff32662e40
InstanceOf: DrugProductComponent
Title: "Drug Product Component - hydroxypropyl-methylcellulose"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:5863a14d-6589-484b-8ad4-939a050071b3)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0912
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 135
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: bd41540d-0799-4999-a020-4b8e478bd81a
InstanceOf: ComponentSubstance
Title: "Component Substance - Dicalciumphosphate dyhydrate"
Description: "Component Substance for 32P10"
* identifier.value = "Dicalciumphosphate dyhydrate"
* classification = $NCIT#1 "Chemical"
* grade = $NCIT#C176793 "BP"
* supplier = Reference(urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab)
* code.code = $UNII#O7TSZ97GEP
* name[comn].name = "Dicalciumphosphate dyhydrate"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 6c7187af-c9d8-4ca5-80b9-b3af9d444658
InstanceOf: DrugProductComponent
Title: "Drug Product Component - Dicalciumphosphate dyhydrate"
Description: "Example Drug Product Component for a section 32P10 excipient"
* substance.code.reference = Reference(urn:uuid:bd41540d-0799-4999-a020-4b8e478bd81a)
* role = http://hl7.org/fhir/ingredient-role#100000072082 "Excipient"
* status = http://hl7.org/fhir/publication-status#draft "Draft"
* substance.strength.extension[strengthType].valueCodeableConcept = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.0692
* substance.strength.presentationRatio.numerator = $NCIT#C28253 "mg"
* substance.strength.presentationRatio.numerator.value = 102.5
* substance.strength.presentationRatio.denominator = $NCIT#C48542 "{tbl}"
* substance.strength.presentationRatio.denominator.value = 1

Instance: 533904dc-c2ec-4974-9cf9-874e17fd9f3e
InstanceOf: DrugProductDescription
Title: "Drug Product Description - NITAZOXANIDE"
Description: "Example Drug Product Description for 32P10" 
* description = """a drug product which contains nitazoxanide as its active ingredient"""
* combinedPharmaceuticalDoseForm = $NCIT#C42998 "TABLET"
* route = $NCIT#C38288 "ORAL"
* name[Proprietary].productName = "Nowstopthego 500 mg"
* name[NonProprietary].productName = "NITAZOXANIDE 500 mg"
* name[NonProprietary].part[+].part = "NITAZOXANIDE"
* name[NonProprietary].part[=].type = http://hl7.org/fhir/medicinal-product-name-part-type#ScientificNamePart "Scientific name part"
//* name[NonProprietary].type.text = "Non-Proprietary"

Instance: 0582135b-87a4-4076-8293-e61215f63374
InstanceOf: DrugProductContainerClosure
Title: "Drug Product Container Closure"
Description: "Example of a Drug Product Container Closure for 32P10"
* name.productName = "Nowstopthego 500 mg"
* name.type.text = "Proprietary"
* extension[mdpcontainerClosure].extension[description].valueMarkdown = """"""
* extension[mdpcontainerClosure].extension[containerType].valueCodeableConcept = $NCIT#C43168 "BLISTER PACK"
* extension[mdpcontainerClosure].extension[closureType].valueCodeableConcept = $NCIT#C96114 "Child-resistant, Plastic"
* name[NonProprietary].part[+].part = "NITAZOXANIDE"
* name[NonProprietary].part[=].type = http://hl7.org/fhir/medicinal-product-name-part-type#ScientificNamePart "Scientific name part"
* name[NonProprietary].productName = "NITAZOXANIDE"
* name[NonProprietary].type.text = "Non-Proprietary"

Instance: 15d09c40-0d0c-4f6a-a6f6-585bd21b01f3
InstanceOf: FinishedProduct
Title: "Manufactured Item deninition with parts"
Description: "Example of a drug product with parts for 32P10"
* identifier.value = "NitazoXanideProduct"
* status = 	http://hl7.org/fhir/publication-status#draft "Draft"
* name = "Nowstopthego 500 mg"
* property[OvrRelsProf].valueCodeableConcept.text = $RP#102 "ER"
* property[OvrRelsMech].valueCodeableConcept.text = $RM#106 "Matrix"
* property[CoatInd].valueBoolean = false
* property[WgtTyp].valueCodeableConcept = $NCIT#C168628 "Mass"
* manufacturedDoseForm = $NCIT#C42998 "TABLET"
* property[LayCnt].valueQuantity.value = 2
* property[Schematic].valueAttachment
  * data = """/9j/4AAQSkZJRgABAQEBLAEsAAD/7RE+UGhvdG9zaG9wIDMuMAA4QklNBCUAAAAAABAAAAAAAAAAAAAAAAAAAAAAOEJJTQQ6AAAAAADlAAAAEAAAAAEAAAAAAAtwcmludE91dHB1dAAAAAUAAAAAUHN0U2Jvb2wBAAAAAEludGVlbnVtAAAAAEludGUAAAAAQ2xybQAAAA9wcmludFNpeHRlZW5CaXRib29sAAAAAAtwcmludGVyTmFtZVRFWFQAAAABAAAAAAAPcHJpbnRQcm9vZlNldHVwT2JqYwAAAAwAUAByAG8AbwBmACAAUwBlAHQAdQBwAAAAAAAKcHJvb2ZTZXR1cAAAAAEAAAAAQmx0bmVudW0AAAAMYnVpbHRpblByb29mAAAACXByb29mQ01ZSwA4QklNBDsAAAAAAi0AAAAQAAAAAQAAAAAAEnByaW50T3V0cHV0T3B0aW9ucwAAABcAAAAAQ3B0bmJvb2wAAAAAAENsYnJib29sAAAAAABSZ3NNYm9vbAAAAAAAQ3JuQ2Jvb2wAAAAAAENudENib29sAAAAAABMYmxzYm9vbAAAAAAATmd0dmJvb2wAAAAAAEVtbERib29sAAAAAABJbnRyYm9vbAAAAAAAQmNrZ09iamMAAAABAAAAAAAAUkdCQwAAAAMAAAAAUmQgIGRvdWJAb+AAAAAAAAAAAABHcm4gZG91YkBv4AAAAAAAAAAAAEJsICBkb3ViQG/gAAAAAAAAAAAAQnJkVFVudEYjUmx0AAAAAAAAAAAAAAAAQmxkIFVudEYjUmx0AAAAAAAAAAAAAAAAUnNsdFVudEYjUHhsQHLAAAAAAAAAAAAKdmVjdG9yRGF0YWJvb2wBAAAAAFBnUHNlbnVtAAAAAFBnUHMAAAAAUGdQQwAAAABMZWZ0VW50RiNSbHQAAAAAAAAAAAAAAABUb3AgVW50RiNSbHQAAAAAAAAAAAAAAABTY2wgVW50RiNQcmNAWQAAAAAAAAAAABBjcm9wV2hlblByaW50aW5nYm9vbAAAAAAOY3JvcFJlY3RCb3R0b21sb25nAAAAAAAAAAxjcm9wUmVjdExlZnRsb25nAAAAAAAAAA1jcm9wUmVjdFJpZ2h0bG9uZwAAAAAAAAALY3JvcFJlY3RUb3Bsb25nAAAAAAA4QklNA+0AAAAAABABLAAAAAEAAQEsAAAAAQABOEJJTQQmAAAAAAAOAAAAAAAAAAAAAD+AAAA4QklNBA0AAAAAAAQAAABaOEJJTQQZAAAAAAAEAAAAHjhCSU0D8wAAAAAACQAAAAAAAAAAAQA4QklNJxAAAAAAAAoAAQAAAAAAAAABOEJJTQP1AAAAAABIAC9mZgABAGxmZgAGAAAAAAABAC9mZgABAKGZmgAGAAAAAAABADIAAAABAFoAAAAGAAAAAAABADUAAAABAC0AAAAGAAAAAAABOEJJTQP4AAAAAABwAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAADhCSU0EAAAAAAAAAgADOEJJTQQCAAAAAAAqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOEJJTQQwAAAAAAAVAQEBAQEBAQEBAQEBAQEBAQEBAQEBADhCSU0ELQAAAAAABgABAAAAHThCSU0ECAAAAAAAEAAAAAEAAAJAAAACQAAAAAA4QklNBB4AAAAAAAQAAAAAOEJJTQQaAAAAAANHAAAABgAAAAAAAAAAAAAIAAAACAAAAAAJAEgAZQByAG8ALgAwADAAOAAzAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAABAAAAABAAAAAAAAbnVsbAAAAAIAAAAGYm91bmRzT2JqYwAAAAEAAAAAAABSY3QxAAAABAAAAABUb3AgbG9uZwAAAAAAAAAATGVmdGxvbmcAAAAAAAAAAEJ0b21sb25nAAAIAAAAAABSZ2h0bG9uZwAACAAAAAAGc2xpY2VzVmxMcwAAAAFPYmpjAAAAAQAAAAAABXNsaWNlAAAAEgAAAAdzbGljZUlEbG9uZwAAAAAAAAAHZ3JvdXBJRGxvbmcAAAAAAAAABm9yaWdpbmVudW0AAAAMRVNsaWNlT3JpZ2luAAAADWF1dG9HZW5lcmF0ZWQAAAAAVHlwZWVudW0AAAAKRVNsaWNlVHlwZQAAAABJbWcgAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9wIGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAACAAAAAAAUmdodGxvbmcAAAgAAAAAA3VybFRFWFQAAAABAAAAAAAAbnVsbFRFWFQAAAABAAAAAAAATXNnZVRFWFQAAAABAAAAAAAGYWx0VGFnVEVYVAAAAAEAAAAAAA5jZWxsVGV4dElzSFRNTGJvb2wBAAAACGNlbGxUZXh0VEVYVAAAAAEAAAAAAAlob3J6QWxpZ25lbnVtAAAAD0VTbGljZUhvcnpBbGlnbgAAAAdkZWZhdWx0AAAACXZlcnRBbGlnbmVudW0AAAAPRVNsaWNlVmVydEFsaWduAAAAB2RlZmF1bHQAAAALYmdDb2xvclR5cGVlbnVtAAAAEUVTbGljZUJHQ29sb3JUeXBlAAAAAE5vbmUAAAAJdG9wT3V0c2V0bG9uZwAAAAAAAAAKbGVmdE91dHNldGxvbmcAAAAAAAAADGJvdHRvbU91dHNldGxvbmcAAAAAAAAAC3JpZ2h0T3V0c2V0bG9uZwAAAAAAOEJJTQQoAAAAAAAMAAAAAj/wAAAAAAAAOEJJTQQUAAAAAAAEAAAAKDhCSU0EDAAAAAAH8AAAAAEAAACgAAAAoAAAAeAAASwAAAAH1AAYAAH/2P/tAAxBZG9iZV9DTQAB/+4ADkFkb2JlAGSAAAAAAf/bAIQADAgICAkIDAkJDBELCgsRFQ8MDA8VGBMTFRMTGBEMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAENCwsNDg0QDg4QFA4ODhQUDg4ODhQRDAwMDAwREQwMDAwMDBEMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAoACgAwEiAAIRAQMRAf/dAAQACv/EAT8AAAEFAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAABBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHxY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0pbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9VSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSU//0PVUkkklKSSSSUpJJMSACSYA1JKSl0ll3dUse4txwGs7PcJJ82t/NVa05FwO+55ntMD/ADWbUwzHmxnLEbau062phhz2tPgSApAgiRqFy7q9hggf3qdGTdjO3Uv2+LeWn+sxL3PBaM2uoemSVXBzq8yske2xmj2eE9x/JcrSeDbKCCLCkkkkkqSSSSUpJJJJSkkkklP/0fVUkkklKSSSSUpUOr3FlDah/hTr/VH0v++q+sfrJP2hg7Bk/ef/ADFNmfSVmQ1AtNroRRbpCrgqUqJqquIIVQk9yrD9VWuBGo+aSQkxcw4mQy8cN0ePFh+mP+/tXWNc1zQ5plpEgjggriSV0X1ey/VxTjOPvxzA/qH+b/zf5tSQPRmxHWnVSSST2ZSSSSSlJJJJKUkkkkp//9L1VJJJJSkkkklKWT1pkWVP8QW/cZ/78tZVOpUG7FdAl1fvb8vpf9BCQsFbkFxIcNOoqSgaixQbGyCPFGUXhFTQOmh5Cs9Ny/sedXcTFbv0dv8AVd+d/Yfteg3tg7vHlCMEQeDyiD1Xg7F7pJZ/Q8z7VgNDzNtP6OzxMfQf/bYtBTA22QbFqSSSSSpJJJJSkkkklP8A/9P1VJJJJSkkkklKSSSSU89mUfZ8l9YEN+kz+qf/ACP0EELX6xRvpF4+lUfd/VP/AJFyyFDIUWrkjwyP2rpiE/mUJ92sMEkoLEdrNwI+74qmVpVY73y+wwBqVRymhtpLfou1Hx7pBIbnQsz7N1BrHGK8iK3f1v8AAu/zv0f/AFxdWuCPGhjzHI812XTMz7bhV3mN8bbQOz2+1/8A5JSQPRnxS6NtJJJPZVJJJJKUkkkkp//U9VSSSSUpJJJJSkkkklMXNa9pY4S1wII8iubvYaLX0u1cwxPiPzXf2mrplldZxxLMgD+Q/wDKwpkxYvsx5o3G+zkHc/n7giMY1o4+QTiE6iayz3Fwg8eHZVb2bmEDkahWihPCKnOWt9W8z0st2I4+zIG5nlY0f+jK/wDz0su5mywjsdQoNe+t7bKzFlbg9h/lNO5qING18ZUQXvkkHEyWZeNXk1/RtaHR4H85v9h3tRlM2lJJJJKUkkkkp//V9VSSSSUpJJMkpdJNKUpKXQ8ilt9L6ncPET4H8139lTkJSkp5khzXFrhDmkhw8xoU6udWo9PIFzfo2jX+sP8AyTVSCgIo01JDhJC6g4aKaYpLWllMlm7u3X5d1TWnYFk3n07HM8Dp8OyQSHofqtm+63Bcf+Fq/wCptb/nbH/210S8/wCmZho6piWAx+lax39Wz9C7/wA+Lv1LA6NjEbjXZdJJJOZFJJJJKf/W9VSSSSUsknTJKWKiSpEKJCSmJKYvITOQ3FJTHMAvx3V/nD3M/rD/AMl9BYwWnZYQs+5oFhI4dqP+/BMyDqw5o6cXbdimKUpKNgRWrG6qdtzD+83X5FbNixerGb62j81kn5n/AMxSC4btfDDrM7FY3l19QH+exemyuG+qvTnX9QGY8foMSSCeDaRDGf8AW2u9V/8A1pdq0qWA0bGMUPNInTBOnL1JJJJKf//X9VSSSSUpJJJJSyYp0xSUwcAgvb4I5CgQkpz72vjRZt7LZmTI1BW+5gPKBZisfyElOI23s4bXeHY/1VIuV23psztPyKp29OyW/QJHwMj/AKSjOPswyw/un7UN9tddZsscG1t5cf8AX6SpYOCzqNrsq9xFbj/Ns0dA0a1zz9D+yrLukF7w/IcbXD6IdJA+AV3GxXsjYIjwRjCt10MQG+rrYldVNLKqWiutghrG8D/X95WmqtjsO0SrTQnsjMJ0gE6SlJJJJKf/0PVUkkklKSSSSUsknTJKWhMWqSSSkZaolqNCaElISxRNQR9qW1JTX9Bp7JxS0dkfanhJSNrIRAITwnSUsnSSSUpJJJJT/9k4QklNBCEAAAAAAFcAAAABAQAAAA8AQQBkAG8AYgBlACAAUABoAG8AdABvAHMAaABvAHAAAAAUAEEAZABvAGIAZQAgAFAAaABvAHQAbwBzAGgAbwBwACAAMgAwADIAMQAAAAEAOEJJTQQGAAAAAAAHAAgAAAABAQD/4QkORXhpZgAATU0AKgAAAAgABwESAAMAAAABAAEAAAEaAAUAAAABAAAAYgEbAAUAAAABAAAAagEoAAMAAAABAAIAAAExAAIAAAAfAAAAcgEyAAIAAAAUAAAAkYdpAAQAAAABAAAAqAAAANQAAAEsAAAAAQAAASwAAAABQWRvYmUgUGhvdG9zaG9wIDIyLjUgKFdpbmRvd3MpADIwMjE6MTE6MDQgMTA6MDg6NTUAAAAAAAOgAQADAAAAAQABAACgAgAEAAAAAQAACACgAwAEAAAAAQAACAAAAAAAAAAABgEDAAMAAAABAAYAAAEaAAUAAAABAAABIgEbAAUAAAABAAABKgEoAAMAAAABAAIAAAIBAAQAAAABAAABMgICAAQAAAABAAAH1AAAAAAAAAEsAAAAAQAAASwAAAAB/9j/7QAMQWRvYmVfQ00AAf/uAA5BZG9iZQBkgAAAAAH/2wCEAAwICAgJCAwJCQwRCwoLERUPDAwPFRgTExUTExgRDAwMDAwMEQwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwBDQsLDQ4NEA4OEBQODg4UFA4ODg4UEQwMDAwMEREMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/AABEIAKAAoAMBIgACEQEDEQH/3QAEAAr/xAE/AAABBQEBAQEBAQAAAAAAAAADAAECBAUGBwgJCgsBAAEFAQEBAQEBAAAAAAAAAAEAAgMEBQYHCAkKCxAAAQQBAwIEAgUHBggFAwwzAQACEQMEIRIxBUFRYRMicYEyBhSRobFCIyQVUsFiMzRygtFDByWSU/Dh8WNzNRaisoMmRJNUZEXCo3Q2F9JV4mXys4TD03Xj80YnlKSFtJXE1OT0pbXF1eX1VmZ2hpamtsbW5vY3R1dnd4eXp7fH1+f3EQACAgECBAQDBAUGBwcGBTUBAAIRAyExEgRBUWFxIhMFMoGRFKGxQiPBUtHwMyRi4XKCkkNTFWNzNPElBhaisoMHJjXC0kSTVKMXZEVVNnRl4vKzhMPTdePzRpSkhbSVxNTk9KW1xdXl9VZmdoaWprbG1ub2JzdHV2d3h5ent8f/2gAMAwEAAhEDEQA/APVUkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklKSSSSUpJJJJSkkkklP/9D1VJJJJSkkkklKSSTEgAkmANSSkpdJZd3VLHuLccBrOz3CSfNrfzVWtORcDvueZ7TA/wA1m1MMx5sZyxG2rtOtqYYc9rT4EgKQIIkahcu6vYYIH96nRk3Yzt1L9vi3lp/rMS9zwWjNrqHpklVwc6vMrJHtsZo9nhPcfyXK0ng2yggiwpJJJJKkkkklKSSSSUpJJJJT/9H1VJJJJSkkkklKVDq9xZQ2of4U6/1R9L/vqvrH6yT9oYOwZP3n/wAxTZn0lZkNQLTa6EUW6Qq4KlKiaqriCFUJPcqw/VVrgRqPmkkJMXMOJkMvHDdHjxYfpj/v7V1jXNc0OaZaRII4IK4kldF9Xsv1cU4zj78cwP6h/m/83+bUkD0ZsR1p1Ukkk9mUkkkkpSSSSSlJJJJKf//S9VSSSSUpJJJJSlk9aZFlT/EFv3Gf+/LWVTqVBuxXQJdX72/L6X/QQkLBW5BcSHDTqKkoGosUGxsgjxRlF4RU0DpoeQrPTcv7HnV3ExW79Hb/AFXfnf2H7XoN7YO7x5QjBEHg8og9V4Oxe6SWf0PM+1YDQ8zbT+js8TH0H/22LQUwNtkGxakkkkkqSSSSUpJJJJT/AP/T9VSSSSUpJJJJSkkkklPPZlH2fJfWBDfpM/qn/wAj9BBC1+sUb6RePpVH3f1T/wCRcshQyFFq5I8Mj9q6YhP5lCfdrDBJKCxHazcCPu+KplaVWO98vsMAalUcpobaS36LtR8e6QSG50LM+zdQaxxivIit39b/AALv879H/wBcXVrgjxoY8xyPNdl0zM+24Vd5jfG20Ds9vtf/AOSUkD0Z8UujbSSST2VSSSSSlJJJJKf/1PVUkkklKSSSSUpJJJJTFzWvaWOEtcCCPIrm72Gi19LtXMMT4j8139pq6ZZXWccSzIA/kP8AysKZMWL7MeaNxvs5B3P5+4IjGNaOPkE4hOomss9xcIPHh2VW9m5hA5GoVooTwipzlrfVvM9LLdiOPsyBuZ5WNH/oyv8A89LLuZssI7HUKDXvre2ysxZW4PYf5TTuaiDRtfGVEF75JBxMlmXjV5Nf0bWh0eB/Ob/Yd7UZTNpSSSSSlJJJJKf/1fVUkkklKSSTJKXSTSlKSl0PIpbfS+p3DxE+B/Nd/ZU5CUpKeZIc1xa4Q5pIcPMaFOrnVqPTyBc36No1/rD/AMk1UgoCKNNSQ4SQuoOGimmKS1pZTJZu7t1+XdU1p2BZN59OxzPA6fDskEh6H6rZvutwXH/hav8AqbW/52x/9tdEvP8ApmYaOqYlgMfpWsd/Vs/Qu/8APi79SwOjYxG412XSSSTmRSSSSSn/1vVUkkklLJJ0ySliokqRCiQkpiSmLyEzkNxSUxzAL8d1f5w9zP6w/wDJfQWMFp2WELPuaBYSOHaj/vwTMg6sOaOnF23YpilKSjYEVqxuqnbcw/vN1+RWzYsXqxm+to/NZJ+Z/wDMUguG7Xww6zOxWN5dfUB/nsXpsrhvqr051/UBmPH6DEkgng2kQxn/AFtrvVf/ANaXatKlgNGxjFDzSJ0wTpy9SSSSSn//1/VUkkklKSSSSUsmKdMUlMHAIL2+COQoEJKc+9r40Wbey2ZkyNQVvuYDygWYrH8hJTiNt7OG13h2P9VSLldt6bM7T8iqdvTslv0CR8DI/wCkozj7MMsP7p+1DfbXXWbLHBtbeXH/AF+kqWDgs6ja7KvcRW4/zbNHQNGtc8/Q/sqy7pBe8PyHG1w+iHSQPgFdxsV7I2CI8EYwrddDEBvq62JXVTSyqlorrYIaxvA/1/eVpqrY7DtEq00J7IzCdIBOkpSSSSSn/9D1VJJJJSkkkklLJJ0ySloTFqkkkpGWqJajQmhJSEsUTUEfaltSU1/QaeycUtHZH2p4SUjayEQCE8J0lLJ0kklKSSSSU//Z/+IMWElDQ19QUk9GSUxFAAEBAAAMSExpbm8CEAAAbW50clJHQiBYWVogB84AAgAJAAYAMQAAYWNzcE1TRlQAAAAASUVDIHNSR0IAAAAAAAAAAAAAAAEAAPbWAAEAAAAA0y1IUCAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARY3BydAAAAVAAAAAzZGVzYwAAAYQAAABsd3RwdAAAAfAAAAAUYmtwdAAAAgQAAAAUclhZWgAAAhgAAAAUZ1hZWgAAAiwAAAAUYlhZWgAAAkAAAAAUZG1uZAAAAlQAAABwZG1kZAAAAsQAAACIdnVlZAAAA0wAAACGdmlldwAAA9QAAAAkbHVtaQAAA/gAAAAUbWVhcwAABAwAAAAkdGVjaAAABDAAAAAMclRSQwAABDwAAAgMZ1RSQwAABDwAAAgMYlRSQwAABDwAAAgMdGV4dAAAAABDb3B5cmlnaHQgKGMpIDE5OTggSGV3bGV0dC1QYWNrYXJkIENvbXBhbnkAAGRlc2MAAAAAAAAAEnNSR0IgSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAADzUQABAAAAARbMWFlaIAAAAAAAAAAAAAAAAAAAAABYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9kZXNjAAAAAAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZGVzYwAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGRlc2MAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAACxSZWZlcmVuY2UgVmlld2luZyBDb25kaXRpb24gaW4gSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2aWV3AAAAAAATpP4AFF8uABDPFAAD7cwABBMLAANcngAAAAFYWVogAAAAAABMCVYAUAAAAFcf521lYXMAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAKPAAAAAnNpZyAAAAAAQ1JUIGN1cnYAAAAAAAAEAAAAAAUACgAPABQAGQAeACMAKAAtADIANwA7AEAARQBKAE8AVABZAF4AYwBoAG0AcgB3AHwAgQCGAIsAkACVAJoAnwCkAKkArgCyALcAvADBAMYAywDQANUA2wDgAOUA6wDwAPYA+wEBAQcBDQETARkBHwElASsBMgE4AT4BRQFMAVIBWQFgAWcBbgF1AXwBgwGLAZIBmgGhAakBsQG5AcEByQHRAdkB4QHpAfIB+gIDAgwCFAIdAiYCLwI4AkECSwJUAl0CZwJxAnoChAKOApgCogKsArYCwQLLAtUC4ALrAvUDAAMLAxYDIQMtAzgDQwNPA1oDZgNyA34DigOWA6IDrgO6A8cD0wPgA+wD+QQGBBMEIAQtBDsESARVBGMEcQR+BIwEmgSoBLYExATTBOEE8AT+BQ0FHAUrBToFSQVYBWcFdwWGBZYFpgW1BcUF1QXlBfYGBgYWBicGNwZIBlkGagZ7BowGnQavBsAG0QbjBvUHBwcZBysHPQdPB2EHdAeGB5kHrAe/B9IH5Qf4CAsIHwgyCEYIWghuCIIIlgiqCL4I0gjnCPsJEAklCToJTwlkCXkJjwmkCboJzwnlCfsKEQonCj0KVApqCoEKmAquCsUK3ArzCwsLIgs5C1ELaQuAC5gLsAvIC+EL+QwSDCoMQwxcDHUMjgynDMAM2QzzDQ0NJg1ADVoNdA2ODakNww3eDfgOEw4uDkkOZA5/DpsOtg7SDu4PCQ8lD0EPXg96D5YPsw/PD+wQCRAmEEMQYRB+EJsQuRDXEPURExExEU8RbRGMEaoRyRHoEgcSJhJFEmQShBKjEsMS4xMDEyMTQxNjE4MTpBPFE+UUBhQnFEkUahSLFK0UzhTwFRIVNBVWFXgVmxW9FeAWAxYmFkkWbBaPFrIW1hb6Fx0XQRdlF4kXrhfSF/cYGxhAGGUYihivGNUY+hkgGUUZaxmRGbcZ3RoEGioaURp3Gp4axRrsGxQbOxtjG4obshvaHAIcKhxSHHscoxzMHPUdHh1HHXAdmR3DHeweFh5AHmoelB6+HukfEx8+H2kflB+/H+ogFSBBIGwgmCDEIPAhHCFIIXUhoSHOIfsiJyJVIoIiryLdIwojOCNmI5QjwiPwJB8kTSR8JKsk2iUJJTglaCWXJccl9yYnJlcmhya3JugnGCdJJ3onqyfcKA0oPyhxKKIo1CkGKTgpaymdKdAqAio1KmgqmyrPKwIrNitpK50r0SwFLDksbiyiLNctDC1BLXYtqy3hLhYuTC6CLrcu7i8kL1ovkS/HL/4wNTBsMKQw2zESMUoxgjG6MfIyKjJjMpsy1DMNM0YzfzO4M/E0KzRlNJ402DUTNU01hzXCNf02NzZyNq426TckN2A3nDfXOBQ4UDiMOMg5BTlCOX85vDn5OjY6dDqyOu87LTtrO6o76DwnPGU8pDzjPSI9YT2hPeA+ID5gPqA+4D8hP2E/oj/iQCNAZECmQOdBKUFqQaxB7kIwQnJCtUL3QzpDfUPARANER0SKRM5FEkVVRZpF3kYiRmdGq0bwRzVHe0fASAVIS0iRSNdJHUljSalJ8Eo3Sn1KxEsMS1NLmkviTCpMcky6TQJNSk2TTdxOJU5uTrdPAE9JT5NP3VAnUHFQu1EGUVBRm1HmUjFSfFLHUxNTX1OqU/ZUQlSPVNtVKFV1VcJWD1ZcVqlW91dEV5JX4FgvWH1Yy1kaWWlZuFoHWlZaplr1W0VblVvlXDVchlzWXSddeF3JXhpebF69Xw9fYV+zYAVgV2CqYPxhT2GiYfViSWKcYvBjQ2OXY+tkQGSUZOllPWWSZedmPWaSZuhnPWeTZ+loP2iWaOxpQ2maafFqSGqfavdrT2una/9sV2yvbQhtYG25bhJua27Ebx5veG/RcCtwhnDgcTpxlXHwcktypnMBc11zuHQUdHB0zHUodYV14XY+dpt2+HdWd7N4EXhueMx5KnmJeed6RnqlewR7Y3vCfCF8gXzhfUF9oX4BfmJ+wn8jf4R/5YBHgKiBCoFrgc2CMIKSgvSDV4O6hB2EgITjhUeFq4YOhnKG14c7h5+IBIhpiM6JM4mZif6KZIrKizCLlov8jGOMyo0xjZiN/45mjs6PNo+ekAaQbpDWkT+RqJIRknqS45NNk7aUIJSKlPSVX5XJljSWn5cKl3WX4JhMmLiZJJmQmfyaaJrVm0Kbr5wcnImc951kndKeQJ6unx2fi5/6oGmg2KFHobaiJqKWowajdqPmpFakx6U4pammGqaLpv2nbqfgqFKoxKk3qamqHKqPqwKrdavprFys0K1ErbiuLa6hrxavi7AAsHWw6rFgsdayS7LCszizrrQltJy1E7WKtgG2ebbwt2i34LhZuNG5SrnCuju6tbsuu6e8IbybvRW9j74KvoS+/796v/XAcMDswWfB48JfwtvDWMPUxFHEzsVLxcjGRsbDx0HHv8g9yLzJOsm5yjjKt8s2y7bMNcy1zTXNtc42zrbPN8+40DnQutE80b7SP9LB00TTxtRJ1MvVTtXR1lXW2Ndc1+DYZNjo2WzZ8dp22vvbgNwF3IrdEN2W3hzeot8p36/gNuC94UThzOJT4tvjY+Pr5HPk/OWE5g3mlucf56noMui86Ubp0Opb6uXrcOv77IbtEe2c7ijutO9A78zwWPDl8XLx//KM8xnzp/Q09ML1UPXe9m32+/eK+Bn4qPk4+cf6V/rn+3f8B/yY/Sn9uv5L/tz/bf///+EQvWh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8APD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNy4xLWMwMDAgNzkuN2E3YTIzNiwgMjAyMS8wOC8xMi0wMDoyNToyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCAyMi41IChXaW5kb3dzKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjEtMTEtMDRUMTA6MDg6NTAtMDU6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMjEtMTEtMDRUMTA6MDg6NTUtMDU6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDIxLTExLTA0VDEwOjA4OjU1LTA1OjAwIiBkYzpmb3JtYXQ9ImltYWdlL2pwZWciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjZhMjkyNTMtMjg5Yi1lMjRiLWE1NjYtZDg1YTUzOWUzNWRmIiB4bXBNTTpEb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6YjlkODU2NTctYmVjZi05MDQ0LWIxZWEtNzMxZWVkMGE2ZWUxIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MTJhM2ExNTktYjU4Yi1mMDQ1LWEyN2MtZWMzZTZiOWFkZjQ3IiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0ic1JHQiBJRUM2MTk2Ni0yLjEiPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJjcmVhdGVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjEyYTNhMTU5LWI1OGItZjA0NS1hMjdjLWVjM2U2YjlhZGY0NyIgc3RFdnQ6d2hlbj0iMjAyMS0xMS0wNFQxMDowODo1MC0wNTowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIDIyLjUgKFdpbmRvd3MpIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpjMjA3OGE2Zi0yN2U1LTFkNDgtOTc1Yi1iYjA5NTUxNzAxMDgiIHN0RXZ0OndoZW49IjIwMjEtMTEtMDRUMTA6MDg6NTUtMDU6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyMi41IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AgdG8gaW1hZ2UvanBlZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iZGVyaXZlZCIgc3RFdnQ6cGFyYW1ldGVycz0iY29udmVydGVkIGZyb20gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCB0byBpbWFnZS9qcGVnIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoyNmEyOTI1My0yODliLWUyNGItYTU2Ni1kODVhNTM5ZTM1ZGYiIHN0RXZ0OndoZW49IjIwMjEtMTEtMDRUMTA6MDg6NTUtMDU6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyMi41IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6YzIwNzhhNmYtMjdlNS0xZDQ4LTk3NWItYmIwOTU1MTcwMTA4IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjEyYTNhMTU5LWI1OGItZjA0NS1hMjdjLWVjM2U2YjlhZGY0NyIgc3RSZWY6b3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjEyYTNhMTU5LWI1OGItZjA0NS1hMjdjLWVjM2U2YjlhZGY0NyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8P3hwYWNrZXQgZW5kPSJ3Ij8+/9sAQwABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQECAgEBAgEBAQICAgICAgICAgECAgICAgICAgIC/9sAQwEBAQEBAQEBAQEBAgEBAQICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC/8AAEQgCWAJYAwERAAIRAQMRAf/EAB4AAQABBAMBAQAAAAAAAAAAAAADAQIEBQYHCQgK/8QARxAAAQMCBAQDBwIFAwIEBQQDAQACEQMhBBIxQQUiUWEGcYEHEzKRobHwQsEIFFLR4RUj8QliFiRDghclM1NyNIOSskRzov/EABwBAQACAwEBAQAAAAAAAAAAAAABAgMGBwQFCP/EAEQRAQABAgMFBAYIBAUEAgMBAAABAhEDITEEQVFh8AUScYEGIpGhscETFDJygtHh8SNCUpIHFWKisiQzQ1M1Y3PC0uL/2gAMAwEAAhEDEQA/AP38ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg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"""
  * title = "G03.jpg"
  * contentType = urn:ietf:bcp:13#image/jpeg
* property[TotWgtNum].valueQuantity = $UCUM#mg "milligram"
* property[TotWgtNum].valueQuantity.value = 1481
* property[TotWgtDen].valueQuantity = $UCUM#{tbl} "tablet"
* property[TotWgtDen].valueQuantity.value = 1
* component[+].type = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-part-type#155 "Bead"
* component[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].amount[Numerator].value = 300
* component[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].amount[Denominator].value = 1
* component[=].property[PPiD].valueCodeableConcept.text = "ImmediateReleaseLayer2"
* component[=].property[RelsProf].valueCodeableConcept = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-release-profile#101 "DR"
* component[=].property[ContPercent].valueQuantity.value = 0.2026
* component[=].property[StrnType].valueCodeableConcept = $NCIT#C168628 "Mass"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:a8b37824-6be3-4519-9cbf-3651ef8f0af9)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 175
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.1182
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C82533 "Active Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:c737cca8-d8d7-42ba-8eea-cc4c13b2b279)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 36
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0243
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:0b39649a-9e43-48f8-8c92-5bf289409714)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0034
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:646f1115-2aad-4f0f-b7bc-a690a3d30b5b)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 7.5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0051
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:1f8abd13-b06a-4b28-b5de-4d5680be805d)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 1
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0007
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:1019ae87-0010-4cd0-b6e9-13e581009b43)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 2.5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0155
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:e9042a05-de7e-4674-9a2d-0cac4a7144c1)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 23
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0017
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:54d2699b-0efa-46e6-ac47-c92ff890b422)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 50
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0338
* component[=].constituent[=].location.text = "Immediate Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[+].type = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-part-type#155 "Bead"
* component[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].amount[Numerator].value = 371
* component[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].amount[Denominator].value = 1
* component[=].property[PPiD].valueCodeableConcept.text = "NitazoxanideTabletCoating"
* component[=].property[RelsProf].valueCodeableConcept = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-release-profile#101 "DR"
* component[=].property[ContPercent].valueQuantity.value = 0.2505
* component[=].property[Color].valueCodeableConcept.text = "pale green"
* component[=].property[StrnType].valueCodeableConcept = $NCIT#C168628 "Mass"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:25de86cc-fbab-47d4-b410-c8e6bdf53ebb)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 40
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0047
* component[=].constituent[=].location.text = "Coating"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:b69f8d81-2a78-48e5-b190-fbd916285af1)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.002
* component[=].constituent[=].location.text = "Coating"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:54d2699b-0efa-46e6-ac47-c92ff890b422)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 326
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0405
* component[=].constituent[=].location.text = "Coating"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[+].type = http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-product-part-type#155 "Bead"
* component[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].amount[Numerator].value = 810
* component[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].amount[Denominator].value = 1
* component[=].property[PPiD].valueCodeableConcept.text = "Controlled Release Layer1"
* component[=].property[RelsProf].valueCodeableConcept = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-release-profile#101 "DR"
* component[=].property[ContPercent].valueQuantity.value = 0.5469
* component[=].property[StrnType].valueCodeableConcept = $NCIT#C168628 "Mass"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:a8b37824-6be3-4519-9cbf-3651ef8f0af9)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 500
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.027
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C82533 "Active Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:0b39649a-9e43-48f8-8c92-5bf289409714)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 2.5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0034
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:9b7c6fed-ca72-41bb-bc8e-6eff32662e40)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 135
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.2201
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:6c7187af-c9d8-4ca5-80b9-b3af9d444658)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 102.5
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.3376
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:1019ae87-0010-4cd0-b6e9-13e581009b43)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 7
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0017
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:1f8abd13-b06a-4b28-b5de-4d5680be805d)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 3
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0912
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"
* component[=].constituent[+].hasIngredient.reference = Reference(urn:uuid:54d2699b-0efa-46e6-ac47-c92ff890b422)
* component[=].constituent[=].amount[Numerator] = $UCUM#mg "milligram"
* component[=].constituent[=].amount[Numerator].value = 60
* component[=].constituent[=].amount[Denominator] = $UCUM#{tbl} "tablet"
* component[=].constituent[=].amount[Denominator].value = 1
* component[=].constituent[=].amount[ContPercent].value = 0.0692
* component[=].constituent[=].location.text = "Controlled Release Layer"
* component[=].constituent[=].function[Category] = $NCIT#C42637 "Inactive Ingredient"

Instance: c0ed7a77-88c2-4afc-9ace-11bf19fba5ee
InstanceOf: EctdComposition32P10
Title: "Composition for 32P10 "
Description: "Example of 32P10 with Product description, container closure and product composition"
* author = Reference(f202eec3-f460-4bb8-9e6a-d09e12c5f16a)
* date = 2023-03-03T03:53:03.743Z
* title = "eCTD Product Description and Composition for NitazoXanideProduct"
* section[ProductDescription].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ProductDescription].title = "Product Description for NitazoXanideProduct"
* section[ProductDescription].entry = Reference(533904dc-c2ec-4974-9cf9-874e17fd9f3e)
* section[ContainerClosure].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ContainerClosure].title = "Container Closure Description for NitazoXanideProduct"
* section[ContainerClosure].entry = Reference(0582135b-87a4-4076-8293-e61215f63374)
* section[ProductComposition].code = pqcmc-comp-section-types#32P12 "Product Composition"
* section[ProductComposition].title = "Product Composition for NitazoXanideProduct"
* section[ProductComposition].entry = Reference(15d09c40-0d0c-4f6a-a6f6-585bd21b01f3)

Instance: 6929592c-228f-4e98-9ed7-ffe9d11f2d03
InstanceOf: CMCeCTDDocument32P10
Title: "eCTD Document 32P10 Bundle"
Description: "Example of 32P10 with layered tablet"
* timestamp = 2023-03-03T03:53:03.743Z
* entry[Composition].resource = c0ed7a77-88c2-4afc-9ace-11bf19fba5ee
* entry[Composition].fullUrl = "urn:uuid:c0ed7a77-88c2-4afc-9ace-11bf19fba5ee"
* entry[MedicinalProductDefinition].resource = 533904dc-c2ec-4974-9cf9-874e17fd9f3e
* entry[MedicinalProductDefinition].fullUrl = "urn:uuid:533904dc-c2ec-4974-9cf9-874e17fd9f3e"
* entry[MedicinalProductContainer].resource = 0582135b-87a4-4076-8293-e61215f63374
* entry[MedicinalProductContainer].fullUrl = "urn:uuid:0582135b-87a4-4076-8293-e61215f63374"
* entry[ManufacturedItemDefinition].resource = 15d09c40-0d0c-4f6a-a6f6-585bd21b01f3
* entry[ManufacturedItemDefinition].fullUrl = "urn:uuid:15d09c40-0d0c-4f6a-a6f6-585bd21b01f3"
* entry[Ingredient][+].resource = a8b37824-6be3-4519-9cbf-3651ef8f0af9
* entry[Ingredient][=].fullUrl = "urn:uuid:a8b37824-6be3-4519-9cbf-3651ef8f0af9"
* entry[Ingredient][+].resource = c737cca8-d8d7-42ba-8eea-cc4c13b2b279
* entry[Ingredient][=].fullUrl = "urn:uuid:c737cca8-d8d7-42ba-8eea-cc4c13b2b279"
* entry[Ingredient][+].resource = 0b39649a-9e43-48f8-8c92-5bf289409714
* entry[Ingredient][=].fullUrl = "urn:uuid:0b39649a-9e43-48f8-8c92-5bf289409714"
* entry[Ingredient][+].resource = 646f1115-2aad-4f0f-b7bc-a690a3d30b5b
* entry[Ingredient][=].fullUrl = "urn:uuid:646f1115-2aad-4f0f-b7bc-a690a3d30b5b"
* entry[Ingredient][+].resource = 1f8abd13-b06a-4b28-b5de-4d5680be805d
* entry[Ingredient][=].fullUrl = "urn:uuid:1f8abd13-b06a-4b28-b5de-4d5680be805d"
* entry[Ingredient][+].resource = 1019ae87-0010-4cd0-b6e9-13e581009b43
* entry[Ingredient][=].fullUrl = "urn:uuid:1019ae87-0010-4cd0-b6e9-13e581009b43"
* entry[Ingredient][+].resource = e9042a05-de7e-4674-9a2d-0cac4a7144c1
* entry[Ingredient][=].fullUrl = "urn:uuid:e9042a05-de7e-4674-9a2d-0cac4a7144c1"
* entry[Ingredient][+].resource = 54d2699b-0efa-46e6-ac47-c92ff890b422
* entry[Ingredient][=].fullUrl = "urn:uuid:54d2699b-0efa-46e6-ac47-c92ff890b422"
* entry[Ingredient][+].resource = 25de86cc-fbab-47d4-b410-c8e6bdf53ebb
* entry[Ingredient][=].fullUrl = "urn:uuid:25de86cc-fbab-47d4-b410-c8e6bdf53ebb"
* entry[Ingredient][+].resource = b69f8d81-2a78-48e5-b190-fbd916285af1
* entry[Ingredient][=].fullUrl = "urn:uuid:b69f8d81-2a78-48e5-b190-fbd916285af1"
* entry[Ingredient][+].resource = 9b7c6fed-ca72-41bb-bc8e-6eff32662e40
* entry[Ingredient][=].fullUrl = "urn:uuid:9b7c6fed-ca72-41bb-bc8e-6eff32662e40"
* entry[Ingredient][+].resource = 6c7187af-c9d8-4ca5-80b9-b3af9d444658
* entry[Ingredient][=].fullUrl = "urn:uuid:6c7187af-c9d8-4ca5-80b9-b3af9d444658"
* entry[SubstanceDefinition][+].resource = d860b368-2de7-40e9-9f8a-1dd2b5c75ca6
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:d860b368-2de7-40e9-9f8a-1dd2b5c75ca6"
* entry[SubstanceDefinition][+].resource = 0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a"
* entry[SubstanceDefinition][+].resource = f201f024-e53c-43cd-bfc9-2b5cbb7f79da
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:f201f024-e53c-43cd-bfc9-2b5cbb7f79da"
* entry[SubstanceDefinition][+].resource = aa200c60-3cf4-47e0-9afc-a3693f0d0a08
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:aa200c60-3cf4-47e0-9afc-a3693f0d0a08"
* entry[SubstanceDefinition][+].resource = adfe47f8-afc6-4e38-8bc5-473b6d40fdc9
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:adfe47f8-afc6-4e38-8bc5-473b6d40fdc9"
* entry[SubstanceDefinition][+].resource = 25a9214e-c913-4935-a794-3646793530ed
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:25a9214e-c913-4935-a794-3646793530ed"
* entry[SubstanceDefinition][+].resource = a200db80-d7bb-46fa-b6c1-049c2d1ed07b
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:a200db80-d7bb-46fa-b6c1-049c2d1ed07b"
* entry[SubstanceDefinition][+].resource = 7d9aadeb-096a-4685-b234-774aedb0bdd7
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:7d9aadeb-096a-4685-b234-774aedb0bdd7"
* entry[SubstanceDefinition][+].resource = e35cbed2-cc09-4e15-a1c2-a71c8989297e
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:e35cbed2-cc09-4e15-a1c2-a71c8989297e"
* entry[SubstanceDefinition][+].resource = 29c88a54-f014-4bd1-9a6a-2da0e033b8da
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:29c88a54-f014-4bd1-9a6a-2da0e033b8da"
* entry[SubstanceDefinition][+].resource = 5863a14d-6589-484b-8ad4-939a050071b3
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:5863a14d-6589-484b-8ad4-939a050071b3"
* entry[SubstanceDefinition][+].resource = bd41540d-0799-4999-a020-4b8e478bd81a
* entry[SubstanceDefinition][=].fullUrl = "urn:uuid:bd41540d-0799-4999-a020-4b8e478bd81a"
* entry[Organization][+].resource = 4f25eb50-6763-44c6-b4f4-def04382918e
* entry[Organization][=].fullUrl = "urn:uuid:4f25eb50-6763-44c6-b4f4-def04382918e"
* entry[Organization][+].resource = 28629bd0-7744-4c57-abba-e138196f82fa
* entry[Organization][=].fullUrl = "urn:uuid:28629bd0-7744-4c57-abba-e138196f82fa"
* entry[Organization][+].resource = 9949f8af-99c9-4930-a766-752d7d65b1ab
* entry[Organization][=].fullUrl = "urn:uuid:9949f8af-99c9-4930-a766-752d7d65b1ab"
* entry[Organization][+].resource = f202eec3-f460-4bb8-9e6a-d09e12c5f16a
* entry[Organization][=].fullUrl = "urn:uuid:f202eec3-f460-4bb8-9e6a-d09e12c5f16a"
