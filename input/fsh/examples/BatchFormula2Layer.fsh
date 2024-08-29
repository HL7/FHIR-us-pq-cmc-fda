
//asprin
Instance: d4713a90-38d1-49e5-a977-78c63e518562
InstanceOf: DrugProductIngredient
Title: "Example Asprin Ingredient"
Description: "Batch formula drug product example Active - Asprin"
Usage: #example

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
Usage: #example
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
Usage: #example
	
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
Usage: #example 

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
Usage: #example
	
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
Usage: #example
	
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

//water refernece substance in other batch formula
Instance: 128a5ef3-72e4-4a02-be94-ade8dba238e4	
InstanceOf: DrugProductIngredient
Title: "Example batch formula ingredient - Water"
Description: "Example inactive ingredient in a batch formula in multiple parts"
Usage: #example
	
* identifier.value = "MetacresolIngredient"	
* status = #active	
* role = $NCIT#C42637 "Inactive Ingredient"	
* substance	
  * code.reference = Reference(urn:uuid:c75df5fb-e962-43a6-9dd3-c6682da10a7e)	
  * strength[perBatch]	
    * concentrationQuantity = 674.58 $UCUM#g "gram"
  * strength[percent]
    * concentrationQuantity = 28.08 $UCUM#% "percent"
	  
