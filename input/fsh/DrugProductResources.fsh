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
* extension[description]
* extension[description].value[x] only markdown
* extension[description].value[x] ^short = "Container Closure System Description"
* extension[description].value[x] ^definition = "Any textual comments that describe the sum of container closure systems(CCS) components that together contain and protect the dosage form or drug substance."
* extension[containerType]
* extension[containerType].value[x] only CodeableConcept
* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)
* extension[containerType].value[x] ^short = "Container Type"
* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contined in, which could include both the immediate (or primary) and secondary containers."
* extension[closureType]
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
* .extension contains pq-container-closure-extension named containerClosure 1..1 MS
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

Profile: DrugProductInstance
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* identifier 
* identifier.value

Profile: RoutineDrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-routine-drug-product
Title: "Drug Product"
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

* identifier 1..1 MS
* name.productName 1..1 MS
* name.productName ^short = "Product Proprietary name/ Product Non-proprietary Name"
* name.type 1..1 MS
* operation 1..* MS
* operation.type 1..1 MS
* operation.type ^short = "Batch Ingredient"
* operation.type.reference 1..1 MS
* operation.type.reference only Reference(pqcmc-batch-ingredient)
* characteristic.type = http://hl7.org/fhir/pq-cmc/codesystem/ProductCharacteristic/#batchsize
* characteristic.valueQuantity
* characteristic.valueQuantity ^short = "Batch Quantity"
* description ^short = "Batch Formula Additional Information"

Profile: BatchIngredient
Parent: ActivityDefinition
Id: pqcmc-batch-ingredient
Title: "Batch Ingredient"
Description: "Identifies the ingredients for the batch forumla"

* description 0..1 MS
* description ^short = "Component Additional Information"
* productReference 0..1 MS
* productReference ^short = "Ingredient"
//* productReference.reference only Reference(pqcmc-ingredient)

