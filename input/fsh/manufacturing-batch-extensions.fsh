RuleSet: manufacturing-batch-extension-commonalities
// all the fields that are common to the two extensions
* extension[manufacturingDate] 1..1 MS
  * ^short = "Manufacturing Date"
  * ^definition = """
    The date associated with manufacturing a batch. [Source: SME Defined]
    Note: See Manufacturing Date Description element.
  """
  * valueDateTime MS
* extension[manufacturingDateClassification] 1..1 MS
  * ^short = "Manufacturing Date Description"
  * ^definition = """
    A textual description that provides a rationale for the selection of the manufacturing date. [Source: SME Defined]
    Note: This description should include the specific operation/step in the manufacturing process associated with the assigned manufacturing date.
  """
  * valueCodeableConcept MS
  * valueCodeableConcept only CodeableConceptTextOnly
* extension[assignedManufacturer] 1..1 MS
  * ^short = "Assigned Manufacturer"
  * valueReference MS
  * insert PQReference(valueReference)
  * valueReference only Reference(CodedOrganization)
* extension[expirationDateClassification] 1..1 MS
  * valueCodeableConcept MS
  * valueCodeableConcept from PqcmcExpirationDateClassificationTerminology (required)
* extension[batchUtilization] 1..1 MS
  * ^short = "Batch Utilization"
  * ^definition = """
    A categorization of the batch that identifies its usage. [Source: SME Defined]
    Examples: commercial, development.
  """
  * valueCodeableConcept MS
  * valueCodeableConcept from PqcmcBatchUtilizationTerminology (required)
* extension[batchQuantity] 1..1 MS
  * ^short = "Batch Size"
  * ^definition = """
    The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]
  """
  * valueQuantity MS
  * valueQuantity from PqcmcUnitsMeasure (required)
    * value 1..1 MS
    * code 1..1 MS
* extension[additionalInformation] MS
  * ^short = "Additional Information"
  * ^definition = """
    A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
    Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
  """
  * valueString MS
* extension[container] 1..* MS
  * ^short = "Container"
  * extension[lotNumber]
    * ^short = "Container Lot Number"
    * ^definition = """
      A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot.
      Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
    """
    * valueString 1..1 MS
  * extension[type] 1..1 MS
    * ^short = "Container Type"
    * ^definition = """
      The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]
    """
    * valueCodeableConcept 1..1 MS
    * valueCodeableConcept from PqcmcContainerTypeTerminology (required)
  * extension[quantity] 1..1 MS
    * ^short = "Container Fill per Container Size"
    * ^definition = """
      Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
      Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: tablets, mL.
      Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
      Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI E - C25709] Examples: mL, L, cc.
    """
    * valueRatio MS
  * extension[closureSystemDescription] 1..1 MS
    * ^short = "Container Closure System Description"
    * ^definition = """
      Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
      Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
      Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
    """
    * valueString MS
  * extension[closureType] 1..1 MS
    * ^short = "Closure Type"
    * ^definition = """
      The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]
    """
    * valueCodeableConcept MS
    * valueCodeableConcept from PqcmcClosureTypeTerminology (required)

Profile: DrugProductmanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-product-manufacturing-batch
Title: "Drug Product Manufacturing Batch"
Description: "This profile defines the details of a batch of medicine."
* ^context.type = #element
* ^context.expression = "Medication.batch"
* insert manufacturing-batch-extension-commonalities
* extension[expirationDateClassification]
  * ^short = "Expiration Date Classification"
  * ^definition = """
    The endorsement of the expiration date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant. [Source: SME Defined]
    This classification applies to ALL products.
    For an original application, Expiration Date Classification is 'Proposed'.
    After an application has been approved, Expiration date classification is 'Approved'
    For a Supplement that's changing the expiration date that is already classified as 'Approved' for the drug product, the changed Expiration Date Classification would be 'Proposed'.
    For products that do not have an Expiration Date, the Expiration Date Classification will be 'NA'.
  """

Profile: DrugSubstancemanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-substance-manufacturing-batch
Title: "Drug Substance Manufacturing Batch"
Description: "This profile defines the details of a batch of API."
* ^context.type = #element
* ^context.expression = "Substance"
* insert manufacturing-batch-extension-commonalities
* extension[expirationDateClassification]
  * ^short = "Retest Date Classification"
  * ^definition = """
    The endorsement of the Retest date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant for a drug substance. [Source: SME Defined]
    This classification applies to ALL substances.
    * For an original MF/application, Retest Date Classification is 'Proposed'.
    * After an MF/application has been approved, Retest Date Classification is 'Adequate'.
    * For a Supplement that's changing the Retest Date that is already classified as 'Adequate' for the drug product or drug substance, the changed Retest Date Classification would be 'Proposed'.
    * For substances that do not have a Retest Date, the Retest Date Classification will be 'NA'.
  """