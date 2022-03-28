Extension: QuantityBatchSize		
Id: pq-quantity-batch-size		
Title: "Batch Size"		
Description: "The quantity made by the batch formula."	
* value[x] only Quantity
		
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
* extension[description].value[x] ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary] 
Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant. 
Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary] 
"""
* extension[description].value[x] ^definition = "Any textual comments that describe the sum of container closure systems(CCS) components that together contain and protect the dosage form or drug substance."		
* extension[containerType].value[x] only CodeableConcept		
* extension[containerType].value[x] from PqcmcContainerTypeTerminology (required)		
* extension[containerType].value[x] ^short = "Container Type"	
* extension[containerType].value[x] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[closureType].value[x] only CodeableConcept		
* extension[closureType].value[x] from PqcmcClosureTypeTerminology (required)		
* extension[closureType].value[x] ^short = "Closure Type"	
* extension[closureType].value[x] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"		
		
Profile: DrugProduct		
Parent: MedicinalProductDefinition		
Id: pqcmc-drug-product		
Title: "Drug Product"		
Description: "Includes the properties of the drug product, its components and impurities"		

* extension contains pq-container-closure-extension named containerClosure 1..1 MS		
* identifier 1..1 MS		
* description 1..1 MS		
* description ^short = "Drug Product Description"	
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined] 
Examples: dosage form, container closure system, purpose, etc. """
* combinedPharmaceuticalDoseForm 1..1 MS		
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS		
* combinedPharmaceuticalDoseForm.coding.code ^short = "Dosage Form"	
* combinedPharmaceuticalDoseForm.coding.code ^definition = """The form in which active and/or inert ingredient(s) are physically presented. [Source: NCI EVS - C42636] 
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] 
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA. 
SME comment -- this is the marketed dosage form.
"""
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology		
* route 1..1 MS		
* route.coding.code 1..1 MS		
* route.coding.code ^short = "Route of Administration"	
* route.coding.code ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI EVS C38114]"
* route.coding.code from vsSplDrugRouteofAdministrationTerminology		
* impurity 0..* MS		
* impurity ^short = "Product Impurity"		
* impurity.reference only Reference(ImpuritySubstance)		
* name 1..1 MS		
* name.productName 1..1 MS		
* name.productName ^short = "Product Proprietary name | Product Non-proprietary Name"	
* name.productName ^definition = """Product Proprietary Name: The exclusive name of a drug substance or drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071683.htm] 
* Note: Excludes dosage form, route of administration and strength. 
* Example: Tylenol
Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071638.htm ]
"""
* name.type 1..1 MS		
* crossReference  MS		
* crossReference.product  MS		
* crossReference.product ^short = "Co-Package"		
		
Profile: BatchFormula		
Parent: MedicinalProductDefinition		
Id: pqcmc-batch-formula		
Title: "Batch Formula"		
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."		
		
* identifier 1..1 MS		
* name.productName 1..1 MS		
* name.productName ^short = "Product Proprietary name | Product Non-proprietary Name"	
* name.productName ^definition = """Product Proprietary Name: The exclusive name of a drug substance or drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071683.htm] 
* Note: Excludes dosage form, route of administration and strength. 
* Example: Tylenol
Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071638.htm ]
"""	
* name.type 1..1 MS		
* operation 1..* MS	
* extension contains pq-quantity-batch-size named batch-size 1..1 MS
* extension[batch-size].valueQuantity 1..1 MS			
* extension[batch-size].valueQuantity ^short = "Batch Quantity | Quantity UOM"	
* extension[batch-size].valueQuantity ^definition = """Quantity: The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]	
"""	
* operation.type 1..1 MS		
* operation.type ^short = "Batch Ingredient"		
* operation.type.reference 1..1 MS		
* operation.type.reference only Reference (BatchFormulaIngredient)		
* description ^short = "Batch Formula Additional Information"	
* description ^definition = """A placeholder for providing any comments that are relevant to the batch formula. [Source: SME Defined] 
Examples: Water for wet granulation -- removed during processing; adjusted for assay, etc. """
		
Profile: BatchFormulaIngredient		
Parent: ActivityDefinition		
Id: pqcmc-batch-ingredient		
Title: "Batch Formula Ingredient"		
Description: "Identifies the ingredients for the batch forumla"		
		
* description 0..1 MS		
* description ^short = "Component Additional Information"	
* description ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined] 
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc. 
"""
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
* identifier ^short = "Product Proprietary Name | Product Non-Proprietary Name"		
* identifier.value		
* marketingAuthorizationHolder 0..1 MS		
* marketingAuthorizationHolder ^short = ""		
* marketingAuthorizationHolder only Reference(SponsorOrganization)		
* doseForm 0..1 MS		
* doseForm ^short = "Dosage Form"	
* doseForm ^definition = """The form in which active and/or inert ingredient(s) are physically presented. [Source: NCI EVS - C42636] 
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] 
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA. 
SME comment -- this is the marketed dosage form """
* doseForm.coding from vsSPLPharmaceuticalDosageFormTerminology		
* ingredient  1..* MS		
* ingredient.item ^short = "UNII"	
* ingredient.item ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/] 
Example: 362O9ITL9D 
Note: If a UNII does not exist, please go to 
* http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/ 
"""
* ingredient.item.concept.text 1..1 MS				
* ingredient.isActive 1..1 MS		
* ingredient.isActive ^short = "Active ingredient indicator"		
* ingredient.strengthRatio.numerator  1..1 MS		
* ingredient.strengthRatio.numerator ^short = "Strength Numeric Numerator"		
* ingredient.strengthRatio.numerator ^definition = """ Specifies the quantity of the ingredient(s) consistent with a single unit dose or as expresssed on the label. [Source: SME Defined] 
Note: Kg value is only applicable for veterinary applications. 
Note: This is the denominator value when expressing the strength for APIs 
Example: 5 mg per 100 mL 
Note: For Excipients, this is the amount 
"""
* ingredient.strengthRatio.denominator 1..1 MS		
* ingredient.strengthRatio.denominator ^short = "Strength Numeric Denominator"		
* ingredient.strengthRatio.denominator ^definition = "The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]"

* batch 1..1 MS		
* batch.extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS		
* batch.lotNumber 1..1 MS		
* batch.lotNumber ^short = "Batch or Lot Numbe (Bulk Batch ID)"		
* batch.expirationDate 1..1 MS		
* batch.expirationDate ^short = "Expiration Date"	
* batch.expirationDate ^definition = "The date the manufacturer guarantees the full potency and safety of a particular batch/lot of medicinal product. The complete point in time date consisting of day, month and year shall be specified using the ISO 8601 date format. [Source: ISO IDMP 11615-2017]"
		
Profile: DrugProductmanufacturingBatch		
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch		
Id: drug-product-manufacturing-batch		
Title: "Drug Product Manufacturing Batch"		
Description: "This profile defines the details of a batch of medicine."		
		
* ^url = "https://hl7.org/fhir/pq-cmc/StructureDefinition/extDrugProductMfgBatch"		
* extension[manufacturingDate] 1..1 MS		
* extension[manufacturingDate] ^short = "Manufacturing Date"	
* extension[manufacturingDate] ^definition = """The date associated with manufacturing a batch. [Source: SME Defined] 
Note: See Manufacturing Date Description element. """
* extension[manufacturingDate].valueDateTime MS		
* extension[manufacturingDateClassification] 1..1 MS		
* extension[manufacturingDateClassification] ^short = "Manufacturing Date Description"	
* extension[manufacturingDateClassification] ^definition = """A textual description that provides a rationale for the selection of the manufacturing date. [Source: SME Defined] Note: This description should include the specific operation/step in the manufacturing process associated with the assigned manufacturing date. """
* extension[manufacturingDateClassification].valueCodeableConcept MS		
* extension[assignedManufacturer] 1..1 MS		
* extension[assignedManufacturer] ^short = "Assigned Manufacturer"		
* extension[assignedManufacturer].valueReference only Reference(MfgTestSiteOrganization)		
* extension[expirationDateClassification] 1..1 MS		
* extension[expirationDateClassification] ^short = "Expiration Date Classification"	
* extension[expirationDateClassification] ^definition = "The endorsement of the expiration date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant. [Source: SME Defined]"	
* extension[expirationDateClassification].valueCodeableConcept MS		
* extension[expirationDateClassification].valueCodeableConcept from vsPqcmc-expiration-date-classification-terminology		
* extension[batchUtilization] 1..1 MS		
* extension[batchUtilization] ^short = "Batch Utilization"	
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined] 
Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS		
* extension[batchUtilization].valueCodeableConcept from vsPqcmcBatchUtilizationTerminology		
* extension[batchQuantity] 1..1 MS		
* extension[batchQuantity] ^short = "Batch Size"	
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].valueQuantity MS		
* extension[additionalInformation] MS		
* extension[additionalInformation] ^short = "Additional Information"	
* extension[additionalInformation] ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined] 
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
"""
* extension[additionalInformation].valueString MS		
// * extension[container] 1..*  MS		
// * extension[container] ^short = "Container"		
// * extension[container].extension[lotNumber] 1..1 MS 
// * extension[container].extension[lotNumber] ^short = "Container Lot Number" 
// * extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot. 
// // Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container).  This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
// // """
// * extension[container].extension[lotNumber].string  1..1 MS 
// * extension[container].extension[type] 1..1 MS 
// * extension[container].extension[type] ^short = "Container Type" 
// * extension[container].extension[type] 
// * extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]" 
// * extension[container].extension[type].CodeableConcept  1..1 MS 
// * extension[container].extension[type].CodeableConcept from vsPqcmcContainerTypeTerminology 
// * extension[container].extension[quantity] 1..1 MS 
// * extension[container].extension[quantity] ^short = "Container Fill per Container Size" 
// * extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit 
// // Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: tablets, mL.
// // Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
// // Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: mL, L, cc.
// // """
// * extension[container].extension[quantity].Ratio  1..1 MS 
// * extension[container].extension[closureSystemDescription] 1..1 MS 
// * extension[container].extension[closureSystemDescription] ^short = "Container Closure System Description" 
// * extension[container].extension[closureSystemDescription] ^definition = """ Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary] 
// // Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
// // Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
// // """
// * extension[container].extension[closureSystemDescription].string  1..1 MS 
// * extension[container].extension[closureType] 1..1 MS 
// * extension[container].extension[closureType] ^short = "Closure Type" 
// * extension[container].extension[closureType] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]" 
// * extension[container].extension[closureType].CodeableConcept  1..1 MS 
// * extension[container].extension[closureType].CodeableConcept from vsPqcmcClosureTypeTerminology 
//________________________________________________________________
/// Profiles on Profiles
//________________________________________________________________

Profile: DrugProductwithImpurites
Parent: DrugProduct
Id: pqcmc-drug-product-with-impurities
Title: "Drug Product Impurities"
Description: "List of drug product impurities."

* identifier 1..1 MS
* impurity 1..1 MS
* name 1..1 MS
* name.productName 1..1 MS
* name.type 1..1 MS

Profile: DrugProductContainerClosure		
Parent: MedicinalProductDefinition		
Id: pqcmc-druproduct-container-closure		
Title: "Drug Product Container Closure"		
Description: "Description and coding of the container closure system."				
* extension contains pq-container-closure-extension named containerClosure 1..1 MS		
* identifier 1..1 MS 		
* name 1..1 MS 		
* name.productName 1..1 MS 
* name.type 1..1 MS 		

Profile: DrugProductDescription		
Parent: MedicinalProductDefinition		
Id: pqcmc-drug-product-description		
Title: "Drug Product Description"		
Description: "Includes the properties of the drug product and components"		
//* extension contains pq-container-closure-extension named containerClosure 1..1 MS		
* identifier 1..1 MS		
* description 1..1 MS 
* combinedPharmaceuticalDoseForm 1..1 MS 		
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS 	
* route 1..1 MS 	
* route.coding.code 1..1 MS 
* name 1..1 MS		
* name.productName 1..1 MS	
* name.type 1..1 MS		
* crossReference 		
* crossReference.product 1..1 MS			

Profile: RoutineDrugProduct		
Parent: MedicinalProductDefinition		
Id: pqcmc-routine-drug-product		
Title: "Routine Drug Product"		
Description: "Includes the identfying information of the drug product"		
		
* identifier 1..1 MS 		
* name.productName 1..1 MS 
* name.type 1..1 MS		
		