Instance: 00036eb7-fa63-41c9-b1d7-27b3ebb0a28d
InstanceOf: pqcmc-batch-analysis
Title: "Batch Analysis for Glycerol Monostearate 90PCT Powder"
Description: "Batch Analysis conforming to pqcmc-batch-analysis for Lot 2020100901"
Usage: #inline
* extension[qualitySpecification]
  * extension[specification].valueString = "GB15612-1995"
  * extension[specificationVersion].valueString = "2020"
  * extension[specificationSubtitle].valueString = "Quality Specification for Glycerol Monostearate 90PCT powderM"
* identifier.value = "Batch_Analysis_002"
* status = #final
* code.text = "Batch analysis report for GMS90 Powder"
* effectiveDateTime = 2020-10-09
* subject = Reference(urn:uuid:6c33cd89-a418-4e1d-8ff7-8924beb01e86)
* performer = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* result[+] = Reference(urn:uuid:50bd6934-f0b8-4fb4-952e-f4fc5dc5d4c0)
* result[+] = Reference(urn:uuid:1319e6a4-fcdc-4358-95b8-9cd5961ea482)
* result[+] = Reference(urn:uuid:218d23e0-0219-4bdd-86aa-35145fa616b5)
* result[+] = Reference(urn:uuid:b8d1bcbe-b969-49a1-acc0-9dfa698e844a)
* result[+] = Reference(urn:uuid:6160fc94-2eaa-4fed-a6e2-2b251e864caa)
* result[+] = Reference(urn:uuid:a0676c71-06f4-4c04-b864-817a0347941c)
* result[+] = Reference(urn:uuid:20317ec0-a631-4cdf-88a1-0496b5e3acaf)

Instance: 50bd6934-f0b8-4fb4-952e-f4fc5dc5d4c0
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Appearance and Organoleptic"
Description: "Example result - string acceptance criteria.  This method is both Organoleptic and an Appearance test."
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205026 "Organoleptic"
* method
  * coding = $NCIT#C96103 "Proprietary"
  * text = "GMS90 Odor"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a) // or create a new test site
* valueString = "No unpleasant odor"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Pellet form without unpleasant odor"
* category.text = "Evaluation of Crude Drugs"

Instance: 1319e6a4-fcdc-4358-95b8-9cd5961ea482
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - TotalMonostearate"
Description: "Example result - lower limit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C60819 "Assay"
* method
  * coding = $NCIT#C96103 "Proprietary"
  * text = "Assay Monostearate"
* effectiveDateTime = 2020-10-02
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 98.7 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 95 '%' "percent"
* referenceRange.text = "≥ 95%"
* category.text = "Assay of Total Monostearate"

Instance: 218d23e0-0219-4bdd-86aa-35145fa616b5
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Free Glycerol"
Description: "Example result - numeric upper only range acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C60819 "Assay"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "Assay - Free Glycerol"
* effectiveDateTime = 2020-10-04
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a) 
* valueQuantity = 0.8 '%' "percent"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1.5 '%' "percent"
* referenceRange.text = "≤ 1.5%"
* category.text = "Assay of Free Glycerol"

Instance: b8d1bcbe-b969-49a1-acc0-9dfa698e844a
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Fats and fixed oils"
Description: "Example result - group tests conform"

* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-05
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Fat and Oil passed all test in method"  // check notes on if this is required when has memeber used
* category.text = "Fats and Fixed Oils"
* hasMember[+] = Reference(urn:uuid:a71c68c0-2d24-43b0-a9bc-8f98eac5e50a)
* hasMember[+] = Reference(urn:uuid:d68f393a-57d0-4180-b4fa-265affb76ecc)
* hasMember[+] = Reference(urn:uuid:dabcbbb0-94b7-4ec3-80c2-114564c1c938)
* hasMember[+] = Reference(urn:uuid:30b89618-46dc-42de-a3f0-cf6285840303)

Instance: a71c68c0-2d24-43b0-a9bc-8f98eac5e50a
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Acid Value"
Description: "Example result - upper limit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueQuantity = 1.0 'mg{KOH}/g' "mgKOH/g"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 2.0 'mg{KOH}/g' "mgKOH/g"
* referenceRange.text = "≤ 2.0 mgKOH/g"
* category.text = "Acid Value"

Instance: d68f393a-57d0-4180-b4fa-265affb76ecc
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Melting Point"
Description: "Example result - range acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
// or create a new test site for all tests
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 66.3 'Cel' "degree Celsius"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 60.0 'Cel' "degree Celsius"
  * extension[high].valueQuantity = 70.0 'Cel' "degree Celsius"
* referenceRange.text = "60.0-70.0 °C"
* category.text = "Melting Point"

Instance: dabcbbb0-94b7-4ec3-80c2-114564c1c938
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - IodineValue"
Description: "Example result - uppper limit numeric acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueQuantity = 0.8 'g/(100.g)' "g/100g"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 4.0 'g/(100.g)' "g/100g"  // figure out these units
* referenceRange.text = "≤ 4.0 g/100g"
* category.text = "Iodine Value"

Instance: 30b89618-46dc-42de-a3f0-cf6285840303
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - SaponificationValue"
Description: "Example result - range numeric complex unit acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C25483 "Material Properties/Measurements"
* method
  * coding = $NCIT#C96102 "Compendial"  
  * text = "USP <401> Fats and Fixed Oils"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueQuantity = 158 'mg{KOH}/g' "mgKOH/g"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[low].valueQuantity = 155 'mg{KOH}/g' "mgKOH/g"
  * extension[high].valueQuantity = 165 'mg{KOH}/g' "mgKOH/g"
* referenceRange.text = "155-165 mgKOH/g"
* category.text = "Saponification Value"

Instance: 6160fc94-2eaa-4fed-a6e2-2b251e864caa
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - HeavyMetals"
Description: "Example result - multiple tests in method acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
  * text = "Heavy Metals"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-05
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "All regulated elements passed the acceptance criteria defined in USP <233> "
* hasMember[+] = Reference(urn:uuid:774a68f3-0e82-4457-831f-db184b863e3c)
* hasMember[+] = Reference(urn:uuid:74678745-493e-4c0d-bfa1-40231c06144d)
* hasMember[+] = Reference(urn:uuid:3bb4278f-7c3a-417b-a4dc-ee63e0dd8bda)
* hasMember[+] = Reference(urn:uuid:c96745e6-1447-4094-bd35-d2c3680bf4b2)

Instance: 774a68f3-0e82-4457-831f-db184b863e3c
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Arsenic (HeavyMetals)"
Description: "Example result - first member in group"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
  * text = "Arsenic Impurity"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 2 '[pH]' "pH"
* referenceRange.text = "≤ 2 mg/kg"

Instance: 74678745-493e-4c0d-bfa1-40231c06144d
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation -Lead (HeavyMetals)"
Description: "Example result - second member in group"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
  * text = "Lead Impurity"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 5.0 '[pH]' "pH"
* referenceRange.text = "≤ 5 mg/kg"

Instance: 3bb4278f-7c3a-417b-a4dc-ee63e0dd8bda
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Mercury (HeavyMetals)"
Description: "Example result - high only acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
  * text = "Mercury Impurities"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)  // or create a new test site
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.modifierExtension[batchRange]
  * extension[high].valueQuantity = 1 '[pH]' "pH"
* referenceRange.text = "≤ 1 mg/kg"
* valueString = "Qualified"

Instance: c96745e6-1447-4094-bd35-d2c3680bf4b2
InstanceOf: ResultObservation
Usage: #inline
Title: "Example Observation - Cadmium (HeavyMetals)"
Description: "Example result - text acceptance criteria"
* extension[actualpulldate].valueDateTime = 2020-10-01
* identifier.value = "Single Stage"
* status = #final
* category = $NCIT#C205014 "Elemental Impurity"
* category.text = "Cadmium Impurities"
* method
  * coding = $NCIT#C96102 "Compendial"
  * text = "USP <231>"
* effectiveDateTime = 2020-10-03
* performer = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* valueString = "Qualified"
* interpretation = $NCIT#C80262 "Conforms"
* referenceRange.text = "Conforms"

Instance: 6c33cd89-a418-4e1d-8ff7-8924beb01e86
InstanceOf: DrugSubstanceBatch
Usage: #inline
Title: "Example DrugSubstanceBatch "
Description: "An example of  a DrugSubstanceBatch to be used in a Bundle"
* identifier.value = "GlycerolMonostearate01"
* extension[api-batch]
  * extension[manufacturingDate].valueDateTime = 2020-09-25
  * extension[manufacturingDateClassification].valueCodeableConcept.text = "batch mixing start date"
  * extension[assignedManufacturer].valueReference = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
  * extension[expirationDateClassification].valueCodeableConcept = $NCIT#C185182 "Approved"
  * extension[batchUtilization].valueCodeableConcept =  $NCIT#C185328 "Stability Study"
  * extension[batchQuantity].valueQuantity = 200 'kg' "kilograms"
  * extension[container]
    * extension[lotNumber].valueString = "000001"
    * extension[type].valueCodeableConcept = $NCIT#C43193	"DRUM"
    * extension[closureSystemDescription].valueString = "a metal drum lined with plastic"
    * extension[closureType].valueCodeableConcept = $NCIT#C96115	"Continuous Thread, Metal"
    * extension[quantity].valueRatio
      * numerator = 200 'kg' "kilograms"
      * denominator = 1 '1' "drum"
* instance = true
* code.reference = Reference(urn:uuid:d7d18caa-0acb-4a1b-bc7e-b3421e2242eb)

Instance: d7d18caa-0acb-4a1b-bc7e-b3421e2242eb
InstanceOf: pqcmc-routine-drug-substance
Usage: #inline
Title: "Glycerol Monostearate Routine Substance"
Description: "An example Routine Drug substance for use in an example"
* classification = $NCIT#C48807	"Chemical"
* grade = $NCIT#C134006	"USP-NF"
* manufacturer = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* code[unii].code = $UNII#230OU9XXE4
* name[gsrs].name = "GLYCERYL MONOSTEARATE"
* name[sub].name = "Glycerol Monostearate"

Instance: 68bdb088-fed5-46dd-b718-d96d2e28b4af
InstanceOf: EctdCompositionSP4454
Usage: #inline
Title: "Drug Substance Batch Analysis Composition"
Description: "A substance batch analysis composition for use in an example"
* status = #final
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)
* title = "Glycerol Monostearate Powder Batch Analysis"
* date = 2025-03-30
* section[Api]
  * title = "Substance Batch"
  * entry = Reference(urn:uuid:00036eb7-fa63-41c9-b1d7-27b3ebb0a28d)

Instance: SubstanceBatchAnalysisBundle
InstanceOf: CMCeCTDDocumentSP4454
Usage: #example
Title: "Substance Batch Analysis Bundle (WIP)"
Description: "an example substance batch analysis for Glycerol Monostearate"
* identifier.system = $IDsys
* identifier.value = "urn:uuid:cd15f9f1-51ae-4112-85ef-7bf8eca3eccb"
* timestamp = 2025-03-31T12:34:56.789Z
* entry[0]
  * resource = 68bdb088-fed5-46dd-b718-d96d2e28b4af
  * fullUrl = "urn:uuid:68bdb088-fed5-46dd-b718-d96d2e28b4af"
* entry[+]
  * resource = 50bd6934-f0b8-4fb4-952e-f4fc5dc5d4c0
  * fullUrl = "urn:uuid:50bd6934-f0b8-4fb4-952e-f4fc5dc5d4c0"
* entry[+]
  * resource = 1319e6a4-fcdc-4358-95b8-9cd5961ea482
  * fullUrl = "urn:uuid:1319e6a4-fcdc-4358-95b8-9cd5961ea482"
* entry[+]
  * resource = 218d23e0-0219-4bdd-86aa-35145fa616b5
  * fullUrl = "urn:uuid:218d23e0-0219-4bdd-86aa-35145fa616b5"
* entry[+]
  * resource = b8d1bcbe-b969-49a1-acc0-9dfa698e844a
  * fullUrl = "urn:uuid:b8d1bcbe-b969-49a1-acc0-9dfa698e844a"
* entry[+]
  * resource = a71c68c0-2d24-43b0-a9bc-8f98eac5e50a
  * fullUrl = "urn:uuid:a71c68c0-2d24-43b0-a9bc-8f98eac5e50a"
* entry[+]
  * resource = d68f393a-57d0-4180-b4fa-265affb76ecc
  * fullUrl = "urn:uuid:d68f393a-57d0-4180-b4fa-265affb76ecc"
* entry[+]
  * resource = dabcbbb0-94b7-4ec3-80c2-114564c1c938
  * fullUrl = "urn:uuid:dabcbbb0-94b7-4ec3-80c2-114564c1c938"
* entry[+]
  * resource = 30b89618-46dc-42de-a3f0-cf6285840303
  * fullUrl = "urn:uuid:30b89618-46dc-42de-a3f0-cf6285840303"
* entry[+]
  * resource = 6160fc94-2eaa-4fed-a6e2-2b251e864caa
  * fullUrl = "urn:uuid:6160fc94-2eaa-4fed-a6e2-2b251e864caa"
* entry[+]
  * resource = 774a68f3-0e82-4457-831f-db184b863e3c
  * fullUrl = "urn:uuid:774a68f3-0e82-4457-831f-db184b863e3c"
* entry[+]
  * resource = 74678745-493e-4c0d-bfa1-40231c06144d
  * fullUrl = "urn:uuid:74678745-493e-4c0d-bfa1-40231c06144d"
* entry[+]
  * resource = 3bb4278f-7c3a-417b-a4dc-ee63e0dd8bda
  * fullUrl = "urn:uuid:3bb4278f-7c3a-417b-a4dc-ee63e0dd8bda"
* entry[+]
  * resource = c96745e6-1447-4094-bd35-d2c3680bf4b2
  * fullUrl = "urn:uuid:c96745e6-1447-4094-bd35-d2c3680bf4b2"
* entry[+]
  * resource = 6c33cd89-a418-4e1d-8ff7-8924beb01e86
  * fullUrl = "urn:uuid:6c33cd89-a418-4e1d-8ff7-8924beb01e86"
* entry[+]
  * resource = d7d18caa-0acb-4a1b-bc7e-b3421e2242eb
  * fullUrl = "urn:uuid:d7d18caa-0acb-4a1b-bc7e-b3421e2242eb"
* entry[+]
  * resource = 00036eb7-fa63-41c9-b1d7-27b3ebb0a28d
  * fullUrl = "urn:uuid:00036eb7-fa63-41c9-b1d7-27b3ebb0a28d"
* entry[+]
  * resource = 4f3e9af1-306b-4fad-bf04-7881400b266a
  * fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"
* entry[+]
  * resource = e165f057-5eed-4e64-8328-4438fc88fb1b
  * fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"
* entry[+]
  * resource = a0676c71-06f4-4c04-b864-817a0347941c
  * fullUrl = "urn:uuid:a0676c71-06f4-4c04-b864-817a0347941c"
* entry[+]
  * resource = 20317ec0-a631-4cdf-88a1-0496b5e3acaf
  * fullUrl = "urn:uuid:20317ec0-a631-4cdf-88a1-0496b5e3acaf"
* entry[+]
  * resource = 1213976b-ebb0-42f6-985d-f989356b6d59
  * fullUrl = "urn:uuid:1213976b-ebb0-42f6-985d-f989356b6d59"
* entry[+]
  * resource = 210af775-ca90-4fe6-9b04-822c765933af
  * fullUrl = "urn:uuid:210af775-ca90-4fe6-9b04-822c765933af"
* entry[+]
  * resource = 06522569-a7e8-4c9f-a7db-14c969c240c6
  * fullUrl = "urn:uuid:06522569-a7e8-4c9f-a7db-14c969c240c6"
* entry[+]
  * resource = b2727746-84a9-4e3f-ae76-b847deea3afe
  * fullUrl = "urn:uuid:b2727746-84a9-4e3f-ae76-b847deea3afe"