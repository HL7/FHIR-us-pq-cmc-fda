Extension: QuantityBatchSize
Id:  pq-quantity-batch-size
Title: "Batch Size"
Description: "The quantity made by the batch formula."
* extension.value[x] only Quantity

Extension: ContainerClosureExtension
Id: pq-container-closure-extension
Title: "Container Closure"
Description: "The packaging information including a brief description of the components, the assembled
packaging system and any precautions needed to ensure the protection and preservation of the drug substance and drug product during their use in the clinical trials"
* . ^short = "Container Closure System Information"
* extension contains
    description 1..1 MS and
    containerType 1..1 MS and
    closureType 1..1 MS 
* extension[description].value[x] only markdown
* extension[description].value[x] ^short = "Container Closure System Description"
* extension[description].value[x] ^definition = "Any textual comments that describe the sum of container closure systems(CCS) components that together contain and protect the dosage form or drug substance."
* extension[containerType].value[x] only CodeableConcept
* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)
* extension[containerType].value[x] ^short = "Container Type"
* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contined in, which could include both the immediate (or primary) and secondary containers."
* extension[closureType].value[x] only CodeableConcept
* extension[closureType].value[x] from PqcmcClosureTypeTerminology (required)
* extension[closureType].value[x] ^short = "Closure Type"
* extension[closureType].value[x] ^definition = "The kind of closures used for the container in which the drug substances and finiished dosage forms are stored."

Profile: DrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-druproduct
Title: "Drug Product"
Description: "Includes the properties of the drug product, its components and impurities"
* .contained only DrugProductComponent
* extension contains pq-container-closure-extension named containerClosure 1..1 MS
* identifier 1..1 MS
* description 1..1 MS
* description ^short = "Drug Product Description"
* combinedPharmaceuticalDoseForm 1..1 MS   
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code ^short = "Dosage Form"
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology
* route 1..1 MS
* route.coding.code 1..1 MS
* route.coding.code ^short = "Route of Administration"
* route.coding.code from vsSplDrugRouteofAdministrationTerminology
* impurity 0..1 MS
* impurity ^short = "Product Impurity"
* impurity.reference only Reference(DrugSubstanceImpurity)
* name 1..1 MS
* name.productName 1..1 MS
* name.productName ^short = "Product Proprietary name/ Product Non-proprietary Name"
* name.type 1..1 MS
* crossReference  MS
* crossReference.product  MS
* crossReference.product ^short = "Co-Package"

Profile: RoutineDrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-routine-drug-product
Title: "Routine Drug Product"
Description: "Includes the identfying information of the drug product"

* identifier 1..1 MS
* description 1..1 MS
* description ^short = "Drug Product Description"
* name.productName 1..1 MS
* name.productName ^short = "Product Proprietary name/ Product Non-proprietary Name"
* name.type 1..1 MS

Profile: BatchFormula
Parent: MedicinalProductDefinition
Id: pqcmc-batch-formula
Title: "Batch Formula"
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."

* extension contains pq-quantity-batch-size named batch-size 1..1 MS
* extension[batch-size] ^short = "Batch Quantity"
* identifier 1..1 MS
* name.productName 1..1 MS
* name.productName ^short = "Product Proprietary name/ Product Non-proprietary Name"
* name.type 1..1 MS
* operation 1..* MS
* operation.type 1..1 MS
* operation.type ^short = "Batch Ingredient"
* operation.type.reference 1..1 MS
* operation.type.reference only Reference (BatchFormulaIngredient)
* description ^short = "Batch Formula Additional Information"

Profile: BatchFormulaIngredient
Parent: ActivityDefinition
Id: pqcmc-batch-ingredient
Title: "Batch Formula Ingredient"
Description: "Identifies the ingredients for the batch forumla"

* description 0..1 MS
* description ^short = "Component Additional Information"
* profile 1..1 MS
* profile = "https://hl7.org/fhir/pq-cmc/StructureDefinition/prf-pqcmc-ingredient"
* product[x] 1..1 MS
* productReference ^short = "Drug Product Component"
* productReference 1..1 MS
* productReference only Reference (DrugProductIngredient)

Profile: DrugProductInstance
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* identifier 1..* MS
* identifier ^short = "Product Proprietary Name | roduct Non-Proprietary Name" 
* identifier.value 
* marketingAuthorizationHolder 0..1 MS
* marketingAuthorizationHolder ^short = "" 
* marketingAuthorizationHolder only Reference(SponsorOrganization) 
* doseForm 0..1 MS
* doseForm ^short = "Dosage Form" 
* doseForm.coding from vsSPLPharmaceuticalDosageFormTerminology
* ingredient  1..* MS
* ingredient.item ^short = "UNII" 
* ingredient.item.concept.text 1..1 MS
* ingredient.item.concept.text ^comment = """
The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
* Example: 362O9ITL9D 
* Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
 """
* ingredient.isActive 1..1 MS
* ingredient.isActive ^short = "Active ingredient indicator" 
* ingredient.strengthRatio.numerator  1..1 MS 
* ingredient.strengthRatio.numerator ^short = "Quantity of ingredient present" 
* ingredient.strengthRatio.denominator 1..1 MS 
* ingredient.strengthRatio.denominator ^short = "Quantity of product presentation" 
* batch 1..1 MS
* batch.extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS
* batch.lotNumber 1..1 MS
* batch.lotNumber ^short = "Batch or Lot Numbe (Bulk Batch ID)" 
* batch.expirationDate 1..1 MS
* batch.expirationDate ^short = "Expiration Date" 

Profile: DrugProductmanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-product-manufacturing-batch
Title: "Drug Product Manufacturing Batch"
Description: "This profile defines the details of a batch of medicine."
 
* ^url = "https://hl7.org/fhir/pq-cmc/StructureDefinition/extDrugProductMfgBatch"
* extension[manufacturingDate] 1..1 MS 
* extension[manufacturingDate] ^short = "Manufacturing Date"  
* extension[manufacturingDate].valueDateTime MS 
* extension[manufacturingDateClassification] 1..1 MS 
* extension[manufacturingDateClassification] ^short = "Manufacturing Date Description"  
* extension[manufacturingDateClassification].valueCodeableConcept MS 
* extension[assignedManufacturer] 1..1 MS 
* extension[assignedManufacturer] ^short = "Assigned Manufacturer"  
* extension[assignedManufacturer].valueReference only Reference(MfgTestSiteOrganization)
* extension[expirationDateClassification] 1..1 MS 
* extension[expirationDateClassification] ^short = "Expiration Date Classification"  
* extension[expirationDateClassification].valueCodeableConcept MS
//* extension[expirationDateClassification].valueCodeableConcept from vs??
* extension[batchUtilization] 1..1 MS 
* extension[batchUtilization] ^short = "Batch Utilization"  
* extension[batchUtilization].valueCodeableConcept MS 
* extension[batchUtilization].valueCodeableConcept from vsPqcmcBatchUtilizationTerminology
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"  
* extension[batchQuantity].valueQuantity MS 
* extension[additionalInformation] MS 
* extension[additionalInformation] ^short = "Additional Information"  
* extension[additionalInformation].valueString MS 
* extension[container] 1..*  MS
* extension[container] ^short = "Container"
//* extension[container].extension[lotNumber] 1..1 MS
//* extension[container].extension[lotNumber] ^short = "Container Lot Number"
//* extension[container].extension[lotNumber].string  1..1 MS
//* extension[container].extension[type] 1..1 MS
//* extension[container].extension[type] ^short = "Container Type"
//* extension[container].extension[type].CodeableConcept  1..1 MS
//* extension[container].extension[type].CodeableConcept from vsPqcmcContainerTypeTerminology
//* extension[container].extension[quantity] 1..1 MS
//* extension[container].extension[quantity] ^short = "Container Fill per Container Size" 
//* extension[container].extension[quantity].Ratio  1..1 MS
//* extension[container].extension[closureSystemDescription] 1..1 MS
//* extension[container].extension[closureSystemDescription] ^short = "Closure System Description" 
//* extension[container].extension[closureSystemDescription].string  1..1 MS
//* extension[container].extension[closureType] 1..1 MS
//* extension[container].extension[closureType] ^short = "Closure Type"
//* extension[container].extension[closureType].CodeableConcept  1..1 MS
//* extension[container].extension[closureType].CodeableConcept from vsPqcmcClosureTypeTerminology