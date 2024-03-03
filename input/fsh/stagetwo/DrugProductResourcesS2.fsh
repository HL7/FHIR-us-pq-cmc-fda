Extension: ProductBatchIngredientExtension
Id: pq-product-batch-ingredient-extension
Title: "Product Batch Ingredient Extension"
Description: "Extension for measurement properties for ingredients in the batch formula."
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* extension contains
  overagePercent 0..1 MS and
  overageJustification 0..1 MS and
  strengthTextual 1..1 MS
* extension[overagePercent].value[x] only decimal
* extension[overagePercent].value[x] ^short = "Overage Percent"
* extension[overagePercent].value[x] ^definition = """Overage is the percent of a drug substance in excess of the label claim to compensate for the loss, such as manufacturing or other.
Note: This is not for stability loss, and generally not permitted.
Example: 3% overage of drug that has a label claim of 10mg of active (API) - the formulation would have 10.3 mg. A batch formula for 100 kg would contain 103 kg of API.
"""
* extension[overageJustification].value[x] only markdown
* extension[overageJustification].value[x] ^short = "Overage Justification"
* extension[overageJustification].value[x] ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product [Source: SME Defined]"
* extension[strengthTextual] 1..1 MS 
* extension[strengthTextual].value[x] only string
* extension[strengthTextual].value[x] ^short = "Strength Textual"
* extension[strengthTextual].value[x] ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes
"""

Profile: BatchFormula
Parent: ManufacturedItemDefinition
Id: pqcmc-product-batch-formula
Title: "Drug Product Batch Formula"
Description: "Listing of all components of the dosage form to be used in the manufacture, their amounts on a per batch basis, including overages, and reference to their quality standards."

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* status 1..1 MS
* name 1..1 MS
* name ^short = "Product Non-proprietary Name"
* name ^definition = """A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
"""
* manufacturer MS
* manufacturer only Reference(MfgTestSiteOrganization) 
* property 1..* MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #closed
* property ^slicing.description = "Slice based on value"
* property contains
      BatchSize 1..1 MS and
      BatchUtil 1..* MS and
      AddInfo 0..1 MS
* property[BatchSize].type 1..1 MS
* property[BatchSize].type ^short = "Batch Quantity"
* property[BatchSize].type ^definition = """The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
"""
* property[BatchSize].type = $NCIT#batchsize "Batch Quantity"
* property[BatchSize].value[x] only Quantity
* property[BatchSize].valueQuantity.unit 1..1 MS
* property[BatchSize].valueQuantity.unit ^short = "Quantity UOM"
* property[BatchSize].valueQuantity.unit ^definition = """A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* property[BatchSize].valueQuantity.code 1..1 MS
* property[BatchSize].valueQuantity.code from  PqcmcUnitsMeasureTerminology

* property[BatchUtil].type = $NCIT#BatchUtil "Batch Utilization"
* property[BatchUtil].value[x] only CodeableConcept
* property[BatchUtil].valueCodeableConcept 1..1 MS
* property[BatchUtil].valueCodeableConcept ^short = "Batch Utilization"
* property[BatchUtil].valueCodeableConcept ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined]
Examples: commercial, development. """
* property[BatchUtil].valueCodeableConcept.coding from PqcmcBatchUtilizationTerminology
* property[AddInfo].type 1..1 MS
* property[AddInfo].type = $NCIT#batchinfo "Batch Formula Additional Information"
* property[AddInfo].value[x] only markdown
* property[AddInfo].valueMarkdown ^short = "Batch Formula Additional Information"
* property[AddInfo].valueMarkdown ^definition = """A placeholder for providing any comments that are relevant to the batch formula. [Source: SME Defined]
Examples: Water for wet granulation -- removed during processing; adjusted for assay, etc.
"""
// Product parts
* component 1..* MS
* component.type 1..1 MS
* component.type ^short = "Product Part Type"
* component.type ^definition = """Identifies the kind of element, based on the design the applicant develops to achieve the desired drug product and overall release profile. [Source: SME Defined]
Example: Layer, Bead, Minitablet, Capsule Shell, Coating
"""
// ingredient
* component.constituent 1..* MS
* component.constituent.extension contains pq-additional-info-extension named additional-info 0..1 MS
* component.constituent.extension[additional-info] ^short = "Drug Product Constituent Additional Information"
* component.constituent.extension[additional-info] ^definition = """A placeholder for providing any comments relevant to the constituent [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.* property[
"""
* component.constituent.extension contains pq-product-batch-ingredient-extension named formulaIngredient 0..1 MS
* component.constituent.amount 1..2 MS
* component.constituent.amount ^slicing.discriminator.type = #value
* component.constituent.amount ^slicing.discriminator.path = "code"
* component.constituent.amount ^slicing.rules = #closed
* component.constituent.amount ^slicing.description = "Slice based on value of unit"
* component.constituent.amount contains
      Weight 1..1 MS and
      VolumeToVolume 0..1 MS and
      WeightToVolume 0..1 MS and 
      WeightToWeight 0..1 MS
* component.constituent.amount[Weight].value 1..1 MS
* component.constituent.amount[Weight] obeys cmc-percent-quantity
* component.constituent.amount[Weight].value ^short = "Component Quantity Per Batch"
* component.constituent.amount[Weight].value ^definition = """Specifies the amount of the component per batch size of the drug product. [Source: SME Defined]
"""
* component.constituent.amount[Weight].unit 1..1 MS
* component.constituent.amount[Weight].code 1..1 MS
* component.constituent.amount[Weight].code from PqcmcUnitsMeasureTerminology (required)
* component.constituent.amount[VolumeToVolume].value 1..1 MS
* component.constituent.amount[VolumeToVolume].value ^short = "Quantity Percent"
* component.constituent.amount[VolumeToVolume].value ^definition = """Quantity expressed as Volume To Volume: The percentage of the component in the batch [Source: SME Defined]
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[VolumeToVolume].code = $NCIT#C48571 "%{VolumeToVolume}"

* component.constituent.amount[WeightToVolume].value 1..1 MS
* component.constituent.amount[WeightToVolume].value ^short = "Quantity Percent"
* component.constituent.amount[WeightToVolume].value ^definition = """Quantity expressed as Weight To Volume: The percentage of the component in the batch [Source: SME Defined]

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[WeightToVolume].code = $NCIT#C48527 "%{WeightToVolume}"
* component.constituent.amount[WeightToWeight].value 1..1 MS
* component.constituent.amount[WeightToWeight].value ^short = "Quantity Percent"
* component.constituent.amount[WeightToWeight].value ^definition = """Quantity expressed as Weight To Weight: The percentage of the component in the batch [Source: SME Defined] 

Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709]
"""
* component.constituent.amount[WeightToWeight].code = $NCIT#C48528 "%{WeightToWeight}"

* component.constituent.location 0..* MS
* component.constituent.location ^short = "Product Part Ingredient Physical Location"
* component.constituent.location ^definition = """Identifies where the ingredient physically resides within the product part. [Source: SME Defined]
Examples: Intragranular, Extra granular, Blend
"""
* component.constituent.location.coding from PqcmcProductPartIngredientPhysicalLocation
* component.constituent.hasIngredient 1..1 MS
* component.constituent.hasIngredient only CodeableReference(DrugProductIngredient)
// Product part
* component.property 0..1 MS
* component.property.type = $NCIT#info "Product Part Additional Information"
* component.property.value[x] only markdown
* component.property.valueMarkdown ^short = "Component Additional Information"
* component.property.valueMarkdown ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined]
 Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.."""
* component.component 0..* MS

Profile: DrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product
Title: "Drug Product"
Description: "This profile is not used in any bundles. It is a reference profile of MedicinalProductDefinition if not divided into eCTD sections. It includes the properties of the drug product, its components and impurities"

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* description 1..1 MS
* description ^short = "Drug Product Description"
* description ^definition = """A textual narrative describing the drug product or products. [Source: SME Defined]
Examples: dosage form, container closure system, purpose."""

* combinedPharmaceuticalDoseForm 0..1 MS
* combinedPharmaceuticalDoseForm ^short = "Product Dosage Form"
* combinedPharmaceuticalDoseForm ^definition = """TThe form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
"""
* combinedPharmaceuticalDoseForm.coding MS
* combinedPharmaceuticalDoseForm.coding.code 1..1 MS
* combinedPharmaceuticalDoseForm.coding from SplPharmaceuticalDosageFormTerminology
* route 1..* MS
* route ^short = "Route of Administration"
* route ^definition = "Designation of the part of the body through which or into which, or the way in which, the medicinal product is intended to be introduced. In some cases a medicinal product can be intended for more than one route and/or method of administration. [Source: NCI E C38114]"
* route.coding MS
* route.coding from SplDrugRouteofAdministrationTerminology	
* comprisedOf 0..* MS
* comprisedOf only Reference(FinishedProduct or BatchFormula)
* impurity 0..* MS
* impurity ^short = "Product Impurity"
* impurity.concept 0..0
* impurity only CodeableReference(ImpuritySubstance)
* insert ProprietaryAndNonProprietaryNames
* crossReference MS
* crossReference.product MS
* crossReference.product ^short = "Co-Packaged drug product"

Profile: DrugProductBatch
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* meta.profile 1..1 MS
* identifier 1..* MS
* identifier ^short = "Product Proprietary Name | Product Non-Proprietary Name"
* identifier ^definition = """Product Proprietary Name: The exclusive name of a drug product owned by a company under trademark law regardless of registration status with the US Patent and Trademark Office (PTO). [Source: SME Defined]
Note:  Excludes dosage form, route of administration and strength. Example:  Tylenol 

Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
"""
// hold authroization for eStability
* marketingAuthorizationHolder 0..1 MS
* marketingAuthorizationHolder ^short = ""
* marketingAuthorizationHolder only Reference(SponsorOrganization)
* doseForm 0..1 MS
* doseForm 
* doseForm ^definition = """The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
"""
* doseForm.coding from SplPharmaceuticalDosageFormTerminology (required)
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
* ingredient.strengthRatio.numerator ^definition = """The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]
"""
* ingredient.strengthRatio.numerator.code from PqcmcUnitsMeasureTerminology
* ingredient.strengthRatio.denominator 1..1 MS
* ingredient.strengthRatio.denominator ^short = "Strength Numeric Denominator"
* ingredient.strengthRatio.denominator ^definition = """Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
Note: Kg value is only applicable for veterinary applications. 
Note: This is the denominator value when expressing the strength for APIs Example: 5 mg per 100 mL """
* ingredient.strengthRatio.denominator.code from PqcmcUnitsMeasureTerminology (required)
* batch 1..1 MS
* batch.extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS
* batch.lotNumber 1..1 MS
* batch.lotNumber ^short = "Batch or Lot Number (Bulk Batch ID)"
* batch.lotNumber ^definition = """A combination of letters, numbers, or symbols, or any combination of them, from which the complete history of the manufacture, processing, packing, holding, and distribution of a batch or lot of drug product or other material can be determined. [Source: Adapted reference: 21 CFR 210.3 Definitions (4/1/2014)]
"""
* batch.expirationDate 1..1 MS
* batch.expirationDate ^short = "Expiration Date"
* batch.expirationDate ^definition = "The date the manufacturer guarantees the full potency and safety of a particular batch/lot of medicinal product. The complete point in time date consisting of day, month and year shall be specified using the ISO 8601 date format. [Source: ISO IDMP 11615-2017]"

Profile: DrugProductmanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-product-manufacturing-batch
Title: "Drug Product Manufacturing Batch"
Description: "This profile defines the details of a batch of medicine."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/drug-product-manufacturing-batch"
* ^context.type = #element
* ^context.expression = "Medication.batch"
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
* extension[expirationDateClassification].valueCodeableConcept from PqcmcExpirationDateClassificationTerminology (required)
* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined]
Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology (required)
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].value[x] 1..1 MS
* extension[batchQuantity].value[x] only Quantity
* extension[batchQuantity].value[x].code from PqcmcUnitsMeasureTerminology (required)
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
* extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[container].extension[type].valueCodeableConcept 1..1 MS
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology (required)
* extension[container].extension[quantity] 1..1 MS
* extension[container].extension[quantity] ^short = "Container Fill per Container Size"
* extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
 Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: tablets, mL.
 Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
 Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: mL, L, cc.
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
* extension[container].extension[closureType].valueCodeableConcept from PqcmcClosureTypeTerminology (required)

Profile: DrugProductwithImpurities
Parent: MedicinalProductDefinition
Id: pqcmc-drug-product-with-impurities
Title: "Drug Product Impurities"
Description: "List of drug product impurities. Profile of Drug Product profile."

* meta.profile 1..1 MS
* identifier 0..1 
* identifier ^short = "optional user designated identifier"	
* impurity 0..* MS	
* impurity ^short = "Product Impurity"	
* impurity only CodeableReference(ImpuritySubstance)	
* insert ProprietaryAndNonProprietaryNames

Profile: BatchFormulaMedicinalProduct
Parent: MedicinalProductDefinition
Id: pqcmc-batch-formula-product
Title: "Batch Formula Drug Product Identification"
Description: "The Drug Product produced by the batch formula."

* meta.profile 1..1 MS
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* comprisedOf 1..* MS
* comprisedOf only Reference(BatchFormula)
* insert ProprietaryAndNonProprietaryNames