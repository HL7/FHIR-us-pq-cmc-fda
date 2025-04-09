Instance: 60d31f18-5f74-4042-b4fa-c73a4aa510ff
InstanceOf: BatchAnalysis
Usage: #inline
Title: "Batch Analysis"
Description: "an example Product Batch Analysis"
* extension[qualitySpecification]
  * extension[specification].valueString = "ExampleSpecification"
  * extension[specificationVersion].valueString = "1.0"
  * extension[specificationSubtitle].valueString = "Quality Specification for OXAZEPAM"
* identifier.value = "Batch_Analysis_001"
* status = #final
* code.text = "Oxazepam Product Assay #001"
* effectiveDateTime = "2024-12-19"
* subject = Reference(urn:uuid:fff1c47f-a9af-452e-9402-a8842103a3ec)
* result[+] = Reference(urn:uuid:022a4874-3ceb-46f8-a242-c15fbcd5165f)


Instance: fff1c47f-a9af-452e-9402-a8842103a3ec
InstanceOf: DrugProductBatch
Usage: #inline
Title: "Example Product Batch"
Description: "an example product batch"
* identifier.value = "OxazepamProduct"
* identifier.type = $NCIT#C71898 "Proprietary Name"
* batch
  * extension[medication-batch]
    * extension[assignedManufacturer].valueReference = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
    * extension[manufacturingDate].valueDateTime = 2024-12-01
    * extension[manufacturingDateClassification].valueCodeableConcept.text = "capsule assembly date"
    * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
    * extension[batchUtilization].valueCodeableConcept = $NCIT#C185328 "Stability Study"
    * extension[batchQuantity].valueQuantity = 100 'kg' "kilograms"
    * extension[container]
      * extension[lotNumber].valueString = "4cdb790f" // just a random string
      * extension[type].valueCodeableConcept = $NCIT#C43169 "BOTTLE"
      * extension[closureSystemDescription].valueString = "a plastic bottle with a child-proof cap"
      * extension[closureType].valueCodeableConcept = $NCIT#C96114 "Child-resistant, Plastic"
      * extension[quantity].valueRatio
        * numerator.value = 20
        * numerator.code = #[arb'U]
        * numerator.system = $UCUM
        * numerator.unit = "capsules"
        * denominator = 1 '1' "1*"
  * lotNumber = "139203"
  * expirationDate = 2025-12-01
// oxazepam
* ingredient[+]
  * item.reference = Reference(urn:uuid:c13c9826-7f33-4d5b-869f-cd802f09e86d)
  * isActive = true
  * strengthRatio
    * numerator = 400 'mg' "milligrams"
    * denominator = 1 '1' "1*"
// propranolol HCL
* ingredient[+]
  * item.reference = Reference(urn:uuid:ab6d7e66-64fc-46bf-bb74-55a0d864d13c)
  * isActive = true
  * strengthRatio
    * numerator = 600 'mg' "milligrams"
    * denominator = 1 '1' "1*"
// corn starch
* ingredient[+]
  * item.reference = Reference(urn:uuid:3253f528-16e2-49a3-aca0-8d7371bc5335)
  * isActive = true
  * strengthRatio
    * numerator = 99 'kg' "kilograms"
    * denominator = 1 '1' "1*"

// Oxazepam batch Ingredient
Instance: c13c9826-7f33-4d5b-869f-cd802f09e86d
InstanceOf: IngredientBatch
Usage: #inline
Title: "Oxazepam Ingredient Batch"
Description: "batch properties for Oxazepam Ingredient"
* instance = true
* extension[ingredient-batch]
  * extension[manufacturingDate].valueDateTime = "2024-10-05"
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "started mixing materials"
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
* identifier.value = "00001"
* code.reference = Reference(urn:uuid:9066b2e2-1091-4f2c-9fdb-9118bf7b0b24)
// Propranolol HCL batch Ingredient
Instance: ab6d7e66-64fc-46bf-bb74-55a0d864d13c
InstanceOf: IngredientBatch
Usage: #inline
Title: "Propranolol HCL Ingredient Batch"
Description: "batch properties for Propranolol HCL"
* instance = true
* extension[ingredient-batch]
  * extension[manufacturingDate].valueDateTime = "2024-10-06"
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "started mixing materials"
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
* identifier.value = "00002"
* code.reference = Reference(urn:uuid:46ab3b3a-de05-40d7-9d0f-8f286a76f6df)

Instance: 9066b2e2-1091-4f2c-9fdb-9118bf7b0b24
InstanceOf: SubstanceDefinitionHandle
Usage: #inline
Title: "Oxazepam substance handle"
Description: "substance handle for oxazepam in product batch"
* identifier.value = "propranolol HCl"
* classification =  $NCIT#C48807 "Chemical"
* grade = $NCIT#C134009 "Company Standard"
* manufacturer = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* code.code = $UNII#6GOW6DWN2A
* name[gsrs].name = "OXAZEPAM"
* name[gsrs].preferred = true

Instance: 46ab3b3a-de05-40d7-9d0f-8f286a76f6df
InstanceOf: SubstanceDefinitionHandle
Usage: #inline
Title: "Propranolol substance handle"
Description: "substance handle for propranolol hcl in product batch"
* identifier.value = "propranolol HCl"
* classification =  $NCIT#C48807 "Chemical"
* grade = $NCIT#C134009 "Company Standard"
* manufacturer = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* code.code = $UNII#F8A3652H1V
* name[gsrs].name = "PROPRANOLOL HYDROCHLORIDE"
* name[gsrs].preferred = true

Instance: 3253f528-16e2-49a3-aca0-8d7371bc5335
InstanceOf: IngredientBatch
Usage: #inline
Title: "Corn Starch Ingredient"
Description: "batch properties for Corn Starch"
* instance = true
* extension[ingredient-batch]
  * extension[manufacturingDate].valueDateTime = "2024-10-06"
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "started mixing materials"
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
* identifier.value = "00003"
* code.reference = Reference(urn:uuid:5d4dc90b-4e71-4355-80cc-8ef4fc927cd6)

Instance: 5d4dc90b-4e71-4355-80cc-8ef4fc927cd6
InstanceOf: ExcipientRaw
Title: "Ingredient substance indentifying information - Maize starch"
Description: "Maize starch excipient"
Usage: #inline
* classification = $NCIT#C45305 "Mixture"
* grade = $NCIT#C134009 "Company Standard"
* code.code = $UNII#O8232NY3SJ
* name[gsrs]	
  * name = "STARCH, CORN"
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"

Instance: 022a4874-3ceb-46f8-a242-c15fbcd5165f
InstanceOf: ResultObservation
Usage: #inline
Title: "Result Observation 1"
Description: "a result observation for use in an example"
* extension[actualpulldate].valueDateTime = "2025-03-15"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134255 "Loss on Drying"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "Visual"
* effectiveDateTime = "2025-03-15"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.1 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* method.text = "mass measurement"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 0.0 '%' "percent"
  * extension[high].valueQuantity = 0.5 '%' "percent"
* referenceRange
  * text = "less than 0.5%" // text is required??

Instance: 554cfdc4-9766-4344-9490-214b770a8925
InstanceOf: EctdCompositionSP4454
Usage: #inline
Title: "Batch Analyses Composition"
Description: "a batch analysis composition for use in an example"
* status = #final
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* title = "ExampleSpecification Batch Analysis"
* date = 2025-03-30
* section[DrugProduct]
  * title = "Product Batch"
  * entry = Reference(urn:uuid:60d31f18-5f74-4042-b4fa-c73a4aa510ff)

Instance: BatchAnalysisBundle
InstanceOf: CMCeCTDDocumentSP4454
Usage: #example
Title: "Batch Analysis Bundle (WIP)"
Description: "an example batch analysis bundle using the specification from SpecificationProductBundle"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:5156901c-0e23-4422-9a2b-e06392087813"
* timestamp = 2025-03-31T12:34:56.789Z
* entry[0].resource = 554cfdc4-9766-4344-9490-214b770a8925
* entry[=].fullUrl = "urn:uuid:554cfdc4-9766-4344-9490-214b770a8925"
* entry[+]
  * resource = 60d31f18-5f74-4042-b4fa-c73a4aa510ff
  * fullUrl = "urn:uuid:60d31f18-5f74-4042-b4fa-c73a4aa510ff"
* entry[+]
  * resource = fff1c47f-a9af-452e-9402-a8842103a3ec
  * fullUrl = "urn:uuid:fff1c47f-a9af-452e-9402-a8842103a3ec"
* entry[+]
  * resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
  * fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
* entry[+]
  * resource = 022a4874-3ceb-46f8-a242-c15fbcd5165f
  * fullUrl = "urn:uuid:022a4874-3ceb-46f8-a242-c15fbcd5165f"
* entry[+]
  * resource = c13c9826-7f33-4d5b-869f-cd802f09e86d
  * fullUrl = "urn:uuid:c13c9826-7f33-4d5b-869f-cd802f09e86d"
* entry[+]
  * resource = ab6d7e66-64fc-46bf-bb74-55a0d864d13c
  * fullUrl = "urn:uuid:ab6d7e66-64fc-46bf-bb74-55a0d864d13c"
* entry[+]
  * resource = 3253f528-16e2-49a3-aca0-8d7371bc5335
  * fullUrl = "urn:uuid:3253f528-16e2-49a3-aca0-8d7371bc5335"
* entry[+]
  * resource = 9066b2e2-1091-4f2c-9fdb-9118bf7b0b24
  * fullUrl = "urn:uuid:9066b2e2-1091-4f2c-9fdb-9118bf7b0b24"
* entry[+]
  * resource = 46ab3b3a-de05-40d7-9d0f-8f286a76f6df
  * fullUrl = "urn:uuid:46ab3b3a-de05-40d7-9d0f-8f286a76f6df"
* entry[+]
  * resource = 5d4dc90b-4e71-4355-80cc-8ef4fc927cd6
  * fullUrl = "urn:uuid:5d4dc90b-4e71-4355-80cc-8ef4fc927cd6"
* entry[+]
  * resource = e165f057-5eed-4e64-8328-4438fc88fb1b
  * fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"

// #Manufacturer: e165f057-5eed-4e64-8328-4438fc88fb1b
// #Performer: 4f3e9af1-306b-4fad-bf04-7881400b266a