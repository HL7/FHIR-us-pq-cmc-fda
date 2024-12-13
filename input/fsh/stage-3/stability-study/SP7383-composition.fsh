Profile: EctdCompositionSP7383
Parent: Composition
Id: ectd-composition-sp7383
Title: "eCTD Stability Data Composition"
Description: "The fields needed to represent the Stability Data to be included under the 3.2.P.8.3 , 3.2.S.7.3 and 3.2.P.4.5 eCTD headings. References Sponsor Organization and Stability Study."
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#SP7383 "Stability Data"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
/*
    SECTION SLICES
*/
* section 1.. MS
  * entry MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #closed
  * ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Data profile: RoutineDrugProduct or Routine Api"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct]
  * ^definition = "Product Stability Data to be included under the 3.2.P.8.3 eCTD heading."
  * code = $SectionTypes#32P83 "Product Stability Data"
  * title 1..1 MS
  * entry 1..1 MS
  * insert PQReference(entry)
  * entry only Reference(StabilityStudy)
* section[Api] 
  * ^definition = "Drug Substance Stability Data to be included under the 3.2.S.7.3 eCTD heading."
  * code = $SectionTypes#32S73 "Substance Stability Data"
  * title 1..1 MS
  * entry 1..1 MS
  * insert PQReference(entry)
  * entry only Reference(StabilityStudy)
// need check that subject type in instance matches the seciton selected.
