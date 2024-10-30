Profile: EctdCompositionSP7181
Parent: Composition
Id: ectd-composition-sp7181
Title: "eCTD Stability Summary and Conclusion Composition"
Description: "The fields needed to represent the Stability Summary and Conclusion to be included in the 3.2.P.8.3 and 3.2.S.7.3 eCTD headings. References Sponsor Organization and Stability Study."
* status = #final
* identifier 0..1 MS
/* do or on type code*/
* type = $SectionTypes#SP7181 "Stability Summary and Conclusion"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
/*
    SECTION SLICES
*/
* section 1.. MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Summary and Conclusion profile."
* section contains
  DrugProduct 0..1 MS and
  Api 0..1 MS
* section[DrugProduct] 
  * ^definition = "Product Stability Summary and Conclusion to be included under the 3.2.P.8.3 eCTD heading."
  * code = $SectionTypes#32P83 "Product Stability Data"
  * title 1..1 MS
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #closed
    * ^slicing.description = ""
    * ^slicing.ordered = false
  * entry contains 
    Summary 1..1 MS and
    RoutineDrugProduct 1..1 MS
  * insert PQReference(entry[Summary])
  * entry[Summary] only Reference(StabilitySummary)
  * insert PQReference(entry[RoutineDrugProduct])
  * entry[RoutineDrugProduct] only Reference(DrugProductHandle)
* section[Api]
  * ^definition = "Substance Stability Summary and Conclusion to be included under the 3.2.S.7.3 eCTD heading."
  * code = $SectionTypes#32S73 "Substance Stability Data"
  * title 1..1 MS
  * entry MS
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "$this.resolve()"
    * ^slicing.rules = #closed
    * ^slicing.description = ""
    * ^slicing.ordered = false
  * entry contains 
    Summary 1..1 MS and
    RoutineSubstanceDefinition 1..1 MS
  * insert PQReference(entry[Summary])
  * entry[Summary] only Reference(StabilitySummary)
  * insert PQReference(entry[RoutineSubstanceDefinition])
  * entry[RoutineSubstanceDefinition] only Reference(SubstanceDefinitionHandle)