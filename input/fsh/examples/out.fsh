Instance: b25b14f4-feaa-4fce-b9d6-7019ad607b5b
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

Instance: fbb085ae-63de-4487-8450-a4f4bfb52c86
InstanceOf: RoutineDrugProduct
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-routine-drug-product"
* identifier.value = "Example1Drug"
* combinedPharmaceuticalDoseForm = $NCIT#C42964 "TABLET, MULTILAYER"
* route = $NCIT#C38288 "ORAL"
* name[NonProprietary].part[Scientific][+].part = "ASPIRIN"
* name[NonProprietary].part[Strength][+].part = "200mg"
* name[NonProprietary].part[Scientific][+].part = "ACETAMINOPHEN"
* name[NonProprietary].part[Strength][+].part = "300mg"
* name[NonProprietary].productName = "ASPIRIN 200mg, ACETAMINOPHEN 300mg"
* name[NonProprietary].type.text = "Non-Proprietary"

Instance: ad4e9e5c-e0d7-406c-8cc3-a080d0e0f059
InstanceOf: QualitySpecification
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-quality-specification"
* extension[specificationType].valueCodeableConcept = $NCIT#C134021 "Drug Product"
* identifier.value = "CascadeImpactor"
* version = "1.0"
* title = "Cascade Impactor Test Specification Example"
* status = #active
* subjectReference = Reference(fbb085ae-63de-4487-8450-a4f4bfb52c86)
* date = 2023-11-27
* useContext.valueCodeableConcept = $NCIT#C48660 "Not Applicable"
* goal[+]
  * id = "b3ae4dc0-dc36-40f9-ae00-b2783c0310e7"
  * description.text = "Mean FPM"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "3.7ug - 5.9ug"
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 3.7 $NCIT#C48152 "microgram"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 5.9 $NCIT#C48152 "microgram"
* goal[+]
  * id = "2e50492c-65b9-4add-a8a5-433965ab33d4"
  * description.text = "Total Impactor Mass"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "Record Amount"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 0 $NCIT#C48152 "microgram"
* goal[+]
  * id = "737cebc8-e704-4cc0-8d02-c39c70672fae"
  * description.text = "Mean %FPF"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "Record Amount"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailQuantity = 0 $NCIT#C48152 "microgram"
* goal[+]
  * id = "b3c6922b-2018-415e-b320-c54258255c71"
  * description.text = "Mean Throat Group"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "ug per actuation"
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 1.3 $NCIT#C48152 "microgram"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 3.1 $NCIT#C48152 "microgram"
* goal[+]
  * id = "14bfb10b-27fc-46b2-a136-1a48956327d0"
  * description.text = "Mean Alveoli Group"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "ug per actuation"
    * detailQuantity.extension[interpretationCode].valueCodeableConcept = $NCIT#C61585 "LT (less than)"
    * detailQuantity = 0.8 $NCIT#C48152 "microgram"
* goal[+]
  * id = "edf7a57b-aa14-4a38-8c87-024a00cebd1f"
  * description.text = "Mean Bronchi Group"
  * addresses[+] = $NCIT#Release
  * addresses[+] = $NCIT#Stability
  * target[+]
    * measure.text = "ug per actuation"
    * detailRange.low.extension[interpretationCodeLow].valueCodeableConcept = $NCIT#C61583 "NLT (not less than)"
    * detailRange.low = 3.5 $NCIT#C48152 "microgram"
    * detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept = $NCIT#C61586 "NMT (not more than)"
    * detailRange.high = 5.9 $NCIT#C48152 "microgram"
* action[+]
  * id = "ed38d37a-e7f9-44a1-99b6-188c507685a7"
  * extension[testOrder].valueDecimal = 1
  * title = "Cascade Impactor"
  * code
    * coding = $NCIT#C96103 "Proprietary"
    * text = "NA"
  * reason[+].coding = $NCIT#TC15 "Particle Size Distribution"
  * documentation.type = #documentation
  * documentation.label = "NA"
  * action
    * extension[stageOrder].valueDecimal = 1.0
    * prefix = "Single Stage"
    * title = "Cascade Impactor Total"
    * goalId[+] = "b3ae4dc0-dc36-40f9-ae00-b2783c0310e7"
    * goalId[+] = "2e50492c-65b9-4add-a8a5-433965ab33d4"
    * goalId[+] = "737cebc8-e704-4cc0-8d02-c39c70672fae"
    * action[+]
      * extension[testOrder].valueDecimal = 1
      * title = "Throat"
      * goalId[+] = "b3c6922b-2018-415e-b320-c54258255c71"
    * action[+]
      * extension[testOrder].valueDecimal = 3
      * title = "Alveoli"
      * goalId[+] = "14bfb10b-27fc-46b2-a136-1a48956327d0"
    * action[+]
      * extension[testOrder].valueDecimal = 2
      * title = "Bronchi"
      * goalId[+] = "edf7a57b-aa14-4a38-8c87-024a00cebd1f"

Instance: ffa42f99-392e-4441-ae4e-7b286c070d0d
InstanceOf: EctdCompositionSP4151
* meta.profile = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/ectd-composition-sp4151"
* identifier.value = "CascadeImpactor"
* status = #final
* type.coding = $SectionTypes#SP4151 "Quality Specification"
* author = Reference(b25b14f4-feaa-4fce-b9d6-7019ad607b5b)
* date = 2023-11-27T22:02:06.022Z
* title = """Cascade Impactor Test Specification Example"""
* section[DrugProduct]
  * code = $SectionTypes#32P51 "Product Specification"
  * title = "32P51"
  * entry = Reference(ad4e9e5c-e0d7-406c-8cc3-a080d0e0f059)

Instance: 1716d9d8-b277-40f6-ab5d-885aac09a409
InstanceOf: CMCeCTDDocumentSP4151
* meta.profile.extension[version].valueString = "0.1.15"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:39816be4-7003-4786-9d95-775bcb04c0b2"
* timestamp = 2023-11-27T22:02:06.022Z
* entry[0].resource = ffa42f99-392e-4441-ae4e-7b286c070d0d
* entry[=].fullUrl = "urn:uuid:ffa42f99-392e-4441-ae4e-7b286c070d0d"
* entry[+].resource = ad4e9e5c-e0d7-406c-8cc3-a080d0e0f059
* entry[=].fullUrl = "urn:uuid:ad4e9e5c-e0d7-406c-8cc3-a080d0e0f059"
* entry[+].resource = fbb085ae-63de-4487-8450-a4f4bfb52c86
* entry[=].fullUrl = "urn:uuid:fbb085ae-63de-4487-8450-a4f4bfb52c86"
* entry[+].resource = b25b14f4-feaa-4fce-b9d6-7019ad607b5b
* entry[=].fullUrl = "urn:uuid:b25b14f4-feaa-4fce-b9d6-7019ad607b5b"
