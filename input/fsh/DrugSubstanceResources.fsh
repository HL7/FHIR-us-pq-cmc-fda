Extension: StrengthOperatorExtension
Id:  pq-strength-operator-extension
Title: "Strength Operator"
Description: "A mathematical symbol that denotes equality or inequality between two values."
* value[x] only CodeableConcept
* value[x] from PqcmcStrengthOperatorTerminology (required)

Extension: ContentPercentExtension
Id:  pq-content-percent-extension
Title: "Content (%)"
Description: "The percentage of the component in the drug product."
* valueDecimal   

Extension: StrengthTypeExtension
Id:  pq-strength-type-extension
Title: "Strength Type  (for API)"
Description: "A physical (contetn) of activity measurement of the strenght of the active ingredient."
* valueString

Extension: QuantityPercentExtension
Id:  pq-quantity-percent-extension
Title: "Quantity Percent"
Description: "The percentage of the component in the batch."
* valueDecimal  

Extension: OverageExtension
Id: pq-overage-extension
Title: "Overage"
Description: "Amount and rationale for excess drug substance."
* . ^short = "Container Closure System Information"
* extension contains 
    overagePercent 1..1 MS and
    overageJustification 1..1 MS 
* extension[overagePercent]
* extension[overagePercent].valueDecimal 
* extension[overagePercent].valueDecimal ^short = "Overage Percent"
* extension[overagePercent].valueDecimal ^definition = "Overage is teh percent of a drug substance in exell of the label claim to compensate for the loss, such as manufacturing or others."
* extension[overageJustification]
* extension[overageJustification].valueMarkdown
* extension[overageJustification].valueMarkdown ^short = "Overage Justification"
* extension[overageJustification].valueMarkdown ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product."

Profile: DrugSubstance
Parent: SubstanceDefinition
Id: pqcmc-DrugSubstance
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterizaiton"
* identifier 
* identifier ^comment = """
The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
* Example: 362O9ITL9D 
* Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
 """
* identifier ^short = "UNII"
* identifier 1..1
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* structure MS
* structure.molecularFormula 1..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique.text 1..1
* structure.representation 
* structure.representation.representation 
* structure.representation.format 1..1
* structure.representation.format from PqcmcCChemicalStructureDataFileTypeTerminology
* structure.representation.document 
* structure.representation.document only Reference(Base64DocumentReference) 
* code MS
* code.code.text 0..1
* code.code ^short = "CAS Number" 
* code.code.text 0..1
* code.code ^short = "INN"
* code.code.text 0..1
* code.code ^short = "USAN"
* code.code.text 0..1
* code.code ^short = "IUPAC Name"
* code.code.text  0..1
* code.code ^short = "ISBT 128" 
* code.code.text 0..1
* code.code ^short = "Company Code"
* name.name	1..1 MS
* name.name	^short = "Substance Name"
* relationship.substanceDefinitionReference only Reference(DrugSubstanceImpurity or PolymorphicForm or ComponentSubstance )
* relationship.type.text 
* relationship.type.text ^short = "Preferred values: 'Polymorph', 'Raw Material', and  'Impurity'"
// Is a rule set required so that if reference is PolymorphicForm  text is "Polymorph", if ComponentSubstance then text is  "Raw Material" DrugSubstanceImpurity then text is  "Impurity" ?

Profile: DrugSubstanceImpurity
Parent: SubstanceDefinition
Id: pqcmc-DrugSubstanceImpurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity."
* identifier 
* identifier ^comment = """
The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
* Example: 362O9ITL9D 
* Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
 """
* identifier ^short = "UNII"
* identifier 0..1
* classification 1..1 MS
* classification  from PqcmcImpurityClassificationTerminology
* structure MS
* structure.representation.type 1..1
* structure.representation.type.text

* structure MS
* structure.representation 1..* MS
* structure.representation ^short = "Structural Representation"
* structure.representation.representation  

* structure.representation 1..1 MS
* structure.representation ^short = "Impurity Chemical Structure Data File"
* structure.representation.format 1..1
* structure.representation.format from PqcmcCChemicalStructureDataFileTypeTerminology
* structure.representation.document 
* structure.representation.document only Reference(Base64DocumentReference) 

* structure.representation 1..1 MS
* structure.representation ^short = "Analytical Instrument Data File"
* structure.representation.format 1..1
* structure.representation.format from PqcmcCChemicalStructureDataFileTypeTerminology
* structure.representation.document 
* structure.representation.document only Reference(Base64DocumentReference) 

* structure.representation 1..1 MS
* structure.representation ^short = "Impurity Analysis Graphic"
* structure.representation.format 1..1
* structure.representation.format.text
* structure.representation.document 
* structure.representation.document only Reference(Base64DocumentReference) 

* name.name	1..1 MS
* name.name	^short = "Drug Substance Impurity Name"

Profile: PolymorphicForm
Parent: SubstanceDefinition
Id: pqcmc-PolymorphicForm
Title: "Polymorphic Form"
Description: "Alternate structure present inf the drug substance"
* identifier 
* identifier ^comment = """
The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
* Example: 362O9ITL9D 
* Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
 """
* identifier ^short = "UNII"
* identifier 0..1
* structure MS
* structure.representation.type 1..1
* structure.representation.type.text
* name.name	1..1 MS
* name.name	^short = "Polymorphic Form Identification"

Profile: ComponentSubstance
Parent: SubstanceDefinition
Id: pqcmc-ComponentSubstance
Title: "Component Substance"
Description: "Any raw material intended for use int he manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."
* identifier 
* identifier ^comment = """
The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
* Example: 362O9ITL9D 
* Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
 """
* identifier ^short = "UNII"
* identifier 1..1
* grade 1..1
* grade ^short = "Benchmark? check"
* grade from PqcmcQualityBenchmarkTerminology
* manufacturer 0..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* structure MS
* structure.representation  1..*
* structure.representation.representation 0..1 MS
* structure.representation.format 1..1
* structure.representation.format.text
* structure.representation.document 0..1 MS
* structure.representation.document only Reference(Base64DocumentReference) 
* code MS
* code.code.text 0..1
* code.code ^short = "CAS Number" 
* code.code.text 0..1
* name.name	1..1 MS
* name.name	^short = "Component/Raw Material Name"
* sourceMaterial 0..1 MS
* sourceMaterial.type 1..1 
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 0..1 
* sourceMaterial.genus ^short = "Source Organism"
* sourceMaterial.genus.text
* sourceMaterial.species 0..1 
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species.text
* sourceMaterial.part 1..1 
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part.text
* sourceMaterial.countryOfOrigin 1..1 
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin.text

Profile: RoutineSubstanceDefinition
Parent: DrugSubstance
Id: pqcmc-routine-drug-substance
Title: "Brief Drug Substance"
Description: "Provides sufficient information  to identify a drug substance."
 
* identifier ^short = "UNII"
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* code MS
* code.code.text 0..1
* code.code ^short = "CAS Number" 
* code.code.text 0..1
* name.name	1..1 MS
* name.name	^short = "Component/Raw Material Name"

Profile: Excipient
Parent: DrugSubstance
Id: pqcmc-excipient
Title: "Excipient Drug Substance"
Description: "Provides sufficient information  to identify an inactive substance and its source."
 
* identifier ^short = "UNII"
* identifier 1..1
* grade 1..1
* grade ^short = "Benchmark? check"
* grade from PqcmcQualityBenchmarkTerminology
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* name.name	1..1 MS
* name.name	^short = "Component/Raw Material Name"
* sourceMaterial 0..1 MS
* sourceMaterial.type 1..1 
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 0..1 
* sourceMaterial.genus ^short = "Source Organism"
* sourceMaterial.genus.text
* sourceMaterial.species 0..1 
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species.text
* sourceMaterial.part 1..1 
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part.text
* sourceMaterial.countryOfOrigin 1..1 
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin.text

Profile: DrugProductComponent
Parent: Ingredient
Id: pqcmc-Component
Title: "Drug Product Component"
Description: "The amount detais about the drug product compoents to define the product composition in a product unit."

* .extension contains pq-additional-info-extension named additional-info 1..1 MS
* .extension[additional-info] ^short = "Drug Product Component Additional Information"
* status.code 
* for only Reference(pqcmc-routine-drug-product)
* for ^short = "Reference to MedicinalProductDefinition"
* role.coding.code 1..1 MS
* role.coding.code ^short = "Drug Product Component Function Category"
* role.coding.code from PqcmcDrugProductComponentFunctionCategoryTerminology
* function 1..1 MS   
* function.coding.code 0..1 MS // need rule for expienet
* function.coding.code ^short = "PQ/CMC Excipient Function"
* function.coding.code from PqcmcExcipientFunctionTerminology
* group 0..1 MS
* group ^short = "Component Group"
* substance.code.reference 1..1 MS
* substance.code.reference ^short = "Ingredient Substance"
* substance.code.reference only Reference(ComponentSubstance) //* substance.code/reference/reference/@value
* substance.strength 1..1 MS
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Quantity
* ingredient.quantity.numerator MS
* ingredient.quantity.denominator MS
* substance.strength.extension contains pq-strength-type-extension named strengthType 1..1 MS
* substance.strength.extension[strengthType] ^short = "Strength Type (for API)"
* substance.strength.extension contains pq-content-percent-extension named contentPercent 1..1 MS
* substance.strength.extension[contentPercent] ^short = "Content (%)"
* substance.strength.presentationRatio MS
* substance.strength.presentationRatio ^short = "StrengthNumericNumerator StrengthNumericNumerator UOM  Denominator and UOM"
* substance.strength.presentationRatio.numerator MS
* substance.strength.presentationRatio.denominator MS
* substance.strength.presentationQuantity MS
* substance.strength.presentationQuantity.extension contains pq-strength-operator-extension named strengthOperator  0..1 MS
* substance.strength.presentationQuantity.extension[strengthOperator] ^short = "Strength Operator"
* substance.strength.presentationText 0..1 MS

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-ingredient
Title: "Drug Product Ingredient"
Description: "The amount detais about the drug product ingredients in the batch." 

* .extension contains pq-additional-info-extension named additional-info 1..1 MS
* .extension[additional-info] ^short = "Drug Product Ingredient Additional Information"
* substance.code.reference 1..1 MS
* substance.code.reference ^short = "Ingredient Substance"
* substance.code.reference only Reference(pqcmc-routine-drug-substance)
* substance.code ^short = "Ingredient Substance"
* substance.strength.extension contains pq-quantity-percent-extension named quantity-percent 1..1 MS
* substance.strength.extension[quantity-percent] ^short = "Quantity Percent"
* substance.strength.extension contains pq-overage-extension named overage 0..1 MS
* substance.strength.extension[overage] ^short = "Overage"
* substance.strength.concentrationQuantity MS
* substance.strength.concentrationQuantity ^short = "Component Quanty Per Batch"
* substance.strength.concentrationText 0..1 MS
* substance.strength.concentrationText ^short = "Strength Textual"

Profile: DrugSubstanceInstance
Parent: Substance
Id: pqcmc-drug-substnace-instance
Title: "Drug Substance Manufactured Instance"
Description: "Includes the properties of the drug substance as manufactured."

* identifier 
* identifier.value