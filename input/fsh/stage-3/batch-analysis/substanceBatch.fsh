Profile: DrugSubstanceBatch
Parent: Substance
Id: pqcmc-drug-substance-batch
Title: "Drug Substance Manufactured Batch"
Description: "Includes the properties of the drug substance as manufactured."

* extension contains drug-substance-manufacturing-batch named api-batch 1..1 MS
* identifier 1..1 MS
  * ^short = "Drug Substance Lot Number"
  * ^definition = """
    Lot number of the drug substance used in manufacturing a drug product batch. [Source: SME Defined]
  """
  * value 1..1 MS
* code MS
* insert PQCodeableReference(code)
* code only CodeableReference(SubstanceDefinitionHandle)
  * ^short = "Reference to Substance (short)"
* expiry 0..1 MS
  * ^short = "Retest Date"
  * ^definition = "The date after which samples of the drug substance should be examined to ensure compliance with the specification and thus suitable for use in the manufacture of a given drug product [Source: Adapted from Q1A(R2)]"