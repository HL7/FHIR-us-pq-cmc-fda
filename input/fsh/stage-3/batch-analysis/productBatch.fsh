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
