Profile: StabilitySummary
Parent: PlanDefinition
Id: pqcmc-stability-summary
Title: "Stability Summary"
Description: "Summary of the types of studies conducted (forced degradation, photostability, and stress testing), protocols used, and the results of the studies"

* meta.profile 0..1 MS
* .extension contains pq-additional-info-extension named studysum-additional-info 0..* MS
* .extension[studysum-additional-info] ^short = "Study Summary Additional"
* .extension[studysum-additional-info] ^definition = "A placeholder for providing comments about the stability summary."
* identifier 1..1 MS
* status MS
* subjectReference 1..1 MS
* subjectReference only Reference(RoutineDrugProduct or RoutineSubstanceDefinition)
* goal.target 1..1 MS
* goal.target.detail[x] only Quantity
* goal.target.detailQuantity 0..1 MS
* goal.target.detailQuantity ^short = "Expiry Period | Retest Period"
* goal.target.detailQuantity ^definition = """Expiry Period: The time period during which a drug product is expected to remain within the specification, provided that it is stored under the conditions defined on the container label. [Source: Adapted from ICH Q1A(R2)]

Retest Period: The period of time during which the drug substance is expected to remain within its specification and, therefore, can be used in the manufacture of a given drug product, provided that the drug substance has been stored under the defined conditions. [Source: Adapted from ICH Q1A(R2)]
"""
* goal.target.detailQuantity.value 1..1 MS
* goal.target.detailQuantity.unit 1..1 MS 
* goal.target.detailQuantity.unit ^short = "Expiry Period UOM | Retest Period UOM"
* goal.target.detailQuantity.unit ^definition = """Expiry Period Unit of Meausre: The unit of measure for the expiry period. [Source: Adapted from NCI EVS C117055]
Note: this is typically months.

Retest Period Unit of Measure: The unit of measure for the retest period. [Source: Adapted from NCI EVS C117055]
Note: this is typically months.
"""
* goal.target.detailQuantity.code 1..1 MS
* goal.target.detailQuantity.code from PqcmcUnitsMeasureTerminology (required)
* action 1..1 MS
* action ^short = "Expiry or Retest per storage condidtion"
* action.description 0..1 MS
* action.description ^short = "Stability Summary of storage conditions and intervals"
* action.code MS
* action.code.coding.code ^short = "Storage Condition for Expiry Period| Storage Condition for Retest Period"
* action.code.coding.code ^definition = """***Storage Condition for Expiry Period:*** The storage condition associated with the expiry period. [Source: SME defined] 
For example: Control room temperature, refrigerated
Note: for drug products and most drug substances the storage conditions are provided on the container label (drug substance), prescribing label (drug product), label is n/a for biologics

Storage Condition for Retest Period: The storage condition associated with the retest period. [Source: SME defined] 
For example: Control room temperature, refrigerated

Note: for most drug substances the storage conditions are provided on the container label, label is n/a for biologics
"""
* action.code.coding.code from PqcmcStorageConditionsTerminology (required)
* action.documentation 0..* MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
// this will be replaced with uri if moved to upper folder
* action.documentation.document.title 1..1 MS
* action.documentation.document.title ^short = "Refernce to Study Name"
* action.documentation.document.title ^definition = "Reference to a non-unique textual identifier given to the drug stability study by the sponsoring organization."
* action.goalId 1..* MS
* action.goalId ^short = "Period details"