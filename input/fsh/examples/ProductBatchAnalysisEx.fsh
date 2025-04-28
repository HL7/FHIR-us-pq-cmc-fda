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

Instance: b2727746-84a9-4e3f-ae76-b847deea3afe
InstanceOf: MfgSiteOrganization
Usage: #inline
Title: "Mfg Site"
Description: "a manufacturing site to be used in an example"
* identifier[DUNSNumber]
  * type.coding = $NCIT#C134003 "DUNS"
  * system = "urn:oid:1.3.6.1.4.1.519.1"
  * value = "173265332"
* identifier[FEINumber]
  * type.coding = $NCIT#C134004 "FEI"
  * value = "6981397"
  * system = "urn:oid:2.16.840.1.113883.4.82"
* type = $NCIT#C101509 // synonym needs to be added to tx.fhir.org
* name = "mega_chem_Site"
* contact.address
  * line[0] = "350 W Main Street"
  * type = #postal
* contact.address.city = "Rochester"
* contact.address.country = "USA"
* contact.address.postalCode = "14608"
* contact.address.text = "mega_chem_Site, 350 W Main Street, Rochester, NY, United States"
* contact.address.state = "NY"

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
* entry[+] // 1
  * resource = 60d31f18-5f74-4042-b4fa-c73a4aa510ff
  * fullUrl = "urn:uuid:60d31f18-5f74-4042-b4fa-c73a4aa510ff"
* entry[+] // 2
  * resource = fff1c47f-a9af-452e-9402-a8842103a3ec
  * fullUrl = "urn:uuid:fff1c47f-a9af-452e-9402-a8842103a3ec"
* entry[+] // 3
  * resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
  * fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
* entry[+] // 4
  * resource = 022a4874-3ceb-46f8-a242-c15fbcd5165f
  * fullUrl = "urn:uuid:022a4874-3ceb-46f8-a242-c15fbcd5165f"
* entry[+] // 5
  * resource = c13c9826-7f33-4d5b-869f-cd802f09e86d
  * fullUrl = "urn:uuid:c13c9826-7f33-4d5b-869f-cd802f09e86d"
* entry[+] // 6
  * resource = ab6d7e66-64fc-46bf-bb74-55a0d864d13c
  * fullUrl = "urn:uuid:ab6d7e66-64fc-46bf-bb74-55a0d864d13c"
* entry[+] // 7
  * resource = 3253f528-16e2-49a3-aca0-8d7371bc5335
  * fullUrl = "urn:uuid:3253f528-16e2-49a3-aca0-8d7371bc5335"
* entry[+] // 8
  * resource = 9066b2e2-1091-4f2c-9fdb-9118bf7b0b24
  * fullUrl = "urn:uuid:9066b2e2-1091-4f2c-9fdb-9118bf7b0b24"
* entry[+] // 9
  * resource = 46ab3b3a-de05-40d7-9d0f-8f286a76f6df
  * fullUrl = "urn:uuid:46ab3b3a-de05-40d7-9d0f-8f286a76f6df"
* entry[+] // 10
  * resource = 5d4dc90b-4e71-4355-80cc-8ef4fc927cd6
  * fullUrl = "urn:uuid:5d4dc90b-4e71-4355-80cc-8ef4fc927cd6"
* entry[+] // 11
  * resource = e165f057-5eed-4e64-8328-4438fc88fb1b
  * fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"
* entry[+] // 12
  * resource = b2727746-84a9-4e3f-ae76-b847deea3afe
  * fullUrl = "urn:uuid:b2727746-84a9-4e3f-ae76-b847deea3afe"
* entry[+] // 13
  * resource = a0676c71-06f4-4c04-b864-817a0347941c
  * fullUrl = "urn:uuid:a0676c71-06f4-4c04-b864-817a0347941c"
* entry[+] // 14
  * resource = 1213976b-ebb0-42f6-985d-f989356b6d59
  * fullUrl = "urn:uuid:1213976b-ebb0-42f6-985d-f989356b6d59"
* entry[+] // 15
  * resource = 210af775-ca90-4fe6-9b04-822c765933af
  * fullUrl = "urn:uuid:210af775-ca90-4fe6-9b04-822c765933af"
* entry[+] // 16
  * resource = 06522569-a7e8-4c9f-a7db-14c969c240c6
  * fullUrl = "urn:uuid:06522569-a7e8-4c9f-a7db-14c969c240c6"
* entry[+] // 17
  * resource = 5d78322d-4bb2-4e0a-9ce1-d2678ff09f1d
  * fullUrl = "urn:uuid:5d78322d-4bb2-4e0a-9ce1-d2678ff09f1d"
* entry[+] // 18
  * resource = 96dc657d-592f-4c91-b106-01701ccf2cb0
  * fullUrl = "urn:uuid:96dc657d-592f-4c91-b106-01701ccf2cb0"
* entry[+] // 19
  * resource = 298b433e-0642-4735-bd6f-c460e6e4208d
  * fullUrl = "urn:uuid:298b433e-0642-4735-bd6f-c460e6e4208d"
* entry[+] // 20
  * resource = f8d2cd51-aad0-4f95-ad04-c12efdc1232d
  * fullUrl = "urn:uuid:f8d2cd51-aad0-4f95-ad04-c12efdc1232d"
* entry[+] // 21
  * resource = 5655fffb-ea32-4cf9-96de-0950ad6dd07e
  * fullUrl = "urn:uuid:5655fffb-ea32-4cf9-96de-0950ad6dd07e"
* entry[+] // 22
  * resource = 00a33e09-4ce7-4bac-b616-a392911a429e
  * fullUrl = "urn:uuid:00a33e09-4ce7-4bac-b616-a392911a429e"
* entry[+] // 23
  * resource = eee4fd0c-4adb-4aad-be21-cab199583f56
  * fullUrl = "urn:uuid:eee4fd0c-4adb-4aad-be21-cab199583f56"
* entry[+] // 24
  * resource = 20317ec0-a631-4cdf-88a1-0496b5e3acaf
  * fullUrl = "urn:uuid:20317ec0-a631-4cdf-88a1-0496b5e3acaf"
* entry[+] // 25
  * resource = f220a83d-214d-4a5c-917b-88c25e125c90
  * fullUrl = "urn:uuid:f220a83d-214d-4a5c-917b-88c25e125c90"
* entry[+] // 26
  * resource = 30f3b020-f474-4eec-881c-7dd4d12baf0b
  * fullUrl = "urn:uuid:30f3b020-f474-4eec-881c-7dd4d12baf0b"
* entry[+] // 27
  * resource = b590b63c-a9b3-4469-bcfe-21793b588641
  * fullUrl = "urn:uuid:b590b63c-a9b3-4469-bcfe-21793b588641"
* entry[+] // 28
  * resource = b932d0d9-53a9-457d-81cc-c5488d18cb58
  * fullUrl = "urn:uuid:b932d0d9-53a9-457d-81cc-c5488d18cb58"
* entry[+] // 29
  * resource = 07e9b239-6791-43ba-bf09-637475a83e19
  * fullUrl = "urn:uuid:07e9b239-6791-43ba-bf09-637475a83e19"

// #Manufacturer: e165f057-5eed-4e64-8328-4438fc88fb1b
// #Performer: 4f3e9af1-306b-4fad-bf04-7881400b266a

Instance: 60d31f18-5f74-4042-b4fa-c73a4aa510ff
InstanceOf: BatchAnalysis
Usage: #inline
Title: "Batch Analysis for OXAZEPAM 45 mg Capsules"
Description: "an example Product Batch Analysis"
* extension[qualitySpecification]
  * extension[specification].valueString = "ExampleSpecification"
  * extension[specificationVersion].valueString = "1.0"
  * extension[specificationSubtitle].valueString = "Quality Specification for OXAZEPAM 45 mg Tablets"
* performer = Reference(urn:uuid:b2727746-84a9-4e3f-ae76-b847deea3afe)
* identifier.value = "Batch_Analysis_001"
* status = #final
* code.text = "Oxazepam Product Assay #001"
* effectiveDateTime = "2024-12-19"
* subject = Reference(urn:uuid:fff1c47f-a9af-452e-9402-a8842103a3ec)
* result[+] = Reference(urn:uuid:022a4874-3ceb-46f8-a242-c15fbcd5165f)
* result[+] = Reference(urn:uuid:a0676c71-06f4-4c04-b864-817a0347941c)
* result[+] = Reference(urn:uuid:00a33e09-4ce7-4bac-b616-a392911a429e)
* result[+] = Reference(urn:uuid:eee4fd0c-4adb-4aad-be21-cab199583f56)
* result[+] = Reference(urn:uuid:20317ec0-a631-4cdf-88a1-0496b5e3acaf)
* result[+] = Reference(urn:uuid:f220a83d-214d-4a5c-917b-88c25e125c90)
* result[+] = Reference(urn:uuid:30f3b020-f474-4eec-881c-7dd4d12baf0b)
* result[+] = Reference(urn:uuid:b590b63c-a9b3-4469-bcfe-21793b588641)
* result[+] = Reference(urn:uuid:b932d0d9-53a9-457d-81cc-c5488d18cb58)
* result[+] = Reference(urn:uuid:07e9b239-6791-43ba-bf09-637475a83e19)

Instance: 022a4874-3ceb-46f8-a242-c15fbcd5165f
InstanceOf: ResultObservation
Usage: #inline
Title: "Result Observation Loss on Drying"
Description: "A result observation for use in an example"
* extension[actualpulldate].valueDateTime = "2025-03-15"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134255 "Loss on Drying"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <731>"
* effectiveDateTime = "2025-03-15"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.1 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* method.text = "mass measurement"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 0.0 '%' "percent"
  * extension[high].valueQuantity = 0.5 '%' "percent"
* referenceRange
  * text = "LT 0.5%" // original text
* method.text = "USP <731> Loss on Drying"

Instance: a0676c71-06f4-4c04-b864-817a0347941c
InstanceOf: ResultObservation
Title: "Example pH Result Observation with Replicates"
Description: "A pH test result with 5 replicates and an average value, using the PQ/CMC Result Observation profile."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2025-03-15" 
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205029 "pH"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <791>"
* effectiveDateTime = "2025-03-15"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a) 
* valueQuantity = 2.72 '[pH]' "pH"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 3.0 '[pH]' "pH"
  * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* referenceRange
  * text = "Spec range (pH 3.0 – 5.0)"
* method.text = "USP <791> pH Determination"
* component[+]
  * extension[replicate].valueInteger = 1
  * code.text = "pH Replicate"
  * valueQuantity = 2.65 '[pH]' "pH"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (pH 3.0 – 5.0)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 3.0 '[pH]' "pH"
    * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* component[+]
  * extension[replicate].valueInteger = 2
  * code.text = "pH Replicate"
  * valueQuantity = 2.70 '[pH]' "pH"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (pH 3.0 – 5.0)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 3.0 '[pH]' "pH"
    * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* component[+]
  * extension[replicate].valueInteger = 3
  * code.text = "pH Replicate"
  * valueQuantity = 2.75 '[pH]' "pH"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (pH 3.0 – 5.0)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 3.0 '[pH]' "pH"
    * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* component[+]
  * extension[replicate].valueInteger = 4
  * code.text = "pH Replicate"
  * valueQuantity = 2.74 '[pH]' "pH"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (pH 3.0 – 5.0)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 3.0 '[pH]' "pH"
    * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* component[+]
  * extension[replicate].valueInteger = 5
  * code.text = "pH Replicate"
  * valueQuantity = 2.76 '[pH]' "pH"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 3.0 '[pH]' "pH"
    * extension[high].valueQuantity = 5.0 '[pH]' "pH"
  * referenceRange.text = "Spec range (pH 3.0 – 5.0)"

Instance: 00a33e09-4ce7-4bac-b616-a392911a429e
InstanceOf: pq-result-observation
Title: "Example Description/Appearance result"
Description: "Example observation with a text result"
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C138990 "Description/Appearance"
* status = #final
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Description"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Grey coloured capsule shaped film coated tablets, debossed with '45' on one side."
* method.text = "Visual Inspection"

Instance: eee4fd0c-4adb-4aad-be21-cab199583f56
InstanceOf: pq-result-observation
Title: "Example Identification result"
Description: "Example result with a alueString result."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C138993 "Identification"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Identification By HPLC"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "The retention time of the principal peak corresponds to standard."
* method.text = "HPLC Identification"

Instance: 20317ec0-a631-4cdf-88a1-0496b5e3acaf
InstanceOf: pq-result-observation
Title: "Example Dissolution result"
Description: "Demonstrates a test with three stages and three replicates."
Usage: #Example
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Multi Stage"
* status = #final
* category = $NCIT#C134253 "Dissolution"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Dissolution"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All stage results conform to specification"
* method.text = "Dissolution OXAZEPAM Capsules"
* hasMember[+] = Reference(urn:uuid:1213976b-ebb0-42f6-985d-f989356b6d59)
* hasMember[+] = Reference(urn:uuid:210af775-ca90-4fe6-9b04-822c765933af)
* hasMember[+] = Reference(urn:uuid:06522569-a7e8-4c9f-a7db-14c969c240c6)


Instance: 1213976b-ebb0-42f6-985d-f989356b6d59
InstanceOf: pq-result-observation
Title: "Example Dissolution Stage 1 result"
Description: "A result with three components."
Usage: #example
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Stage 1"
* status = #final
* category = $NCIT#C60821 "Solubility"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Dissolution 1 hour"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All replicates are NLT 40% and NMT 70% dissolved in 1 hour."
* method.text = " Dissolution"
* component[+]
  * extension[replicate].valueInteger = 1
  * code.text = "pH Replicate"
  * valueQuantity = 52.65 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (40% - 70%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 40 '%' "percent"
    * extension[high].valueQuantity = 70 '%' "percent"
  * referenceRange.text = "NLT 40% and NMT 70% dissolved in 1 hour."
* component[+]
  * extension[replicate].valueInteger = 2
  * code.text = "pH Replicate"
  * valueQuantity = 67.70 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (40% - 70%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 40 '%' "percent"
    * extension[high].valueQuantity = 70 '%' "percent"
  * referenceRange.text = "NLT 40% and NMT 70% dissolved in 1 hour."
* component[+]
  * extension[replicate].valueInteger = 3
  * code.text = "pH Replicate"
  * valueQuantity = 46.75 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (40% - 70%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 40 '%' "percent"
    * extension[high].valueQuantity = 70 '%' "percent"
  * referenceRange.text = "NLT 40% and NMT 70% dissolved in 1 hour."    

Instance: 210af775-ca90-4fe6-9b04-822c765933af
InstanceOf: pq-result-observation
Title: "Example Dissolution Stage 2 result"
Description: "The stage 2 result with 3 replicates."
Usage: #example
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Stage 2"
* status = #final
* category = $NCIT#C60821 "Solubility"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Dissolution  2 hours"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All replicates are NLT 70% and NMT 95% dissolved in 2 hours."
* method.text = " Dissolution"
* component[+]
  * extension[replicate].valueInteger = 1
  * code.text = "pH Replicate"
  * valueQuantity = 62.65 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (70% - 95%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 70 '%' "percent"
    * extension[high].valueQuantity = 95 '%' "percent"
  * referenceRange.text = "NLT 70% and NMT 95% dissolved in 2 hours."
* component[+]
  * extension[replicate].valueInteger = 2
  * code.text = "pH Replicate"
  * valueQuantity = 77.70 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (70% - 95%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 70 '%' "percent"
    * extension[high].valueQuantity = 95 '%' "percent"
  * referenceRange.text = "NLT 70% and NMT 95% dissolved in 2 hours."
* component[+]
  * extension[replicate].valueInteger = 3
  * code.text = "pH Replicate"
  * valueQuantity = 59.75 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec range (70% - 95%)"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 70 '%' "percent"
    * extension[high].valueQuantity = 95 '%' "percent"
  * referenceRange.text = "NLT 70% and NMT 95% dissolved in 2 hours."

Instance: 06522569-a7e8-4c9f-a7db-14c969c240c6
InstanceOf: pq-result-observation
Title: "Example Dissolution Stage 3 result"
Description: "The stage 3 result with 3 replicates in the component element."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Stage 3"
* status = #final
* category = $NCIT#C60821 "Solubility"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Dissolution 4 hours"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 80 '%' "percent"
* referenceRange.text = "All replicates are NLT 80% (Q) dissolved in 4 hours."
* method.text = " Dissolution"
* component[+]
  * extension[replicate].valueInteger = 1
  * code.text = "pH Replicate"
  * valueQuantity = 83.50 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec NLT 80%"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 80 '%' "percent"
  * referenceRange.text = "NLT 80% (Q) dissolved in 4 hours."
* component[+]
  * extension[replicate].valueInteger = 2
  * code.text = "pH Replicate"
  * valueQuantity = 86.40 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec NLT 80%"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 80 '%' "percent"
  * referenceRange.text = "NLT 80% (Q) dissolved in 4 hours."
* component[+]
  * extension[replicate].valueInteger = 3
  * code.text = "pH Replicate"
  * valueQuantity = 95.65 '%' "percent"
  * interpretation = $NCIT#C80262 "Conforms"
  * referenceRange.text = "Spec NLT 80%"
  * referenceRange.modifierExtension[batchRange]
    * extension[low].valueQuantity = 80 '%' "percent"
  * referenceRange.text = "NLT 80% (Q) dissolved in 4 hours."

Instance: f220a83d-214d-4a5c-917b-88c25e125c90
InstanceOf: pq-result-observation
Title: "Example Dose Uniformity"
Description: "Water Content"
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134250 "Uniformity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Uniformity of Dosage Units"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 9.5 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 15 '%' "percent"
* referenceRange.text = "LT 15 %"
* method.text = "Weight Variation"

Instance: 30f3b020-f474-4eec-881c-7dd4d12baf0b
InstanceOf: pq-result-observation
Title: "Example Moisture Content result"
Description: "Demonstating a Water Content result with an upper limit."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134002 "Residual Solvent"
* code
  * coding = $NCIT#C96103 "Proprietary"
* code.text = "Water Content"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 8.2 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 10 '%' "percent"
* referenceRange.text = "NMT 10.0%"
* method.text = "Karl Fischer Titration"

Instance: b590b63c-a9b3-4469-bcfe-21793b588641
InstanceOf: pq-result-observation
Title: "Example Assay result"
Description: "Demonstating a result with a lower and an upper limit."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C60819 "Assay"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Assay"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 101.2  '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 90 '%' "percent"
  * extension[high].valueQuantity = 110 '%' "percent"
* referenceRange.text = "90% to 110% of labeled amount."
* method.text = "Assay"

Instance: b932d0d9-53a9-457d-81cc-c5488d18cb58
InstanceOf: ResultObservation
Title: "Example of Impurities for Oxazepam"
Description: "Example demonstrates use of Test category and sub-categories against the same method via multiple tests. "
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C204971 "Impurity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Impurities"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All impurities comform to corresponds to standard."
* interpretation = $NCIT#C80262 "Conforms"
* note.text = """
  Total Impurities includes all detected peaks
"""
* method.text = "Oxazepam Impurities"
* hasMember[+] = Reference(urn:uuid:5d78322d-4bb2-4e0a-9ce1-d2678ff09f1d)
* hasMember[+] = Reference(urn:uuid:96dc657d-592f-4c91-b106-01701ccf2cb0)
* hasMember[+] = Reference(urn:uuid:298b433e-0642-4735-bd6f-c460e6e4208d)
* hasMember[+] = Reference(urn:uuid:f8d2cd51-aad0-4f95-ad04-c12efdc1232d)
* hasMember[+] = Reference(urn:uuid:5655fffb-ea32-4cf9-96de-0950ad6dd07e)

Instance: 298b433e-0642-4735-bd6f-c460e6e4208d
InstanceOf: pq-result-observation
Title: "Example Specified Identified Impurity result"
Description: "Demonstating an Impurity result with an upper limit."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205039 "Specified Identified Impurity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Related Substances - (Z)-(2-Amino-5-chlorophenyl)(phenyl)methanone Oxime"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.29 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1.2 '%' "percent"
* referenceRange.text = "LT 1.2%"
* method.text = "Oxazepam Impurities"

Instance: 96dc657d-592f-4c91-b106-01701ccf2cb0
InstanceOf: pq-result-observation
Title: "Example Specified Unidentified Impurity result"
Description: "Demonstating a  Specified Unidentified Impurity result with an upper limit."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205040 "Specified Unidentified Impurity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Related Substances - Oxazepam - Impurity A"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.89 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1.2 '%' "percent"
* referenceRange.text = "LT 1.2%"
* method.text = "Oxazepam Impurities"

Instance: 5d78322d-4bb2-4e0a-9ce1-d2678ff09f1d
InstanceOf: pq-result-observation
Title: "Example 6-Chloro-4-phenyl-3,4-dihydroquinazoline- 2-carboxylic Acid"
Description: "Example result for a Specified Identified Impurity"
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205039 "Specified Identified Impurity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Related Substances - 6-Chloro-4-phenyl-3,4-dihydroquinazoline- 2-carboxylic Acid"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 1.10 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 2.0 '%' "percent"
* referenceRange.text = "LT 2.0%"
* method.text = "Oxazepam Impurities"

Instance: f8d2cd51-aad0-4f95-ad04-c12efdc1232d
InstanceOf: pq-result-observation
Title: "Example Highest Unknown Impurity result"
Description: "Example result for a Unspecified Impurity with an upper limit"
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205052 "Unspecified Impurity"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Related Substances - Highest Unknown"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 1.69 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 0.2 '%' "percent"
* referenceRange.text = "LT 0.2%"
* method.text = "Oxazepam Impurities"

Instance: 5655fffb-ea32-4cf9-96de-0950ad6dd07e
InstanceOf: pq-result-observation
Title: "Example Total Impurities result"
Description: "Example result for a Total Impurities with an upper limit"
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205047 "Total Impurities"
* code
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Related Substances - Total Impurities"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 2.28 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 3.0 '%' "percent"
* referenceRange.text = "LT 3.0%"
* method.text = "Oxazepam Impurities"

Instance: 07e9b239-6791-43ba-bf09-637475a83e19
InstanceOf: pq-result-observation
Title: "Example Residual Solvents result"
Description: "Example result for a Residual Solvents test with a valueString result."
Usage: #inline
* extension[actualpulldate].valueDateTime = "2022-01-06"
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C134002 "Residual Solvent"
* code
  * coding = $NCIT#C96102 "Compendial"
  * text = "Residual Solvents"
* effectiveDateTime = "2022-01-06"
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Pass"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Complies with USP <467>"
* method.text = "Residual Solvents"
