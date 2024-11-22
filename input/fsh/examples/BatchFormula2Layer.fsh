
//asprin
Instance: d4713a90-38d1-49e5-a977-78c63e518562
InstanceOf: DrugProductIngredient
Title: "Example Asprin Ingredient"
Description: "Batch formula drug product example Active - Asprin"
Usage: #inline

* identifier.value = "Asprin - Ingredient"	
* status = #active	
* role = $NCIT#C82533 "Active Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:cbb54715-3928-4e3f-9abe-32914f694957)	
  * strength[perBatch]	
    * concentrationQuantity = 400.0 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 10.4 $UCUM#% "percent"

Instance: cbb54715-3928-4e3f-9abe-32914f694957
InstanceOf: SubstanceDefinitionHandle
Title: "API used in two layer table example"
Description: "Identification for the drug subtance used in a batch formula"
Usage: #inline
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* manufacturer = Reference(urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b)
* code.code = $UNII#R16CO5Y76E	
* name[gsrs]	
  * name = "ASPIRIN"
  * preferred = true	

//  acetaminophen
Instance: fbd464cc-2511-4a3a-b058-3cec4fffd14f
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Acetaminophen"
Description: "Example Active ingredient in batch formula"
Usage: #inline
	
* identifier.value = "AcetaminophenIngredient"	
* status = #active	
* role = $NCIT#C82533 "Active Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:ca1ff85f-3f05-46be-8cc4-30b076d88c13)	
  * strength[perBatch]	
    * concentrationQuantity = 600.0 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 25.0 $UCUM#% "percent"

Instance: ca1ff85f-3f05-46be-8cc4-30b076d88c13
InstanceOf: SubstanceDefinitionHandle
Title: "Ingredient substance indentifying information - acetaminophen"
Description: "An API used in seond layer of table example."
Usage: #inline

* classification = $NCIT#C48807 "Chemical"
* grade = $NCIT#C134006 "USP-NF"
* manufacturer = Reference(urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579)
* code.code = $UNII#362O9ITL9D
* name[gsrs]	
  * name = "ACETAMINOPHEN"
  * preferred = true	

// Maize starch
Instance: 9973ba9a-b257-425a-8fb9-6dcfe379ca08	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Maize starch"
Description: "Example inactive ingredient in a batch formula distributed over two parts"
Usage: #inline
	
* identifier.value = "MaizeStarchIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:99f4a24f-880f-45f1-8364-8e4e03977b2e)	
  * strength[perBatch]	
    * concentrationQuantity = 1400.03 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 58.28 $UCUM#% "percent"

Instance: 99f4a24f-880f-45f1-8364-8e4e03977b2e
InstanceOf: ExcipientRaw
Title: "Ingredient substance indentifying information - Maize starch"
Description: " Maize starch excipient in the two layer tablet"
Usage: #example 

* classification = $NCIT#C45305 "Mixture"
* grade = $NCIT#C134009 "Company Standard"
* code.code = $UNII#O8232NY3SJ
* name[gsrs]	
  * name = "STARCH, CORN"
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	

// Grape skin extract

Instance: 4e394a0c-4b25-492e-aac7-0faf121ffc4f	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Grape skinn"
Description: "Example inactive ingredient in a batch formula in single part"
Usage: #inline
	
* identifier.value = "GrapeskinIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:a4624559-6c4f-4e90-996d-bc3bf2f5a3f4)	
  * strength[perBatch]	
    * concentrationQuantity = 203.71 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 8.48 $UCUM#% "percent"

Instance: a4624559-6c4f-4e90-996d-bc3bf2f5a3f4
InstanceOf: ExcipientRaw
Title: "Ingredient substance indentifying information - Grape skin extract"
Description: "Grape skin extract excipient"
Usage: #example

* classification = $NCIT#C45305 "Mixture"
* grade = $NCIT#C176793 "BP"
* code.code = $UNII#3GOV20705G
* name[gsrs]	
  * name = "WINE GRAPE"
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C14258 "Plant"

Instance: 254742fb-7b5b-49f5-b4af-e0d14d81f2f6	
InstanceOf: ExcipientRaw
Title: "Example 2-layer batch formula ingredient substance - Water"
Description: "Example 2-layer inactive ingredient in batch formula. Contains the identiy and codes of the substance"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-excipient"	
* classification = $NCIT#C48807 "Chemical"	
* grade = $NCIT#C134006 "USP-NF"	
* code.code = $UNII#059QF0KO0R	
* name[gsrs]	
  * name = "WATER"	
  * preferred = true	
* sourceMaterial	
  * type = $NCIT#C48807 "Chemical"	

Instance: 95648837-ec81-42d9-970c-eac390f2f604
InstanceOf: DrugProductIngredient
Title: "Example 2-layer batch formula ingredient - Water"
Description: "Example 2-layer inactive ingredient in batch formula"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pqcmc-dp-ingredient"	
* identifier.value = "WaterBFIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:254742fb-7b5b-49f5-b4af-e0d14d81f2f6)	
  * strength[perBatch]	
    * concentrationQuantity = 50.75 $UCUM#kg "kilogram"
  * strength[percent]
    * concentrationQuantity = 95.3572 $UCUM#% "percent"

Instance: f0f3ff35-5cfa-6617-b8f1-b8167957f53c
InstanceOf: BatchFormulaMedicinalProduct
Title: "Batch Formula Drug Product Identification 2 layer"
Description: "Basic idenfier informion  the Drug Product with reference to the Batch Formula for 2 layer example"
Usage: #inline
	
* identifier.value = "ASPIRIN-ACETAMINOPHEN-Identification"	
* combinedPharmaceuticalDoseForm = $NCIT#C42964 "TABLET, MULTILAYER"
* route = $NCIT#C38288 "ORAL"	
* comprisedOf = Reference(urn:uuid:8a3e11d9-4323-43c4-be00-8f0ea1837070)	
* name[NonProprietary]	
  * productName = "ASPIRIN 200mg, ACETAMINOPHEN 300mg"
  * type = $NCIT#C96971 "Nonproprietary Name"
  * part[Scientific][+]	
    * part = "ASPIRIN"	
  * part[Strength][+]	
    * part = "200mg"	
    * type.text = "ASPIRIN"	
  * part[Scientific][+]	
    * part = "ACETAMINOPHEN"	
  * part[Strength][+]	
    * part = "300mg"	
    * type.text = "ACETAMINOPHEN"	

Instance: 8a3e11d9-4323-43c4-be00-8f0ea1837070
InstanceOf: BatchFormula
Title: "Batch Formula for 2 layer tablet"
Description: "Batch Formula Exmample for drug product with two component layers"
Usage: #inline
	
* identifier.value = "ASPIRIN-ACETAMINOPHEN"	
* status = #active	
* name = "ASPIRIN 200mg, ACETAMINOPHEN 300mg 2000 tablets"	
* manufacturedDoseForm = $NCIT#C154605 "Tablet" 
* manufacturer = Reference(urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7)	
* property[BatchSize]	
 // * valueQuantity = $UCUM#\{tbl\} "tablets" 
  * valueQuantity = 2000 $UCUM#1 "1*" 
* property[BatchUtil]	
  * valueCodeableConcept = $NCIT#C133991 "Development"
* property[AddInfo]	
  * valueMarkdown = """Makes 2000 tablets equivalent to 2.402 kilograms, accounting for losses from evaporation"""	
// there are 2 components	
* component[0]	
  * type = $NCIT#C66831 "Layer"	
  * amount[perBatch] = 925.97 $UCUM#g "gram"
  * amount[percent] = 38.55 $UCUM#% "percent"
  * property[PPiD].valueCodeableConcept.text = "Purple Layer"
     // Asprin	
  * constituent[0]	
    * amount[perBatch] = 400.0 $UCUM#g "gram"
    * amount[percent] = 43.1 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:d4713a90-38d1-49e5-a977-78c63e518562)	 
    * location = $NCIT#C203881 "Active core/granulate"       
    * location.text = "Purple Layer" 
    // Maize starch
  * constituent[+]	
    * amount[perBatch] = 524.01 $UCUM#g "gram" 
    * amount[percent] = 56.59 $UCUM#% "percent"	  
    * hasIngredient.reference = Reference(urn:uuid:9973ba9a-b257-425a-8fb9-6dcfe379ca08)	          
    * location = $NCIT#C203883 "Intragranular"
    * location.text = "Purple Layer"
    // Grape skin extract	
  * constituent[+]	
    * amount[perBatch] = 203.71 $UCUM#g "gram"
    * amount[percent] = 22.0 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:4e394a0c-4b25-492e-aac7-0faf121ffc4f)	
    * location = $NCIT#C203882 "Extragranular"
    * location.text = "Purple Layer"
   // water	
  * constituent[+]
    * extension[formulaIngredient]
      * extension[overagePercent].valueDecimal = 0.02
      * extension[overageJustification].valueMarkdown = "Evaporation"
    * amount[perBatch] = 311.68 $UCUM#g "gram"
    * amount[percent] = 33.0 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:95648837-ec81-42d9-970c-eac390f2f604)	
    * location = $NCIT#C203882 "Extragranular"
    * location.text = "Purple Layer"
// second layer
* component[+]	
  * type = $NCIT#C66831 "Layer"	
  * amount[perBatch] = 1476.03 $UCUM#g "gram"
  * amount[percent] = 61.45 $UCUM#% "percent"
  * property[PPiD].valueCodeableConcept.text = "Example1Drug_LayerB"  
  // acetaminophen
  * constituent[0]	
    * amount[perBatch] = 600.01 $UCUM#g "gram"
    * amount[percent] = 40.65 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:fbd464cc-2511-4a3a-b058-3cec4fffd14f)	   
    * location = $NCIT#C203881 "Active core/granulate"
    * location.text = "Example1Drug_LayerB"
  // Maize starch
  * constituent[+]	
    * amount[perBatch] = 876.02 $UCUM#g "gram" 
    * amount[percent] = 59.35 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:9973ba9a-b257-425a-8fb9-6dcfe379ca08)	
    * location = $NCIT#C203883 "Intragranular"
    * location.text = "Example1Drug_LayerB"
  // water	
  * constituent[+]	
    * amount[perBatch] = 369.01 $UCUM#g "gram"
    * amount[percent] = 25.0 $UCUM#% "percent"
    * hasIngredient.reference = Reference(urn:uuid:95648837-ec81-42d9-970c-eac390f2f604)	  
    * location = $NCIT#C203882 "Extragranular"
    * location.text = "Example1Drug_LayerB"
// composition
Instance: c00b0003-c2bf-7547-8b1c-f1f399f99d5c
InstanceOf: EctdComposition32P32
Title: "Example Composition 3.2.P.3.2 two layer tablet"
Description: "Composition 32P32 - Batch Formula Composition with multiple parts"
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/ectd-composition-32p32"	
* identifier.value = "BatchFormulaComposition2layer"
* status = #final	
* author = Reference(urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a)	
* date = 2024-08-01T12:34:56.789Z	
* title = """Batch formula example two layer tablet"""
* section[BatchFormulaMedicinalProduct]
  * title = "Batch Formula"	
  * entry = Reference(urn:uuid:f0f3ff35-5cfa-6617-b8f1-b8167957f53c)	

Instance: 49d3b79e-b436-a242-93ba-b706b4364ab2
InstanceOf: CMCeCTDDocument32P32
Title: "Example Batch Formula bundle with two layers"
Description: "FHIR bundle with a CMC eCTD 32P32 profile - with layers"
Usage: #example
* identifier	
  * system = $IDsys	
  * value = "urn:uuid:49d3b79e-b436-a242-93ba-b706b4364ab2"
* timestamp = 2024-08-29T12:34:56.789Z	
//  composition
* entry[0]  
  * resource = c00b0003-c2bf-7547-8b1c-f1f399f99d5c  
  * fullUrl = "urn:uuid:c00b0003-c2bf-7547-8b1c-f1f399f99d5c"
// sponsor	  
* entry[+] 
  * resource = 4f3e9af1-306b-4fad-bf04-7881400b266a	
  * fullUrl = "urn:uuid:4f3e9af1-306b-4fad-bf04-7881400b266a"	 
//manufacturer
* entry[+]
  * resource = b69435a0-45c6-4d44-9fde-b354e17408d7 
  * fullUrl = "urn:uuid:b69435a0-45c6-4d44-9fde-b354e17408d7"
// BatchFormulaMedicinalProduct 
* entry[+] 
  * resource = f0f3ff35-5cfa-6617-b8f1-b8167957f53c  
  * fullUrl = "urn:uuid:f0f3ff35-5cfa-6617-b8f1-b8167957f53c"
// BatchFormula
* entry[+]  
  * resource = 8a3e11d9-4323-43c4-be00-8f0ea1837070  
  * fullUrl = "urn:uuid:8a3e11d9-4323-43c4-be00-8f0ea1837070"
// asprin
* entry[+]  
  * resource = d4713a90-38d1-49e5-a977-78c63e518562  
  * fullUrl = "urn:uuid:d4713a90-38d1-49e5-a977-78c63e518562"
// acetaminophen
* entry[+]  
  * resource = fbd464cc-2511-4a3a-b058-3cec4fffd14f  
  * fullUrl = "urn:uuid:fbd464cc-2511-4a3a-b058-3cec4fffd14f"
//  Maize starch
* entry[+]  
  * resource = 9973ba9a-b257-425a-8fb9-6dcfe379ca08  
  * fullUrl = "urn:uuid:9973ba9a-b257-425a-8fb9-6dcfe379ca08"
//  Grape skin extract
* entry[+]  
  * resource = 4e394a0c-4b25-492e-aac7-0faf121ffc4f  
  * fullUrl = "urn:uuid:4e394a0c-4b25-492e-aac7-0faf121ffc4f"
// water ingredient	
* entry[+]	
  * resource = 95648837-ec81-42d9-970c-eac390f2f604	
  * fullUrl = "urn:uuid:95648837-ec81-42d9-970c-eac390f2f604"	
// substance Asprin
* entry[+]  
  * resource = cbb54715-3928-4e3f-9abe-32914f694957  
  * fullUrl = "urn:uuid:cbb54715-3928-4e3f-9abe-32914f694957"
// substance acetaminophen
* entry[+]  
  * resource = ca1ff85f-3f05-46be-8cc4-30b076d88c13  
  * fullUrl = "urn:uuid:ca1ff85f-3f05-46be-8cc4-30b076d88c13"
// substance Maize starch
* entry[+]  
  * resource = 99f4a24f-880f-45f1-8364-8e4e03977b2e  
  * fullUrl = "urn:uuid:99f4a24f-880f-45f1-8364-8e4e03977b2e"
// substance waterGrape skin extract
* entry[+]  
  * resource = a4624559-6c4f-4e90-996d-bc3bf2f5a3f4  
  * fullUrl = "urn:uuid:a4624559-6c4f-4e90-996d-bc3bf2f5a3f4"
// water excipient	
* entry[+]	
  * resource = 254742fb-7b5b-49f5-b4af-e0d14d81f2f6	
  * fullUrl = "urn:uuid:254742fb-7b5b-49f5-b4af-e0d14d81f2f6"	
* entry[+]
  * resource = 4b565cf3-5353-48af-8cd6-5ccf4e9fd579
  * fullUrl = "urn:uuid:4b565cf3-5353-48af-8cd6-5ccf4e9fd579"
* entry[+]
  * resource = e165f057-5eed-4e64-8328-4438fc88fb1b
  * fullUrl = "urn:uuid:e165f057-5eed-4e64-8328-4438fc88fb1b"