Profile: DrugProductBatch
Parent: Medication
Id: pqcmc-drug-product-instance
Title: "Drug Product Manufactured Instance"
Description: "Includes the properties of the drug product as manufactured."

* identifier 1..* MS
  * ^short = "Product Proprietary Name | Product Non-Proprietary Name"
  * ^definition = """
    Product Proprietary Name: The exclusive name of a drug product owned by a company under trademark law regardless of registration status with the US Patent and Trademark Office (PTO). [Source: SME Defined]
    Note:  Excludes dosage form, route of administration and strength. Example:  Tylenol 
    Product Non-proprietary Name: A name unprotected by trademark rights that is entirely in the public domain. It may be used without restriction by the public at large, both lay and professional. [Source: SME Defined]
  """
// hold authroization for eStability
* marketingAuthorizationHolder 0..1 MS
* insert PQReference(marketingAuthorizationHolder)
* marketingAuthorizationHolder only Reference(CodedOrganization)
  * ^short = ""
* doseForm 0..1 MS
* doseForm from SplPharmaceuticalDosageFormTerminology (required)
  * ^definition = """
    The form in which active and/or inert ingredient(s) are physically presented as indicated on the packaging according to the USP. [Source: NCI EVS - C42636]
    Examples: tablet, capsule, solution, cream, etc. that contains a drug substance generally, but not necessarily, in association with excipients. [Source: ICH Q1A(R2)] See also 21 CFR 314.3.
    Note: If there is a new dosage form that does not exist in the controlled terminology, then propose this new dosage form during sponsor meetings with FDA.
  """
* ingredient 1..* MS
  * item MS
  * insert PQCodeableReference(item)
  * item only CodeableReference(IngredientBatch)
    * ^short = "UNII"
    * ^definition = """
      The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
      Example: 362O9ITL9D
      Note: If a UNII does not exist, please go to
      * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
    """
  * isActive 1..1 MS
    * ^short = "Active ingredient indicator"
  * strength[x] MS
  * strength[x] only Ratio
    * numerator 1..1 MS
    * numerator from PqcmcUnitsMeasure (required)
      * ^short = "Strength Numeric Numerator"
      * ^definition = """
        The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]
      """
    * denominator 1..1 MS
    * denominator from PqcmcUnitsMeasure (required)
      * ^short = "Strength Numeric Denominator"
      * ^definition = """
        Specifies the quantity of the ingredient (s) consistent with a single unit dose or as expressed on the label. [Source: SME Defined]
        Note: Kg value is only applicable for veterinary applications. 
        Note: This is the denominator value when expressing the strength for APIs Example: 5 mg per 100 mL
      """
* batch 1..1 MS
  * extension contains drug-product-manufacturing-batch named medication-batch 1..1 MS
  * lotNumber 1..1 MS
    * ^short = "Batch or Lot Number (Bulk Batch ID)"
    * ^definition = """
      A combination of letters, numbers, or symbols, or any combination of them, from which the complete history of the manufacture, processing, packing, holding, and distribution of a batch or lot of drug product or other material can be determined. [Source: Adapted reference: 21 CFR 210.3 Definitions (4/1/2014)]
    """
  * expirationDate 0..1 MS
    * ^short = "Expiration Date"
    * ^definition = """
      The date the manufacturer guarantees the full potency and safety of a particular batch/lot of medicinal product. The complete point in time date consisting of day, month and year shall be specified using the ISO 8601 date format. [Source: ISO IDMP 11615-2017]
    """

Profile: IngredientBatch
Parent: Substance
Id: ingredient-batch
Title: "Ingredient Batch"
Description: "Properties for ingredients used in ProductBatch. includes a short manufacturing batch extension and a reference to SubstanceDefinitionHandle or ExcipientRaw"
* extension contains ingredient-manufacturing-batch named ingredient-batch 1..1 MS
* identifier 1..1 MS
  * ^short = "Drug Substance Lot Number"
  * ^definition = """
    Lot number of the drug substance used in manufacturing a drug product batch. [Source: SME Defined]
  """
  * value 1..1 MS
* code MS
* insert PQCodeableReference(code)
* code only CodeableReference(SubstanceDefinitionHandle or ExcipientRaw)
