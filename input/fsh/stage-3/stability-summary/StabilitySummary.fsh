Profile: StabilitySummary
Parent: PlanDefinition
Id: pqcmc-stability-summary
Title: "Stability Summary"
Description: "Summary of the types of studies conducted (forced degradation, photostability, and stress testing), protocols used, and the results of the studies"

* extension contains pq-additional-info-extension named additionalInfo 0..* MS
* extension[additionalInfo]
  * ^short = "Study Summary Additional"
  * ^definition = """
    A placeholder for providing comments about the stability summary.
  """
* identifier 1..1 MS
* status MS
* subject[x] 1..1 MS
* insert PQReference(subject[x])
* subject[x] only Reference(DrugProductHandle or SubstanceDefinitionHandle)
* goal MS
  * target 1..1 MS
    * due MS
      * ^short = "Expiry Period | Retest Period"
      * ^definition = """
        Expiry Period: The time period during which a drug product is expected to remain within the specification, provided that it is stored under the conditions defined on the container label. [Source: Adapted from ICH Q1A(R2)]

        Retest Period: The period of time during which the drug substance is expected to remain within its specification and, therefore, can be used in the manufacture of a given drug product, provided that the drug substance has been stored under the defined conditions. [Source: Adapted from ICH Q1A(R2)]
      """
* action 1..1 MS
  * ^short = "Expiry or Retest per storage condidtion"
  * description 0..1 MS
    * ^short = "Stability Summary of storage conditions and intervals"
  * code MS
  * code from PqcmcStorageConditionCategoryTerminology (required)
    * ^short = "Storage Condition for Expiry Period| Storage Condition for Retest Period"
    * ^definition = """
      ***Storage Condition for Expiry Period:*** The storage condition associated with the expiry period. [Source: SME defined]
      For example: Control room temperature, refrigerated
      Note: for drug products and most drug substances the storage conditions are provided on the container label (drug substance), prescribing label (drug product), label is n/a for biologics

      Storage Condition for Retest Period: The storage condition associated with the retest period. [Source: SME defined]
      For example: Control room temperature, refrigerated

      Note: for most drug substances the storage conditions are provided on the container label, label is n/a for biologics
    """
// It looks like this part was never profiled completely?? -CRN
  * documentation 0..* MS
    * type = http://hl7.org/fhir/related-artifact-type#documentation
// this will be replaced with uri if moved to upper folder
    * document MS
      * title 1..1 MS
        * ^short = "Reference to Study Name"
        * ^definition = "Reference to a non-unique textual identifier given to the drug stability study by the sponsoring organization."
  * goalId 1..* MS
    * ^short = "Period details"