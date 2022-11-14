Extension: QuantityBatchSize
Id: pq-quantity-batch-size
Title: "Batch Size"
Description: "The quantity made by the batch formula."
* value[x] only Quantity
* valueQuantity 0..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Batch Quantity"
* valueQuantity.value ^definition = """The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
"""
* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Quantity UOM"
* valueQuantity.unit ^definition = """A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* valueQuantity.code 1..1 MS
* valueQuantity.code from  PqcmcUnitsMeasureTerminology

Extension: ContainerClosureExtension
Id: pq-container-closure-extension
Title: "Container Closure"
Description: "The packaging information including a brief description of the components, the assembled
packaging system and any precautions needed to ensure the protection and preservation of the drug substance and drug product during their use in the clinical trials"
* . ^short = "Container Closure System Information"
* extension contains
  description 1..1 MS and
  containerType 1..1 MS and
  closureType 1..1 MS and
  depiction 0..* MS 
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
* extension[depiction].value[x] only Reference

Profile: DrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-drug-produc
Title: "Drug Product"
Description: "Includes the properties of the drug product, its components and impurities"

* extension contains pq-container-closure-extension named mdpcontainerClosure 0..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* description 0..1 MS
* description ^short = "Drug Product Description"
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined]
Examples: dosage form, container closure system, purpose, etc. """
* combinedPharmaceuticalDoseForm 0..1 MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code ^short = "Dosage Form"
* combinedPharmaceuticalDoseForm.coding.code ^definition = """The form in which active and/or inert ingredient(s) are physically presented. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)]
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
SME comment -- this is the marketed dosage form.
"""
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology
* route 0..1 MS
* route.coding.code 1..1 MS
* route.coding.code ^short = "Route of Administration"
* route.coding.code ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI EVS C38114]"
* route.coding.code from SplDrugRouteofAdministrationTerminology
* comprisedOf only Reference(FinishedProduct)
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
* name.type.text 1..1 MS
* crossReference.product MS
* crossReference.product ^short = "Co-Package"
* characteristic 1..* MS
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "type"
* characteristic ^slicing.rules = #open
* characteristic ^slicing.description = "Slice based on value pattern"
* characteristic contains
      OvrRelsProf	 1..1 MS and
      OvrRelsMech	 0..1 MS and
      CoatInd	 1..1 MS and
      TabLayCnt	 0..1 MS and
      TabBeaTypCnt	 0..1 MS and
      CapConCnt	 0..1 MS and
      Schematic	 1..* MS and
      WgtTyp	 1..1 MS and
      TotWgtNum	 0..1 MS and
      TotWgtDen	 0..1 MS and
      TotWgtTxt	 0..1 MS and
      TotWgtOper	 0..1 MS

* characteristic[OvrRelsProf].type  MS      
* characteristic[OvrRelsProf].type  = PqcmcProductCharacteristicCodes#OvrRelsProf
* characteristic[OvrRelsProf].valueCodeableConcept ^definition = """The behavior in which drug substance migrates from a dosage form to the surrounding environment (e.g., biological fluids, dissolution media, etc.) [Source: SME Defined
"""
* characteristic[OvrRelsProf].valueCodeableConcept MS
* characteristic[OvrRelsProf].valueCodeableConcept ^short = "Drug Product Overall Release Profile"

* characteristic[OvrRelsMech].type  = PqcmcProductCharacteristicCodes#OvrRelsMech
* characteristic[OvrRelsMech].type  MS
* characteristic[OvrRelsMech].valueCodeableConcept ^definition = """The method employed in order to realize the specified drug product release type. [Source: SME Defined]
Example: osmotic pump to achieve extended release
"""
* characteristic[OvrRelsMech].valueCodeableConcept ^short = "Drug Product Overall Release Mechanism"
* characteristic[OvrRelsMech].valueCodeableConcept MS
* characteristic[CoatInd].type  = PqcmcProductCharacteristicCodes#CoatInd
* characteristic[CoatInd].type  MS
* characteristic[CoatInd].valueBoolean ^definition = """The total number of layers in the tablet. [Source: SME Defined]
Note: Non-layered tablets will be considered as one layer tablets.
"""
* characteristic[CoatInd].valueBoolean ^short = "Drug Product Coating Indicator"
* characteristic[CoatInd].valueBoolean MS
* characteristic[TabLayCnt].type  = PqcmcProductCharacteristicCodes#TabLayCnt
* characteristic[TabLayCnt].type  MS
* characteristic[TabLayCnt].valueInteger ^definition = """The total number of type of beads present in a tablet [Source: SME Defined]
Example: For the case of a 1- layer tablet containing 2 types of beads, Tablet Bead Type Count = 2."""
* characteristic[TabLayCnt].valueInteger ^short = "Drug Product Tablet Layer Count"
* characteristic[TabLayCnt].valueInteger MS
* characteristic[TabBeaTypCnt].type  = PqcmcProductCharacteristicCodes#TabBeaTypCnt
* characteristic[TabBeaTypCnt].type  MS
* characteristic[TabBeaTypCnt].valueString ^definition = """The number of distinct constituents contained in the capsule shell of the drug product.  [Source: SME Defined]
Example: For the case of a capsule shell filled with one type of bead and a minitablet, Constituent Type Count = 2."""
* characteristic[TabBeaTypCnt].valueString ^short = "Drug Product Tablet Bead Type Count"
* characteristic[TabBeaTypCnt].valueString MS
* characteristic[CapConCnt].type  MS
* characteristic[CapConCnt].type  = PqcmcProductCharacteristicCodes#CapConCnt
* characteristic[CapConCnt].valueInteger ^definition = """A physical (content) or activity measurement of the weight of the drug product unit. [Source: SME Defined]
Example: Mass, Activity"""
* characteristic[CapConCnt].valueInteger ^short = "Drug Product Capsule Constituent Count"
* characteristic[CapConCnt].valueInteger MS
* characteristic[Schematic].type  = PqcmcProductCharacteristicCodes#Schematic
* characteristic[Schematic].type  MS
* characteristic[Schematic].valueAttachment ^definition = """Specifies the total quantity of all ingredients in a single unit of the drug product. [Source: SME Defined]
Note: a single unit of a solid oral dose form could be a tablet or a capsuleThe labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]Example: mg"""
* characteristic[Schematic].valueString ^short = "Drug Product Schematic"
* characteristic[Schematic].valueString MS
* characteristic[WgtTyp].type  = PqcmcProductCharacteristicCodes#WgtTyp
* characteristic[WgtTyp].type  MS
* characteristic[WgtTyp].valueCodeableConcept ^definition = """Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
Note: For solid oral dose forms, by definition this is 1
The labeled unit of measure for the content of an ingredient, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]
Note: For solid oral dose forms, by definition this is 'unit'
"""
* characteristic[WgtTyp].valueCodeableConcept ^short = "Drug Product Weight Type"
* characteristic[WgtTyp].valueCodeableConcept MS
* characteristic[TotWgtNum].type  = PqcmcProductCharacteristicCodes#TotWgtNum
* characteristic[TotWgtNum].type  MS
* characteristic[TotWgtNum].valueString ^definition = """A written description of the weight of the drug product. [Source: SME Defined]
Note:  This is typically applicable to biologics
Example: International Units for Enzymes
"""
* characteristic[TotWgtNum].valueQuantity ^short = "Drug Product Total Weight Numeric Numerator"
* characteristic[TotWgtNum].valueQuantity MS
* characteristic[TotWgtDen].type  = PqcmcProductCharacteristicCodes#TotWgtDen
* characteristic[TotWgtDen].type  MS
* characteristic[TotWgtDen].valueQuantity ^definition = """A mathematical symbol that denotes equality or inequality between two values.  [Source: SME Defined] Examples: LT, EQ, NMT.
Note:  This is typically applicable to biologics"""
* characteristic[TotWgtDen].valueQuantity ^short = "Drug Product Total Weight Numeric Denominator"
* characteristic[TotWgtDen].valueQuantity MS
* characteristic[TotWgtTxt].type  = PqcmcProductCharacteristicCodes#TotWgtTxt
* characteristic[TotWgtTxt].type  MS
* characteristic[TotWgtTxt].valueString ^definition = """The method employed in order to realize the specified drug product release type. [Source: SME Defined]
Example: osmotic pump to achieve extended release
"""
* characteristic[TotWgtTxt].valueString ^short = "Drug Product Total Weight Textual"
* characteristic[TotWgtTxt].valueString MS
* characteristic[TotWgtOper].type  = PqcmcProductCharacteristicCodes#TotWgtOper
* characteristic[TotWgtOper].type  MS
* characteristic[TotWgtOper].valueCodeableConcept ^definition = """The total number of layers in the tablet. [Source: SME Defined]
Note: Non-layered tablets will be considered as one layer tablets.
"""
* characteristic[TotWgtOper].valueCodeableConcept ^short = "Drug Product Total Weight Operator"
* characteristic[TotWgtOper].valueCodeableConcept MS

Profile: FinishedProduct
Parent: ManufacturedItemDefinition
Id: pqcmc-product-part
Title: "Product Part"
Description: "The manufactured drug product defined by all its parts or layers. If the drug product composition is homogeneous it will have a single part or compoent."

* identifier 0..1 MS
* status 1..1 MS
* name 0..1 MS
* manufacturer 1..1 MS
* property 1..* MS
* property.type 1..1 MS
* property.value[x] 1..1 MS
* component 0..* MS
//element(*,ManufacturedItemDefinition)/component/@id
* component.type 1..1 MS
//*  funciton will be 
* component.function 0..* MS
* component.amount 0..* MS
* component.constituent 0..* MS
* component.constituent.amount 0..* MS
* component.constituent.location 0..* MS
* component.constituent.function 0..* MS
* component.constituent.locationForIngredient 0..* MS
* component.property 0..* MS
* component.component 0..* MS

Profile: BatchFormula
Parent: MedicinalProductDefinition
Id: pqcmc-batch-formula
Title: "Batch Formula"
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
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
* extension contains pq-additional-info-extension named additional-info 0..1 MS
* extension[additional-info] ^short = "Batch Formula Additional Information"
* extension[additional-info] ^definition = """A placeholder for providing any comments that are relevant to the batch formula. [Source: SME Defined]
Examples: Water for wet granulation -- removed during processing; adjusted for assay, etc.
"""
* operation.type 1..1 MS
* operation.type ^short = "Batch Formula"
//* operation.type.reference 1..1 MS
//* operation.type.reference only Reference(BatchIngredientReference)
* operation.type 1..1 MS
* operation.type only Reference(BatchIngredientReference)

Profile: BatchIngredientReference
Parent: ActivityDefinition
Id: pqcmc-batch-ingredient
Title: "Batch Formula Ingredient"
Description: "Identifies the ingredients for the batch formula."

* description 0..1 MS
* description ^short = "Component Additional Information"
* description ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.
"""
* subjectReference only Reference(ManufacturedItemDefinition)
* productReference 1..1 MS
* productReference ^short = "Drug Product Component"
* productReference only Reference(DrugProductIngredient)
//* productReference only Reference(Ingredient)

Profile: DrugProductBatch
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* identifier 1..* MS
* identifier ^short = "Product Proprietary Name | Product Non-Proprietary Name"
* identifier ^definition = """Product Proprietary Name: The exclusive name of a drug substance or drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071683.htm]
* Note: Excludes dosage form, route of administration and strength.
* Example: Tylenol
Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071638.htm ]
"""
// hold authroization for eStability
* marketingAuthorizationHolder 0..1 MS
* marketingAuthorizationHolder ^short = ""
* marketingAuthorizationHolder only Reference(SponsorOrganization)
* doseForm 0..1 MS
* doseForm ^short = "Dosage Form"
* doseForm ^definition = """The form in which active and/or inert ingredient (s) are physically present. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)]
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
"""
* doseForm.coding from SplPharmaceuticalDosageFormTerminology
* ingredient 1..* MS
* ingredient.item ^short = "UNII"
* ingredient.item ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to
* http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* ingredient.item.concept.text 1..1 MS
* ingredient.isActive 1..1 MS
* ingredient.isActive ^short = "Active ingredient indicator"
* ingredient.strengthRatio.numerator 1..1 MS
* ingredient.strengthRatio.numerator ^short = "Strength Numeric Numerator"
* ingredient.strengthRatio.numerator ^definition = """ Specifies the quantity of the ingredient(s) consistent with a single unit dose or as expresssed on the label. [Source: SME Defined]
Note: Kg value is only applicable for veterinary applications.
Note: This is the denominator value when expressing the strength for APIs
Example: 5 mg per 100 mL
Note: For Excipients, this is the amount
"""
* ingredient.strengthRatio.numerator.code from  PqcmcUnitsMeasureTerminology
* ingredient.strengthRatio.denominator 1..1 MS
* ingredient.strengthRatio.denominator ^short = "Strength Numeric Denominator"
* ingredient.strengthRatio.denominator ^definition = "The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]"
* ingredient.strengthRatio.denominator.code from  PqcmcUnitsMeasureTerminology
* batch 1..1 MS
* batch.extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS
//* batch.extension contains pq-batch-container-closure-extension named batch-container 1..1 MS
* batch.lotNumber 1..1 MS
* batch.lotNumber ^short = "Batch or Lot Number (Bulk Batch ID)"
* batch.expirationDate 1..1 MS
* batch.expirationDate ^short = "Expiration Date"
* batch.expirationDate ^definition = "A combination of letters, numbers, or symbols, or any combination of them, from which the complete history of the manufacture, processing, packing, holding, and distribution of a batch or lot of drug product or other material can be determined. [Source: Adapted reference: 21 CFR 210.3 Definitions (4/1/2014)]"

Profile: DrugProductmanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-product-manufacturing-batch
Title: "Drug Product Manufacturing Batch"
Description: "This profile defines the details of a batch of medicine."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/drug-product-manufacturing-batch"
* ^context.type = #extension
* ^context.expression = "extension to the batch in Medication"
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
* extension[expirationDateClassification] ^definition = """The endorsement of the expiration date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant. [Source: SME Defined]
This classification applies to ALL products.
 For an original application, Expiration Date Classification is 'Proposed'.
 After an application has been approved, Expiration date classification is 'Approved'
 For a Supplement that's changing the expiration date that is already classified as 'Approved' for the drug product, the changed Expiration Date Classification would be 'Proposed'.
 For products that do not have an Expiration Date, the Expiration Date Classification will be 'NA'.
"""
* extension[expirationDateClassification].valueCodeableConcept MS
* extension[expirationDateClassification].valueCodeableConcept from PqcmcExpirationDateClassificationTerminology
* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined]
Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].valueQuantity 1..1 MS
* extension[batchQuantity].valueQuantity.unit 1..1 MS
* extension[batchQuantity].valueQuantity.code 1..1 MS
* extension[batchQuantity].valueQuantity.code from  PqcmcUnitsMeasureTerminology
* extension[additionalInformation] MS
* extension[additionalInformation] ^short = "Additional Information"
* extension[additionalInformation] ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
"""
* extension[additionalInformation].valueString MS
* extension[container] 1..* MS
* extension[container] ^short = "Container"
* extension[container].extension[lotNumber].valueString 1..1 MS
* extension[container].extension[lotNumber] ^short = "Container Lot Number"
* extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot.
 Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
 """
* extension[container].extension[type] 1..1 MS
* extension[container].extension[type] ^short = "Container Type"
* extension[container].extension[type]
* extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[container].extension[type].valueCodeableConcept 1..1 MS
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology
* extension[container].extension[quantity] 1..1 MS
* extension[container].extension[quantity] ^short = "Container Fill per Container Size"
* extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
 Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: tablets, mL.
 Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
 Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: mL, L, cc.
 """
* extension[container].extension[quantity].valueRatio 1..1 MS
* extension[container].extension[closureSystemDescription] 1..1 MS
* extension[container].extension[closureSystemDescription] ^short = "Container Closure System Description"
* extension[container].extension[closureSystemDescription] ^definition = """ Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
 Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
 Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
 """
* extension[container].extension[closureSystemDescription].valueString 1..1 MS
* extension[container].extension[closureType] 1..1 MS
* extension[container].extension[closureType] ^short = "Closure Type"
* extension[container].extension[closureType] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* extension[container].extension[closureType].valueCodeableConcept 1..1 MS
* extension[container].extension[closureType].valueCodeableConcept from PqcmcClosureTypeTerminology

Profile: RoutineDrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-routine-drug-product
Title: "Routine Drug Product"
Description: "Includes the identifying information of the drug product. Profile of Drug Product profile."

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* combinedPharmaceuticalDoseForm 0..1 MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code ^short = "Dosage Form"
* combinedPharmaceuticalDoseForm.coding.code ^definition = """The form in which active and/or inert ingredient(s) are physically presented. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)]
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
SME comment -- this is the marketed dosage form.
"""
* combinedPharmaceuticalDoseForm.coding.code from SplPharmaceuticalDosageFormTerminology
* route 0..1 MS
* route.coding.code 1..1 MS
* route.coding.code ^short = "Route of Administration"
* route.coding.code ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI EVS C38114]"
* route.coding.code from SplDrugRouteofAdministrationTerminology
* name 1..1 MS
* name.productName 1..1 MS
* name.productName ^short = "Product Proprietary name | Product Non-proprietary Name"
* name.productName ^definition = """Product Proprietary Name: The exclusive name of a drug substance or drug product owned by a company under trademark law regardless of registration status with the Patent and Trademark Office (PTO). [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071683.htm]
* Note: Excludes dosage form, route of administration and strength.
* Example: Tylenol
Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: http://www.fda.gov/Drugs/DevelopmentApprovalProcess/FormsSubmissionRequirements/ElectronicSubmissions/DataStandardsManualmonographs/ucm071638.htm ]
"""
* name.type.text 1..1 MS

//________________________________________________________________
/// Profiles on Profiles
//________________________________________________________________

Profile: DrugProductwithImpurites
Parent: DrugProduct
Id: pqcmc-drug-product-with-impurities
Title: "Drug Product Impurities"
Description: "List of drug product impurities. Profile of Drug Product profile."

* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* impurity 1..* MS
* impurity.reference 1..1 MS
* name 1..1 MS
* name.productName 1..1 MS
* name.type.text 1..1 MS

Profile: DrugProductContainerClosure
Parent: DrugProduct
Id: pqcmc-druproduct-container-closure
Title: "Drug Product Container Closure"
Description: "Description and coding of the container closure system. Profile of Drug Product profile."

* extension[mdpcontainerClosure] 1..1 MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* name 1..1 MS
* name.productName 1..1 MS
* name.type.text 1..1 MS

Profile: DrugProductDescription
Parent: DrugProduct
Id: pqcmc-drug-product-description
Title: "Drug Product Description"
Description: "Includes the properties of the drug product and components. Profile of Drug Product profile."

* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* description 1..1 MS
* combinedPharmaceuticalDoseForm 1..1 MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* route 1..1 MS
* route.coding.code 1..1 MS
* name 1..1 MS
* name.productName 1..1 MS
* name.type.text 1..1 MS
* crossReference MS



Invariant: cmc-name-type
Description: "Name.type values are proprietary an non-proprietary"
Expression: "(name.productName.exists() implies name.type.text = 'Proprietary' or 'Non-proprietary')"
Severity: #error