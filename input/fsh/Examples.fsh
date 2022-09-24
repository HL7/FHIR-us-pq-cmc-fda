Instance: 7e34e5c1-5e95-400f-8f76-332dd096e735
InstanceOf: MfgTestSiteOrganization
Usage: #example
Title: "Drug Manufacturing Site (Vandechemie)"
Description: "Example of Manufacturing site using the MfgTestSiteOrganization profle"
* identifier[DUNSNumber].type.coding = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "143265222"
* identifier[FEINumber].type.coding = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "6981397"
//* type = "Manufacturing Site Function"
* name = "Vandechemie"
* contact.address[+].text = "Vandechemie, Ruzettelaan 39234, Blankenberge, 8370, Belgium"
* contact.address[=].line = "Ruzettelaan 39234"
* contact.address[=].city = "Blankenberge"
* contact.address[=].postalCode = "8370"
* contact.address[=].country = "Belgium"

Instance: 54f18826-92fb-4afa-bbc8-fdefabbd027f
InstanceOf: PolymorphicForm  
Usage: #example
Title: "Instance of a PolymorphicForm"
Description: "Example of the  PolymorphicForm of D-Glucose."

* classification = $EMAIDMP#1 "Chemical" 
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)  
* molecularWeight.amount.value  = 180.16
* molecularWeight.amount.unit = "Dalton"
* molecularWeight.amount.system = $UCUM
* molecularWeight.amount.code = $UCUM#u
* structure.technique.text = "Laue Spot Method"
* structure.representation.type.coding = $NCIT#C133910 "MOLFILE"
* structure.representation.representation = """Marvin  01132107542D          

 12 11  0  0  1  0            999 V2000
    5.5432   -4.4810    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    6.2567   -4.0667    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    6.9747   -4.4810    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    7.6881   -4.0667    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    8.4016   -4.4810    0.0000 C   0  0  2  0  0  0  0  0  0  0  0  0
    9.1150   -4.0667    0.0000 C   0  0  1  0  0  0  0  0  0  0  0  0
    9.8283   -4.4810    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    9.8283   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    9.1150   -3.2424    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    8.4016   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    7.6881   -3.2424    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
    6.9747   -5.3052    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0
  1  2  1  0  0  0  0
  2  3  1  0  0  0  0
  3  4  1  0  0  0  0
  4  5  1  0  0  0  0
  5  6  1  0  0  0  0
  6  7  1  0  0  0  0
  7  8  2  0  0  0  0
  6  9  1  6  0  0  0
  5 10  1  6  0  0  0
  4 11  1  6  0  0  0
  3 12  1  1  0  0  0
M  END
"""
//* code.code.coding.system = $UNII
* code.code = $UNII#02833ISA66 "02833ISA66"
* name[0].name = "LEVOGLUCOSE"
//* name[sub].type = PqcmcNameTypesCodes#Substance "Substance Name"	
//* name[sub].preferred  = true
//* name[iupac].name = "(2S,3R,4S,5S)-2,3,4,5,6-PENTAHYDROXYHEXANAL"
//* name[iupac].type = PqcmcNameTypesCodes#IUPAC "IUPAC Name"	

Instance: 1c353afe-cfa0-48e0-abba-b4e3ddc66208
InstanceOf: EctdComposition32P32
Usage: #example
Title: "Example eCTD Batch Formula"
Description: "Drug Product Batch Formula for a biLayer tablet illustratin the use of grouop the ingredient resource."

* status = #final
* date = "2021-10-29"
* author = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
* title = "Product x Batch Formula"
* section.title = "Batch Formula for Nitazoxanide 675mg controlled release tablets"
* section.entry = Reference(fb333dbd-4b8c-4006-8888-5d9849ef1f9b)

Instance: fb333dbd-4b8c-4006-8888-5d9849ef1f9b
InstanceOf: BatchFormula
Usage: #example
Title: "Example Batch Formula"
Description: "Example Batch Formulation of Bilayer Tablet"

* extension[batch-size].valueQuantity = 100000 '{tbl}' "tablet"
* name.productName = "Nitazoxanide"
* name.type.text = "Non-proprietary"
* operation[0].type.reference = Reference(367ec3e3-65c6-4358-9ec1-054b669e0c36)
* operation[+].type.reference = Reference(b6cc4cf0-666c-4b17-98b3-303ea87fdd74)
* operation[+].type.reference = Reference(1ebf5cbd-4c34-4d21-8b16-b21e849173ba)
* operation[+].type.reference = Reference(e2714f5f-ae0e-4936-86ac-f3574bfbfd45)
* operation[+].type.reference = Reference(24f96097-e317-4b8f-8267-23a42c9afcd1)
* operation[+].type.reference = Reference(4d611344-0693-44cb-a0a3-cc404463fd34)
* operation[+].type.reference = Reference(e336b548-4ea0-4eb3-9f71-5fd624b60e9f)
* operation[+].type.reference = Reference(ca679c3a-b940-4fe4-b454-ba25986d5567)
* operation[+].type.reference = Reference(f7c69b8a-9c97-480c-b040-9bdba4f8a0d1)
* operation[+].type.reference = Reference(021f7509-feba-49df-9288-f8db04bd6792)
* operation[+].type.reference = Reference(8625a4fe-0484-4da0-8791-8d16997a5cac)
* operation[+].type.reference = Reference(29bb9464-86dd-4293-b2af-e535ec7de830)
* operation[+].type.reference = Reference(b233147f-72ce-446a-abf2-5c01fe09be66)
* operation[+].type.reference = Reference(7528d67d-f15d-4094-baa5-a1d2b73596da)
* operation[+].type.reference = Reference(b58bb8fa-7c7c-42a9-ac27-84978f2c683e)
* operation[+].type.reference = Reference(d842946c-7f37-417b-ab88-ef13038b9bb5)
* operation[+].type.reference = Reference(b3da720c-c063-4afc-a1a1-57bc545dbe1a)

Instance: 367ec3e3-65c6-4358-9ec1-054b669e0c36
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample7"
Description: "Example of Batch Formula Ingredient Imme-Nitaz"

* description = "The form of the solid dosage form provided has this first portion comprising a first quantity of nitazoxanide or analogue thereof in a controlled release of formulation"
* status = #active
* productReference = Reference(0ee6ed41-894b-492b-bbca-955494fadb94)

Instance: b6cc4cf0-666c-4b17-98b3-303ea87fdd74
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample2"
Description: "Example of Batch Formula Ingredient Imme-STARC"

* status = #active
* productReference = Reference(2abd3e0c-96ec-4287-abee-592ab0251018)

Instance: 1ebf5cbd-4c34-4d21-8b16-b21e849173ba
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample3"
Description: "Example of Batch Formula Ingredient Imme-HYDRO"

* status = #active
* productReference = Reference(390e8312-1a86-4b6e-af5c-1cc98a1e481d)

Instance: e2714f5f-ae0e-4936-86ac-f3574bfbfd45
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample4"
Description: "Example of Batch Formula Ingredient Imme-Crosc"

* status = #active
* productReference = Reference(7a77bed2-3b5e-4722-b442-5aa3f3f64210)

Instance: 24f96097-e317-4b8f-8267-23a42c9afcd1
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample5"
Description: "Example of Batch Formula Ingredient Imme-Silic"

* status = #active
* productReference = Reference(0dc2fa8f-89ed-44b2-b835-b4e5d3a8d78a)

Instance: 4d611344-0693-44cb-a0a3-cc404463fd34
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample6"
Description: "Example of Batch Formula Ingredient Imme-MICRO"

* status = #active
* productReference = Reference(88ce020c-846c-463d-8e33-babdfe80c947)

Instance: e336b548-4ea0-4eb3-9f71-5fd624b60e9f
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample8"
Description: "Example of Batch Formula Ingredient Imme-Magne"

* status = #active
* productReference = Reference(7c310723-134d-425a-9aff-60462e4c567a)

Instance: ca679c3a-b940-4fe4-b454-ba25986d5567
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample9"
Description: "Example of Batch Formula Ingredient Imme-Purif"

* status = #active
* productReference = Reference(54b2180a-ba32-45c4-884b-670ffa28e9af)

Instance: f7c69b8a-9c97-480c-b040-9bdba4f8a0d1
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample10"
Description: "Example of Batch Formula Ingredient Cont-Nitaz"

* description = "The form of the solid dosage form provided has this second portion comprising a second quantity of nitazoxanide or analogue thereof in an immediate release of formulation"
* status = #active
* productReference = Reference(e30e4e0b-365f-4cf4-b6f8-00c7ca2dc934)

Instance: 021f7509-feba-49df-9288-f8db04bd6792
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample11"
Description: "Example of Batch Formula Ingredient Cont-HYDRO"

* status = #active
* productReference = Reference(4ca2742c-416c-465e-916d-fa1990911489)

Instance: 8625a4fe-0484-4da0-8791-8d16997a5cac
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula IngredientExample12"
Description: "Example of Batch Formula Ingredient Cont-Silic"

* status = #active
* productReference = Reference(862ce93d-8743-42ab-84de-be28d8300df8)

Instance: 29bb9464-86dd-4293-b2af-e535ec7de830
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Cont-Magne"
Description: "Example of Batch Formula Ingredient Cont-Magne"

* status = #active
* productReference = Reference(a5084f22-ffbf-4268-a240-0d203c499cc5)

Instance: b233147f-72ce-446a-abf2-5c01fe09be66
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Cont-Purif"
Description: "Example of Batch Formula Ingredient Cont-Purif"

* status = #active
* productReference = Reference(71a6de11-4229-4228-97c6-68e1d6acb78b)

Instance: 7528d67d-f15d-4094-baa5-a1d2b73596da
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Cont-HYPRO"
Description: "Example of Batch Formula Ingredient Cont-HYPRO"

* status = #active
* productReference = Reference(be37ba6a-f009-4ec0-92f0-2abb8d78a6a1)

Instance: b58bb8fa-7c7c-42a9-ac27-84978f2c683e
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Coat-OpadrGreen"
Description: "Example of Batch Formula Ingredient Coat-OpadrGreen"

* status = #active
* productReference = Reference(085a514e-b5cb-4e65-b5ab-3180e4aceba0)

Instance: d842946c-7f37-417b-ab88-ef13038b9bb5
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Coat-Opadr"
Description: "Example of Batch Formula Ingredient Coat-Opadr"

* status = #active
* productReference = Reference(2ab2018b-f387-48f9-8cd0-0ca9346acf2d)

Instance: b3da720c-c063-4afc-a1a1-57bc545dbe1a
InstanceOf: ActivityDefinition
Usage: #example
Title: "Batch Formula Ingredient Coat-Purif"
Description: "Example of Batch Formula Ingredient Coat-Purif"

* status = #active
* productReference = Reference(a9f265fe-90ae-4e78-ae81-3dacabe9ae7a)

Instance: 0ee6ed41-894b-492b-bbca-955494fadb94	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 1 "
Description: "Batch Formula Ingredient Amounts Imme-Nitaz with overagePercent and Justification"
	
* extension[formulaIngredient].extension[overagePercent].valueDecimal = 0.4	
* extension[formulaIngredient].extension[overageJustification].valueMarkdown = "Loss during manufactuing"		 
* status = #active	
* role.coding = $NCIT#C82533 "Active Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(363bd671-2817-4778-a3fe-c65b68c63308)	
* substance.strength.concentrationQuantity.value = 17.5	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "17.5 kg"	
	
Instance: 2abd3e0c-96ec-4287-abee-592ab0251018	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 2"
Description: "Batch Formula Ingredient Amounts Imme-STARC"
	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(46667123-2b0f-4dfe-aebe-79f8ddcc58dd)	
* substance.strength.concentrationQuantity.value = 3.6	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "3.6 kg"	
	
Instance: 390e8312-1a86-4b6e-af5c-1cc98a1e481d	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 3"
Description: "Batch Formula Ingredient Amounts Imme-HYDRO"
	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(54388f31-3469-4fb4-b7c2-d785cb042d1d)	
* substance.strength.concentrationQuantity.value = 0.5	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.5 kg"	
	
Instance: 7a77bed2-3b5e-4722-b442-5aa3f3f64210	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 4"
Description: "Batch Formula Ingredient Amounts Imme-Crosc"
	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(b91053b7-f87c-4baa-9dfd-33619e8c9d72)	
* substance.strength.concentrationQuantity.value = 0.75	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.75 kg"	
	
Instance: 0dc2fa8f-89ed-44b2-b835-b4e5d3a8d78a	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 5"
Description: "Batch Formula Ingredient Amounts Imme-Silic"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(6a064012-5b43-489d-bd07-4c0cc1da593e)	
* substance.strength.concentrationQuantity.value = 0.1	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.1 kg"	
	
Instance: 88ce020c-846c-463d-8e33-babdfe80c947	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 6"
Description: "Batch Formula Ingredient Amounts Imme-MICRO"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(4bb4aeb0-47c2-4c90-ac13-041fb6a36ce2)	
* substance.strength.concentrationQuantity.value = 2.3	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "2.3 kg"	
	
Instance: 7c310723-134d-425a-9aff-60462e4c567a	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 7"
Description: "Batch Formula Ingredient Amounts Imme-Magne"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(171f0414-6999-47fa-b792-67510f9e33cc)	
* substance.strength.concentrationQuantity.value = 0.25	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.25 kg"	
	
Instance: 54b2180a-ba32-45c4-884b-670ffa28e9af	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 8"
Description: "Batch Formula Ingredient Amounts Imme-Purif"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Immediate Release Layer"	
* substance.code.reference = Reference(a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf)	
* substance.strength.concentrationQuantity.value = 5	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "5 kg"	
	
Instance: e30e4e0b-365f-4cf4-b6f8-00c7ca2dc934	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 9"
Description: "Batch Formula Ingredient Amounts Cont-Nitaz with overage extensions"
	
* extension[formulaIngredient].extension[overagePercent].valueDecimal = 0.4	
* extension[formulaIngredient].extension[overageJustification].valueMarkdown = "Loss during manufactuing"		
* status = #active	
* role.coding = $NCIT#C82533 "Active Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(363bd671-2817-4778-a3fe-c65b68c63308)	
* substance.strength.concentrationQuantity.value = 50	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "50 kg"	

Instance: 4ca2742c-416c-465e-916d-fa1990911489	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 10"
Description: "Batch Formula Ingredient Amounts Cont-HYDRO"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(54388f31-3469-4fb4-b7c2-d785cb042d1d)	
* substance.strength.concentrationQuantity.value = 0.25	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.25 kg"	
	
Instance: 862ce93d-8743-42ab-84de-be28d8300df8	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 11"
Description: "Batch Formula Ingredient Amounts Cont-Silic"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(6a064012-5b43-489d-bd07-4c0cc1da593e)	
* substance.strength.concentrationQuantity.value = 0.3	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.3 kg"	
	
Instance: a5084f22-ffbf-4268-a240-0d203c499cc5	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 12"
Description: "Batch Formula Ingredient Amounts Cont-Magne"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(171f0414-6999-47fa-b792-67510f9e33cc)	
* substance.strength.concentrationQuantity.value = 0.7	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.1 kg"	
	
Instance: 71a6de11-4229-4228-97c6-68e1d6acb78b	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 13"
Description: "Batch Formula Ingredient Amounts Cont-Purif"
 	
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf)	
* substance.strength.concentrationQuantity.value = 6	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "6 kg"	
	
Instance: be37ba6a-f009-4ec0-92f0-2abb8d78a6a1	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 14"
Description: "Batch Formula Ingredient Amounts Cont-HYPRO"
 
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Controlled Release Layer"	
* substance.code.reference = Reference(868a2f83-b9ba-4ece-b238-11e0afe222ee)	
* substance.strength.concentrationQuantity.value = 13.5	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "13.5 kg"	
	
Instance: 085a514e-b5cb-4e65-b5ab-3180e4aceba0	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 15"
Description: "Batch Formula Ingredient Amounts Coat-OpadrGreen with additional info entension"

* extension[additional-info].valueMarkdown = "contains c.i. pigment blue 63, polyvinyl alcohol, talc, lecithins, xanthan gum, titanium dioxide, c.i. pigment yellow 42"		
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Coating Materials"	
* substance.code.reference = Reference(d4e21b68-6ec4-4ab2-9615-89aceb6de25e)	
* substance.strength.concentrationQuantity.value = 4	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "4 kg"	
	
Instance: 2ab2018b-f387-48f9-8cd0-0ca9346acf2d	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 16"
Description: "Batch Formula Ingredient Amounts Coat-Opadr"

* extension[additional-info].valueMarkdown = "contains, polyvinyl alcohol, talc, polyethylene glycol, mica-based pearlescent pigment, polysorbate 80"		
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Coating Materials"	
* substance.code.reference = Reference(a1ad301f-356b-4010-9d61-8e01af0a3f38)	
* substance.strength.concentrationQuantity.value = 0.5	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "0.5 kg"	
	
Instance: a9f265fe-90ae-4e78-ae81-3dacabe9ae7a	
InstanceOf: DrugProductIngredient	
Usage: #example	
Title: "Batch Formula Ingredient Example 17"
Description: "Batch Formula Ingredient Amounts Coat-Purif"
 
* status = #active	
* role.coding = $NCIT#C42637 "Inactive Ingredient"	
* group.text = "Coating Materials"	
* substance.code.reference = Reference(a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf)	
* substance.strength.concentrationQuantity.value = 326	
* substance.strength.concentrationQuantity.unit = "kilogram"	
* substance.strength.concentrationQuantity.code = $UCUM#kg	
* substance.strength.textConcentration = "326 kg"	
	

Instance: 942fcdc9-8ab9-4f52-be6d-af549117d462
InstanceOf: DrugSubstanceNomenclature
Usage: #example
Title: "Example Drug Substance Nomenclature"
Description: "ANHYDROUS DEXTROSE as example of a Drug Substance Nomenclature"
 
* classification = $EMAIDMP#1"Chemical" 
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735) 
* molecularWeight.amount.value = 180.16
* molecularWeight.amount.unit = "Dalton"
* molecularWeight.amount.code = $UCUM#u
* code.code.coding.system = $UNII
* code.code.coding.code = $UNII#5SL0G7R0OK "5SL0G7R0OK"
* name[sub].name = "ANHYDROUS DEXTROSE"
* name[sub].type = PqcmcNameTypesCodes#Substance "Substance Name"	
* name[sub].preferred = true
* name[cas].name = "9001-37-0"
* name[cas].type = PqcmcNameTypesCodes#CAS "CAS Number"	
* name[inn].name = "Dextrose"
* name[inn].type = PqcmcNameTypesCodes#INN "INN"	
* name[usan].name = "Glucose oxidase"
* name[usan].type = PqcmcNameTypesCodes#USAN "USAN"	
* name[iupac].name = "(2R,3S,4R,5R)-2,3,4,5,6-"
* name[iupac].type = PqcmcNameTypesCodes#IUPAC "IUPAC Name"	
//* name[isbt].name = "-"
//* type[isbt].type = PqcmcNameTypesCodes#ISBT "ISBT 128"	
* name[comp].name = "W6578-D-GLUCOSE"
* name[comp].type = PqcmcNameTypesCodes#Company "Company Code"	
* relationship.substanceDefinitionReference = Reference(54f18826-92fb-4afa-bbc8-fdefabbd027f) 
* relationship.type.text = "Polymorph" 

Instance: 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
InstanceOf: DrugSubstanceStructure
Usage: #example
Title: "Drug Substance Structures - ANHYDROUS DEXTROSE"
Description: "Example of Drug Substance (Active Ingredient) Representational Structures using ANHYDROUS DEXTROSE. Includes both a SVG file and an image for diagram to illustrate the difference."
 
* classification = $EMAIDMP#1 "Chemical"
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)  
* structure.technique.text = "Rotating Crystal Method" 
* structure.representation.type.coding.code = $NCIT#C133910 "MOLFILE"
* structure.representation.representation = """Marvin 01132103212D     

 12 11 0 0 1 0      999 V2000
  7.7089  -2.6788  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
  8.4234  -2.2663  0.0000 C  0 0 0 0 0 0 0 0 0 0 0 0
  9.1379  -2.6788  0.0000 C  0 0 2 0 0 0 0 0 0 0 0 0
  9.8523  -2.2663  0.0000 C  0 0 2 0 0 0 0 0 0 0 0 0
  10.5668  -2.6788  0.0000 C  0 0 1 0 0 0 0 0 0 0 0 0
  11.2813  -2.2663  0.0000 C  0 0 2 0 0 0 0 0 0 0 0 0
  11.9957  -2.6788  0.0000 C  0 0 0 0 0 0 0 0 0 0 0 0
  11.9957  -3.5038  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
  11.2813  -1.4413  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
  10.5668  -3.5038  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
  9.8523  -1.4413  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
  9.1379  -3.5038  0.0000 O  0 0 0 0 0 0 0 0 0 0 0 0
 1 2 1 0 0 0 0
 2 3 1 0 0 0 0
 3 4 1 0 0 0 0
 4 5 1 0 0 0 0
 5 6 1 0 0 0 0
 6 7 1 0 0 0 0
 7 8 2 0 0 0 0
 6 9 1 1 0 0 0
 5 10 1 1 0 0 0
 4 11 1 1 0 0 0
 3 12 1 6 0 0 0
M END
"""
* structure.representation.type.coding.code = $NCIT#C54684	"SMILES"
* structure.representation.representation = """C(=O)[C@@]([H])([C@]([H])([C@@]([H])([C@@]([H])(CO)O)O)O)O
"""
* structure.representation.type.coding.code = $NCIT#C54683	"InChI File (small molecule)"
* structure.representation.representation = """InChI=1S/C6H12O6/c7-1-3(9)5(11)6(12)4(10)2-8/h1,3-6,8-12H,2H2/t3-,4+,5+,6+/m0/s1
"""
* structure.representation.type.coding.code = $NCIT#C54684 "SVG"
* structure.representation.representation = """
<?xml version="1.0" encoding="utf-8"?>
<!-- Generator: Adobe Illustrator 19.2.1, SVG Export Plug-In . SVG Version: 6.00 Build 0) -->
<svg version="1.1" id="Слой_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 306.9 287.9" style="enable-background:new 0 0 306.9 287.9;" xml:space="preserve">
<g>
	<polygon points="70.6,183.8 77.7,196.1 79.6,194.5 72.9,182.9 	"/>
	<polygon points="98,173.7 100.1,177.3 102,175.8 100.3,172.9 	"/>
	<polygon points="79.7,180.4 85.2,189.9 87.1,188.3 82,179.6 	"/>
	<polygon points="88.9,177.1 92.7,183.6 94.5,182 91.2,176.2 	"/>
	<polygon points="228.7,195.2 230.6,196.7 237.5,184.7 235.2,183.9 	"/>
	<polygon points="206.1,176.7 208,178.3 210.2,174.3 208,173.5 	"/>
	<polygon points="221.2,189 223,190.6 228.4,181.3 226.1,180.4 	"/>
	<polygon points="213.6,182.9 215.5,184.4 219.3,177.8 217,176.9 	"/>
	<path d="M223.2,109.9c0.9-0.5,1.5-1.4,1.8-2.6c0.3-1,0.4-2.4,0.3-4c-0.1-1.4,0-2.4,0.2-3.2c0.2-0.6,0.4-1,0.7-1.1
		c0.3-0.2,0.7-0.2,1.3,0c0.7,0.2,1.6,0.6,2.7,1.3c0.7,1.1,1.4,1.9,2,2.4c0.4,0.3,0.8,0.6,1.1,0.7c0.5,0.2,1.1,0.1,1.5-0.1
		c0.4-0.2,0.7-0.6,0.9-1.1c0.2-0.4,0.3-0.8,0.3-1.3c0.1-0.9,0.1-2.2,0.1-3.7l-2.4,0.1c0.1,1.4,0.1,2.5,0,3.2c0,0.1,0,0.2-0.1,0.3
		c-0.4-0.4-1-1.1-1.6-2.1l-0.1-0.2l-0.2-0.1c-1.4-0.9-2.5-1.5-3.6-1.8c-1.2-0.3-2.3-0.2-3.1,0.3c-0.9,0.5-1.5,1.4-1.8,2.6
		c-0.3,1-0.4,2.4-0.3,4c0.1,1.4,0,2.4-0.2,3.2c-0.2,0.6-0.4,1-0.7,1.1c-0.3,0.2-0.7,0.2-1.3,0c-0.8-0.2-1.7-0.7-2.9-1.4
		c-1.4-0.9-2.5-1.5-3.6-1.8c-1.2-0.3-2.3-0.2-3.1,0.3c-0.9,0.5-1.5,1.4-1.8,2.6c-0.3,1-0.4,2.4-0.3,4c0.1,1.4,0,2.4-0.2,3.2
		c-0.2,0.6-0.4,1-0.7,1.1c-0.3,0.2-0.7,0.2-1.3,0c-0.8-0.2-1.7-0.7-2.9-1.4l-0.7,1l0.6-1l-34.5-19.9l-1.2,2.1l33.9,19.6V171v1.3
		l-1.1,0.7l0,0l-47.6,27.5l-47.6-27.5l0,0l-1.1-0.7V171v-54.9l31-17.9l-1.2-2.1l-31,17.9L54.9,80.6V47.8h-2.4V79v7.6v7.6l49.9,22
		V171v2l0,0.7l0.6,0.3l1.7,1l0,0l47.4,27.4l-6.3,35.8H161l-6.3-35.8l47.4-27.4l0,0l1.7-1l0.6-0.3V173v-2v-53.5
		c0.6,0.3,1.2,0.5,1.7,0.7c1.2,0.3,2.3,0.2,3.1-0.3c0.9-0.5,1.5-1.4,1.8-2.6c0.3-1,0.4-2.4,0.3-4c-0.1-1.4,0-2.4,0.2-3.2
		c0.2-0.6,0.4-1,0.7-1.1c0.3-0.2,0.7-0.2,1.3,0c0.8,0.2,1.7,0.7,2.9,1.4c1.4,0.9,2.5,1.5,3.6,1.8
		C221.3,110.4,222.4,110.4,223.2,109.9z M103.5,115.4L103.5,115.4L103.5,115.4L103.5,115.4z"/>
	<path d="M153.4,100.9c8,0,13-5.6,13-14.6c0-8.9-5-14.6-13-14.6c-8,0-13,5.6-13,14.6C140.4,95.3,145.4,100.9,153.4,100.9z M153.4,75
		c5.8,0,9.4,4.4,9.4,11.3c0,6.9-3.6,11.3-9.4,11.3c-5.8,0-9.4-4.4-9.4-11.3C144.1,79.4,147.7,75,153.4,75z"/>
	<path d="M53.7,43.3c8,0,13-5.6,13-14.6c0-8.9-5-14.6-13-14.6c-8,0-13,5.6-13,14.6C40.7,37.7,45.7,43.3,53.7,43.3z M53.7,17.4
		c5.8,0,9.4,4.4,9.4,11.3c0,6.9-3.6,11.3-9.4,11.3c-5.8,0-9.4-4.4-9.4-11.3C44.3,21.8,47.9,17.4,53.7,17.4z"/>
	<polygon points="74.2,30 89.6,30 89.6,42.8 93.1,42.8 93.1,14.6 89.6,14.6 89.6,26.8 74.2,26.8 74.2,14.6 70.6,14.6 70.6,42.8 
		74.2,42.8 	"/>
	<path d="M53.7,187c-8,0-13,5.6-13,14.6s5,14.6,13,14.6c8,0,13-5.6,13-14.6S61.6,187,53.7,187z M53.7,212.8c-5.8,0-9.4-4.4-9.4-11.3
		c0-7,3.6-11.3,9.4-11.3c5.8,0,9.4,4.4,9.4,11.3C63,208.5,59.4,212.8,53.7,212.8z"/>
	<polygon points="33.2,199.6 17.7,199.6 17.7,187.4 14.2,187.4 14.2,215.6 17.7,215.6 17.7,202.8 33.2,202.8 33.2,215.6 36.7,215.6 
		36.7,187.4 33.2,187.4 	"/>
	<path d="M153.4,244.6c-8,0-13,5.6-13,14.6s5,14.6,13,14.6c8,0,13-5.6,13-14.6S161.4,244.6,153.4,244.6z M153.4,270.4
		c-5.8,0-9.4-4.4-9.4-11.3c0-7,3.6-11.3,9.4-11.3c5.8,0,9.4,4.4,9.4,11.3C162.8,266.1,159.2,270.4,153.4,270.4z"/>
	<polygon points="189.4,257.2 173.9,257.2 173.9,245 170.4,245 170.4,273.2 173.9,273.2 173.9,260.4 189.4,260.4 189.4,273.2 
		192.9,273.2 192.9,245 189.4,245 	"/>
	<path d="M253.2,187c-8,0-13,5.6-13,14.6s5,14.6,13,14.6c8,0,13-5.6,13-14.6S261.2,187,253.2,187z M253.2,212.8
		c-5.8,0-9.4-4.4-9.4-11.3c0-7,3.6-11.3,9.4-11.3c5.8,0,9.4,4.4,9.4,11.3C262.6,208.5,259,212.8,253.2,212.8z"/>
	<polygon points="289.2,199.6 273.7,199.6 273.7,187.4 270.2,187.4 270.2,215.6 273.7,215.6 273.7,202.8 289.2,202.8 289.2,215.6 
		292.7,215.6 292.7,187.4 289.2,187.4 	"/>
	<path d="M253.2,71.8c-8,0-13,5.6-13,14.6c0,8.9,5,14.6,13,14.6c8,0,13-5.6,13-14.6C266.2,77.4,261.2,71.8,253.2,71.8z M253.2,97.6
		c-5.8,0-9.4-4.4-9.4-11.3c0-7,3.6-11.3,9.4-11.3c5.8,0,9.4,4.4,9.4,11.3C262.6,93.3,259,97.6,253.2,97.6z"/>
	<polygon points="289.2,72.2 289.2,84.4 273.7,84.4 273.7,72.2 270.2,72.2 270.2,100.4 273.7,100.4 273.7,87.6 289.2,87.6 
		289.2,100.4 292.7,100.4 292.7,72.2 	"/>
</g>
</svg>
"""
* structure.representation.document = Reference(fe3f13c1-f0ac-4b40-8024-f4386e290dfc) 
* code.code.coding.system = $UNII
* code.code.coding.code = $UNII#5SL0G7R0OK "5SL0G7R0OK"
* name[sub].name = "ANHYDROUS DEXTROSE"
* name[sub].type = PqcmcNameTypesCodes#Substance "Substance Name"	
* name[sub].preferred = true



Instance: b55b8d97-63c5-433c-95cf-812af58aa5fb
InstanceOf: EctdComposition32S10
Usage: #example
Title: "Example eCTD Substance General Information"
Description: "Drug substance nomenclature and structure"

* status = #final
* date = "2021-10-25"
* author = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
* title = "General Information ([1-^13^C]pyruvic acid)"
/* 
	SECTION SLICES  DrugSubstanceNomenclature DrugSubstanceStructure
*/
* section[SubstanceNomenclature].title = "Nomenclature (ANHYDROUS DEXTROSE)"
* section[SubstanceNomenclature].entry = Reference(942fcdc9-8ab9-4f52-be6d-af549117d462)
* section[SubstanceStructure].title = " Structure (ANHYDROUS DEXTROSE)"
* section[SubstanceStructure].entry = Reference(4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1)

Instance: 1a136efa-c66c-42b0-aa08-95bac956b82c	
InstanceOf: RoutineDrugProduct	
Usage: #example
Title: "Quality Specification Drug Product"
Description: "Example of DrugProductDescription"
 		
* combinedPharmaceuticalDoseForm.coding.code = $NCIT#C42976 "INJECTION, POWDER, FOR SUSPENSION"
* route.coding.code = $NCIT#C38276 "INTRAVENOUS"
* name.productName = "BellaVie U+8482"
* name.type.text = "Product Proprietary name"	

Instance: cfcfcbc9-7849-4328-af33-c43b68742623
InstanceOf: RoutineSubstanceDefinition
Usage: #example
Title: "Specification Drug Substance Example"
Description: "Example of Specification Drug Substance (API)"
 
* classification = $EMAIDMP#1 "Chemical"
* code.code.coding.system = $UNII
* code.code.coding.code = $UNII#QTG126297Q "QTG126297Q"
* name.name = "DICLOFENAC SODIUM"
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)

Instance: e5021eca-9f23-4ad1-9f06-220f9b0c0453
InstanceOf: MfgTestSiteOrganization
Usage: #example
Title: "Manufacturing Site example FEI only"
Description: "Example of Manufacturing site using the MfgTestSiteOrganization profle with FEI"

* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "078709799"
//* type = "Manufacturing Site Function"
* name = "NeoPharma, PLC"
* contact.address[+].text = "109 Rose Garden St., Vega Baja, Caguas 00693, Puerto Rico"
* contact.address[=].line[0] = "109 Rose Garden St."
* contact.address[=].line[+] = "Vega Baja"
* contact.address[=].city = "Caguas"
* contact.address[=].postalCode = "00693"
* contact.address[=].country = "PUERTO RICO"

Instance: bf191513-3914-4fbd-8ebe-33decfaff231
InstanceOf: MfgTestSiteOrganization
Usage: #example
Title: "Manufactuer mfg2"
Description: "Example of sponsor using the MfgTestSiteOrganizationprofle"

* identifier[DUNSNumber].type.coding.code = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "675339876"
* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "079988791" 
//* type = "Manufacturing Site Function"
* name = "Specialty Pharma"
* contact.address[+].text = "100 Spring St., Philadelphia, PA, 01972, USA"
* contact.address[=].line = "100 Spring Street"
* contact.address[=].city = "Philadelphia"
* contact.address.state = "PA"
* contact.address[=].postalCode = "01972"
* contact.address[=].country = "USA"

Instance: 52ddd8a5-010b-4d28-b841-b9c263f53d6d
InstanceOf: MfgTestSiteOrganization
Usage: #example
Title: "Manufactuer mfg"
Description: "Example of sponsor using the MfgTestSiteOrganizationprofle"

* identifier[DUNSNumber].type.coding.code = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "987339123"
* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "321988710" 
//* type = "Manufacturing Site Function"
* name = "Bervem Inc"
* contact.address[+].text = "3498 Northumberland Drive, Peabody, MA, 01520, USA"
* contact.address[=].line = "3498 Northumberland Drive"
* contact.address[=].city = "Peabody"
* contact.address.state = "MA"
* contact.address[=].postalCode = "01520"
* contact.address[=].country = "USA"

Instance: 18115938-2ee4-4b58-ba2e-24db05c1f04f
InstanceOf: MfgTestSiteOrganization
Usage: #example
Title: "Manufactuer mfg3"
Description: "Example of sponsor using the MfgTestSiteOrganizationprofle"

* identifier[DUNSNumber].type.coding.code = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "633339876"
* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "022288291" 
//* type = "Manufacturing Site Function"
* name = "Haorui Pharma-Chem Inc."
* contact.address[+].text = "100 Menlo Park Drive, Edison, New Jersey, 08837, USA"
* contact.address[=].line = "100 Menlo Park Drive"
* contact.address[=].city = "Edison"
* contact.address.state = "NJ"
* contact.address[=].postalCode = "08837"
* contact.address[=].country = "USA"

Instance: 17177734-4328-4f76-9b88-c014a9abc9e3
InstanceOf: SponsorOrganization
Usage: #example
Title: "Drug Product Sponsor"
Description: "Example of sponsor using the SponsorOrganization profle"

* identifier[DUNSNumber].type.coding.code = $NCIT#C134003 "DUNS"
* identifier[DUNSNumber].value = "765432222"
* identifier[FEINumber].type.coding.code = $NCIT#C134004 "FEI"
* identifier[FEINumber].value = "1987891"
* name = "XYZ Pharmaceuticals, Inc."
* contact.address[+].text = "84 Main Street, Utopia, CA, 90021, USA"
* contact.address[=].line = "84 Main Street"
* contact.address[=].city = "Utopia"
* contact.address[=].state = "CA"
* contact.address[=].postalCode = "90021"
* contact.address[=].country = "USA"

Instance: 363bd671-2817-4778-a3fe-c65b68c63308
InstanceOf: RoutineSubstanceDefinition
Usage: #example
Title: "Batch Formula Drug Substance Example1"
Description: "Example of Drug Substance HYPROMELLOSES"
 
* classification = $EMAIDMP#1 "Chemical"
* code.code.coding.system = $UNII
* code.code.coding.code = $UNII#SOA12P041N "SOA12P041N"
* name.name = "NITAZOXANIDE"
* manufacturer = Reference(bf191513-3914-4fbd-8ebe-33decfaff231)

Instance: 54388f31-3469-4fb4-b7c2-d785cb042d1d	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example2"	
Description: "Example of Drug Substance HYDROXYPROPYL CELLULOSE (110000 WAMW)"	
 
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#5Y0974F5PW "5Y0974F5PW"	
* name.name = "HYDROXYPROPYL CELLULOSE (110000 WAMW)"	
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)

Instance: 868a2f83-b9ba-4ece-b238-11e0afe222ee	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example3"	
Description: "Example of Drug Substance HYPROMELLOSES"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#3NXW29V3WO "3NXW29V3WO"	
* name.name = "HYPROMELLOSES"	
* manufacturer = Reference(bf191513-3914-4fbd-8ebe-33decfaff231)

Instance: 171f0414-6999-47fa-b792-67510f9e33cc	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example4"	
Description: "Example of Drug Substance Magnesium sterate"	
 
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#70097M6I30 "70097M6I30"	
* name.name = "Magnesium sterate"	
* manufacturer = Reference(52ddd8a5-010b-4d28-b841-b9c263f53d6d)

Instance: 46667123-2b0f-4dfe-aebe-79f8ddcc58dd	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example5"	
Description: "Example of Drug Substance STARCH, CORN"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#O8232NY3SJ "O8232NY3SJ"	
* name.name = "STARCH, CORN"	
* manufacturer = Reference(e5021eca-9f23-4ad1-9f06-220f9b0c0453)

Instance: 4bb4aeb0-47c2-4c90-ac13-041fb6a36ce2
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example6"	
Description: "Example of Drug Substance MICROCRYSTALLINE CELLULOSE"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#OP1R32D61U "OP1R32D61U"	
* name.name = "MICROCRYSTALLINE CELLULOSE"	
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)

Instance: d4e21b68-6ec4-4ab2-9615-89aceb6de25e	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example8"	
Description: "Example of Drug Substance Opadry II 33G11938 Green"	
 
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#B53ZH89YAO "B53ZH89YAO"	
* name.name = "Opadry II 33G11938 Green"	
* manufacturer = Reference(e5021eca-9f23-4ad1-9f06-220f9b0c0453)

Instance: a1ad301f-356b-4010-9d61-8e01af0a3f38	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example9"	
Description: "Example of Drug Substance OpadryYS-1-19025-A CLEAR"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#4PQ7L4V6AQ "4PQ7L4V6AQ"	
* name.name = "OpadryYS-1-19025-A CLEAR"	
* manufacturer = Reference(7e34e5c1-5e95-400f-8f76-332dd096e735)

Instance: a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example10"	
Description: "Example of Drug Substance Purified Water"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#059QF0KO0R "059QF0KO0R"	
* name.name = "Purified Water"	
* manufacturer = Reference(bf191513-3914-4fbd-8ebe-33decfaff231)

Instance: b91053b7-f87c-4baa-9dfd-33619e8c9d72	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example11"	
Description: "Example of Drug Substance Croscarmellose Sodium"	
 
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#M28OL1HH48 "M28OL1HH48"	
* name.name = "Croscarmellose Sodium"	
* manufacturer = Reference(52ddd8a5-010b-4d28-b841-b9c263f53d6d)

Instance: 6a064012-5b43-489d-bd07-4c0cc1da593e	
InstanceOf: RoutineSubstanceDefinition	
Usage: #example	
Title: "Batch Formula Drug Substance Example12"	
Description: "Example of Drug Substance Silicon Dioxide, Colloidal"	
 	
* classification = $EMAIDMP#1 "Chemical"	
* code.code.coding.system = $UNII	
* code.code.coding.code = $UNII#ETJ7Z6XBU4 "ETJ7Z6XBU4"	
* name.name = "Silicon Dioxide, Colloidal"	
* manufacturer = Reference(e5021eca-9f23-4ad1-9f06-220f9b0c0453)

Instance: 3a1ed58f-77bb-44b0-a24f-75ad7ef64c58
InstanceOf: EctdComposition32P10
Usage: #example
Title: "Example eCTD Product Description and Composition"
Description: "Product Description, Container Closure and Product Composition of the Drug Product to be included in the 3.2.P.1.0. Note: Product Composition lists the ingredients of the product and does not refer to this composision resource."
 
* status = #final
* date = "2021-10-21"
* author = Reference(17177734-4328-4f76-9b88-c014a9abc9e3)
* title = "Description and Composition of the Drug Product"
/* 
	SECTION SLICES contains ProductDescription 1.1 MS and ContainerClosure 1.1 MS and ProductComposition 1.1 MS 
*/
* section[ProductDescription].title = "Product Description (Sterile Fluid Path Components)"
* section[ProductDescription].entry = Reference(29a5d46d-23b9-476a-991d-67e3bc8676a0)
* section[ContainerClosure].title = "Product Container Closure System (Sterile Fluid Path Components)"
* section[ContainerClosure].entry = Reference(8af426fd-5cea-4908-8dc5-b73f70b0e89f)
* section[ProductComposition].title = "Product Composition (Sterile Fluid Path Components)"
* section[ProductComposition].entry[0] = Reference(f5fabcb5-eb22-424e-85f1-9489aa269d39)
* section[ProductComposition].entry[+] = Reference(79a09fd7-04c2-4077-ba45-69e31562b9c3)

Instance: f5fabcb5-eb22-424e-85f1-9489aa269d39
InstanceOf: DrugProductComponent
Usage: #example
Title: "Drug Product Component: (1-13C)PYRUVIC ACID"
Description: "Example of Drug Product Component as Drug Substance"

* extension[additional-info].valueMarkdown = """Mixture of [1-^13^C]pyruvic acid and 15 mM AH111501 sodium salt is compounded less than 24 hours prior to patient administration. The solution is prepared as a high-risk compounded sterile preparation in compliance with USP &lt;797>. The solution is filtered twice through separate sterilizing (0.2 micron) filters before introduction into the cryovial. The cryovial is part of the custom made container closure system (see Section 3.2.P.7 Container Closure System). Each cryovial contains 1.47 g of solution. The density of the Mixture of [1- ^13^C]pyruvic acid and 15 mM AH111501 sodium salt is 1.26 g/ml.
"""
 
* status = #active
* for = Reference(29a5d46d-23b9-476a-991d-67e3bc8676a0)
* role.coding = $NCIT#C82533 "Active Ingredient"
//* function.coding.code = PqcmcExcipientFunctionTerminology
* substance.code.reference = Reference(01df3194-eef7-4d9f-95f8-21f64ee1d6cb)
* substance.strength.extension[strengthType].valueCodeableConcept.coding = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.98
* substance.strength.presentationRatio.numerator.value = 1.44 
* substance.strength.presentationRatio.numerator.unit = "g"
* substance.strength.presentationRatio.numerator.code = $UCUM#g
* substance.strength.presentationRatio.denominator.value = 1
* substance.strength.presentationRatio.denominator.unit = "cryovial"
* substance.strength.presentationRatio.denominator.code = $UCUM#[arb'U]
//* substance.strength.textPresentation = "1.44 g per cryovial. Each cryovial contains 1.47 g of solution"


Instance: 79a09fd7-04c2-4077-ba45-69e31562b9c3
InstanceOf: DrugProductComponent
Usage: #example
Title: "Drug Product Component: AH111501 sodium salt"
Description: "Example of Drug Product Component as Excipient"

* extension[additional-info].valueMarkdown = """TRIS/EDTA buffer solution is compounded less than 24 hours prior to patient administration. The buffer solution is prepared as a high-risk compounded sterile preparation in compliance with USP <797>. The solution is filtered twice through separate sterilizing (0.2 micron) filters before introduction into the receiving vessel. The receiving vessel is part of the sterile fluid path, the custom-made container closure system (see Section 3.2.P.7 Container Closure System). The quantity of TRIS/EDTA buffer solution aseptically instilled into the receiving vessel is 18 mL.
 """ 
* status = #active
* for = Reference(29a5d46d-23b9-476a-991d-67e3bc8676a0)
* role.coding = $NCIT#C42637 "Inactive Ingredient"
* function.coding = $NCIT#C176640 "Solubilizing agent"
* substance.code.reference = Reference(6aef96c1-c9c2-4fd5-a3df-a4e66bea7380)
* substance.strength.extension[strengthType].valueCodeableConcept.coding = $NCIT#C168628 "Mass"
* substance.strength.extension[contentPercent].valueDecimal = 0.019
* substance.strength.presentationRatio.numerator.value = 27.7
* substance.strength.presentationRatio.numerator.unit = "mg"
* substance.strength.presentationRatio.numerator.code = $UCUM#mg 
* substance.strength.presentationRatio.denominator.value = 1
* substance.strength.presentationRatio.denominator.unit = "cryovial"
* substance.strength.presentationRatio.denominator.code = $UCUM#[arb'U]
//* substance.strength.textPresentation = "27.7 mg per cryovial. Each cryovial contains 1.47 g of solution"

Instance: 6aef96c1-c9c2-4fd5-a3df-a4e66bea7380
InstanceOf: ComponentSubstance
Usage: #example
Title: "AH-111501 sodium Excipient Example"
Description: "Example of Drug Product Component substance as an Excipient"
 
* classification = $EMAIDMP#1 "Chemical"
* grade = $NCIT#C134006 "USPNF"
* structure.representation.document = Reference(5abefb38-4325-4609-bc3f-61fd62c6f90e) 
* code.code.coding.system = $UNII
* code.code.coding = $UNII#E6376LTZ8L "E6376LTZ8L"
* name.name = "Methyl radical, tris(8-carboxy-2,2,6,6-tetrakis(2-methoxyethyl)benzo(1,2-d:4,5-d')bis(1,3)dithiol-4-yl)-, sodium"
* sourceMaterial.type = $NCIT#C48807 "Chemical"

Instance: 01df3194-eef7-4d9f-95f8-21f64ee1d6cb
InstanceOf: ComponentSubstance
Usage: #example
Title: "Drug Substace Example"
Description: "Example of Drug Product Component substance as an active"

* classification = $EMAIDMP#1 "Chemical"
* grade = $NCIT#C134006 "USPNF"
* structure.representation.document = Reference(fe3f13c1-f0ac-4b40-8024-f4386e290dfc) 
* code.code.coding.system = $UNII
* code.code.coding. = $UNII#2GIJ84D9UB
* name.name = "PYRUVIC ACID 1-C-13"
* sourceMaterial.type = $NCIT#C48807 "Chemical"


Instance: 29a5d46d-23b9-476a-991d-67e3bc8676a0
InstanceOf: DrugProductDescription	
Usage: #example
Title: "Drug Product Description"
Description: "Example of DrugProductDescription"
 	
* description = """Hyperpolarized Pyruvate (^13^C) Injection (drug product) is a sterile solution for intravenous injection. The compounding of Hyperpolarized Pyruvate (^13^C) Injection is performed by an automated compounding device known as SpinLab. For each patient dose, SpinLab utilizes a single sterile fluid path which contains the following three drug product components: 

* Mixture of [1-^13^C]pyruvic acid and 15 mM AH111501 sodium salt 
* TRIS/EDTA buffer solution 
* Sterile Water for Injection (WFI) 

For aspects related to the compounding of the drug product, Hyperpolarized Pyruvate (^13^C) Injection, reference is made to 3.2.P for Hyperpolarized Pyruvate (^13^C) Injection. Commercially available USP quality Sterile Water for Injection (Hospira Inc., USA) is provided by the clinical site. Aspects of this drug product component will therefore not be addressed.

Mixture of [1-^13^C]pyruvic acid and 15 mM AH111501 sodium salt is compounded less than 24 hours prior to patient administration. The solution is prepared as a high-risk compounded sterile preparation in compliance with USP . The solution is filtered twice through separate sterilizing (0.2 micron) filters before introduction into the cryovial. The cryovial is part of the custom made container closure system (see Section 3.2.P.7 Container Closure System). Each cryovial contains 1.47 g of solution. The density of the Mixture of [1-^13^C]pyruvic acid and 15 mM AH111501 sodium salt is 1.26 g/ml.

The receiving vessel of the sterile fluid path contains a TRIS/EDTA buffer solution that consists of an aqueous solution of tris (hydroxymethyl) aminomethane (TRIS), disodium ethylenediaminetetraacetate (Na2EDTA) and sodium hydroxide (NaOH).

TRIS/EDTA buffer solution is compounded less than 24 hours prior to patient administration. The buffer solution is prepared as a high-risk compounded sterile preparation in compliance with USP . The solution is filtered twice through separate sterilizing (0.2 micron) filters before introduction into the receiving vessel. The receiving vessel is part of the sterile fluid path, the custom-made container closure system (see Section 3.2.P.7 Container Closure System). The quantity of TRIS/EDTA buffer solution aseptically instilled into the receiving vessel is 18 mL.
"""
* combinedPharmaceuticalDoseForm.coding = $NCIT#C42976 "INJECTION, POWDER, FOR SUSPENSION"	
* route.coding = $NCIT#C38276 "INTRAVENOUS"
* name.productName = "BellaVie U+8482"
* name.type.text = "Product Proprietary name"	

//* crossReference.product.concept.text.value = "Sterile Water for Injection (WFI)"	
* crossReference[0].product.reference.display = "TRIS/EDTA buffer solution" 
* crossReference[+].product.reference.display = "Sterile Water for Injection (WFI)"	
