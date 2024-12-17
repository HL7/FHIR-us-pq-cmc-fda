Instance: 363fde7b-1a93-4bc6-a58b-15bf1dc371e8
InstanceOf: BatchAnalysis
Usage: #inline
Title: "Batch Analysis example"
Description: "An example Batch Analysis (WIP)"
* extension[qualitySpecification]
  * extension[specification].valueString = "QS-234 Levothyroxine"
  * extension[specificationVersion].valueString = "1.0.0"
* identifier.value = "Batch_Analysis_001" 
* status = #final
* code.text = "Microbial Assay #1"
* subject = Reference(urn:uuid:9709c351-2402-4f76-852b-9979813fa9e1)
* effectiveDateTime = "2024-12-16"
* performer = Reference(urn:uuid:12d1c42f-0f1f-4908-a9ab-38286295db7a)
* result[+] = Reference(urn:uuid:fce647da-dafc-467a-9636-e546301ce970)
* result[+] = Reference(urn:uuid:9b7c26c9-a4be-4598-b056-6e3ab136c50d)


Instance: 9709c351-2402-4f76-852b-9979813fa9e1
InstanceOf: DrugSubstanceBatch
Usage: #inline
Title: "Example Substance Batch"
Description: "example batch"
* instance = true
* extension[api-batch]
  * extension[manufacturingDate].valueDateTime = "2024-11-30"
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "Starting materials mixing"
  * extension[assignedManufacturer].valueReference = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
  * extension[batchUtilization].valueCodeableConcept = $NCIT#C185328 "Stability Study"
  * extension[batchQuantity].valueQuantity = 100 'kg' "kilograms"
  * extension[container]
    * extension[lotNumber].valueString = "fe76d876" // just a random string
    * extension[type].valueCodeableConcept = $NCIT#C43193 "DRUM"
    * extension[quantity].valueRatio
      * numerator = 100 'kg' "kilograms"
      * denominator = 1 '1' "1*"
    * extension[closureSystemDescription].valueString = "steel drum with polyethylene lining"
    * extension[closureType].valueCodeableConcept = * $NCIT#C96126 "Lug, Metal"
* identifier.value = "139202"
// unii:
* code.concept.text = "054I36CPMN"


Instance: 12d1c42f-0f1f-4908-a9ab-38286295db7a
InstanceOf: CodedOrganization
Usage: #inline
Title: "Batch analysis test performer"
Description: "placeholder"
* name = "Acme Labs"
* contact.address
  * type = #postal
  * line = "300 Oak Avenue"
  * state = "NY"
  * city = "Rochester"
  * country = "USA"
  * postalCode = "14602"
  * text = "300 Oak Avenue, Rochester NY, USA"
* identifier[DUNSNumber]
  * value = "747393438"
  * type = $NCIT#C134003 "DUNS"
  * system = $DUNS


Instance: fce647da-dafc-467a-9636-e546301ce970
InstanceOf: ResultObservation
Usage: #inline
Title: "Result Observation for Batch_Analysis_001 example"
Description: "Example Result Observation"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134256 "Microbial Limits"
* code.text = "Microbial Limit -- Salmonella enterica & Salmonella bongori"
* extension[actualpulldate].valueDateTime = "2024-12-15"
* effectiveDateTime = "2024-12-16"
* performer = Reference(urn:uuid:12d1c42f-0f1f-4908-a9ab-38286295db7a)
* valueQuantity = 10 '[CFU]' "colony forming unit"
* valueQuantity.comparator = #<
* interpretation = $NCIT#C80262 "Conforms"
* method.text = "Visual"
* referenceRange.modifierExtension[targetRange]
  * extension[high].valueQuantity = 20 '[CFU]' "colony forming units"
  * extension[low].valueQuantity = 1 '1' "1*"
* referenceRange.text = "< 20 CFUs"

Instance: 9b7c26c9-a4be-4598-b056-6e3ab136c50d
InstanceOf: ResultObservation
Usage: #inline
Title: "Listeria Result Observation"
Description: "Example Result Observation 2"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134256 "Microbial Limits"
* code.text = "Microbial Limit -- Listeria monocytogenes"
* extension[actualpulldate].valueDateTime = "2024-12-15"
* effectiveDateTime = "2024-12-16"
* performer = Reference(urn:uuid:12d1c42f-0f1f-4908-a9ab-38286295db7a)
* valueString = "Not detected"
* interpretation = $NCIT#C80262 "Conforms"
* method.text = "ISO 4833-2-1:2014"
* referenceRange.modifierExtension[targetRange]
  * extension[high].valueQuantity = 10 '[CFU]' "colony forming unit"
  * extension[low].valueQuantity = 1 '1' "1*"
* referenceRange.text = "< 10 CFUs"

/// Composition
Instance: c4e90b99-887a-4f00-a7c6-bb91304ddcf4
InstanceOf: EctdCompositionSP4454
Usage: #inline
Title: "Example Batch Analysis Composition"
Description: "An example Batch analysis Composition"
* author = Reference(urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7)
* title = "LevoThyroxine Microbe Batch Analysis"
* date = 2024-12-16T18:17:19.265Z
* section[Api]
  * title = "Subtsance Batch Analysis"
  * entry = Reference(urn:uuid:363fde7b-1a93-4bc6-a58b-15bf1dc371e8)

/// Bundle
Instance: 84ef9f30-4463-4c88-b8b1-6454b3e40835
InstanceOf: CMCeCTDDocumentSP4454
Usage: #example
Title: "Example Batch Analysis Bundle"
Description: "An example Batch analysis bundle for microbe limits in a levoThyroxine batch"
* identifier
  * system = $IDsys
  * value = "urn:uuid:84ef9f30-4463-4c88-b8b1-6454b3e40835"
* timestamp = 2024-12-16T18:17:19.265Z
* entry[+]
  * resource = c4e90b99-887a-4f00-a7c6-bb91304ddcf4
  * fullUrl = "urn:uuid:c4e90b99-887a-4f00-a7c6-bb91304ddcf4"
* entry[+]
  * resource = 363fde7b-1a93-4bc6-a58b-15bf1dc371e8
  * fullUrl = "urn:uuid:363fde7b-1a93-4bc6-a58b-15bf1dc371e8"
* entry[+]
  * resource = 9709c351-2402-4f76-852b-9979813fa9e1
  * fullUrl = "urn:uuid:9709c351-2402-4f76-852b-9979813fa9e1"
* entry[+]
  * resource = 12d1c42f-0f1f-4908-a9ab-38286295db7a
  * fullUrl = "urn:uuid:12d1c42f-0f1f-4908-a9ab-38286295db7a"
* entry[+]
  * resource = fce647da-dafc-467a-9636-e546301ce970
  * fullUrl = "urn:uuid:fce647da-dafc-467a-9636-e546301ce970"
* entry[+]
  * resource = b69435a0-45c6-4d44-9fde-b354e17408d7
  * fullUrl = "urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7"
* entry[+]
  * resource = e165f057-5eed-4e64-8328-4438fc88fb1b
  * fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"
* entry[+]
  * resource = 9b7c26c9-a4be-4598-b056-6e3ab136c50d
  * fullUrl = "urn:uuid:9b7c26c9-a4be-4598-b056-6e3ab136c50d"