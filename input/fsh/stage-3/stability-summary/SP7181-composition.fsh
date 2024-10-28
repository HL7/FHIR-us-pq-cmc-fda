Profile: EctdCompositionSP7181
Parent: Composition
Id: ectd-composition-sp7181
Title: "eCTD Stability Summary and Conclusion Composition"
Description: "The fields needed to represent the Stability Summary and Conclusion to be included in the 3.2.P.8.3 and 3.2.S.7.3 eCTD headings. References Sponsor Organization and Stability Study."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
/* do or on type code*/
* type = $SectionTypes#SP7181 "Stability Summary and Conclusion"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES
*/
* section 1.. MS
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Summary and Conclusion profile."
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Stability Summary and Conclusion to be included under the 3.2.P.8.3 eCTD heading."
* section[DrugProduct].code = $SectionTypes#32P83 "Product Stability Data"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 2..2 MS
* section[DrugProduct].entry only Reference(StabilitySummary or RoutineDrugProduct)
* section[Api] ^definition = "Substance Stability Summary and Conclusion to be included under the 3.2.S.7.3 eCTD heading."
* section[Api].code = $SectionTypes#32S73 "Substance Stability Data"
* section[Api].title 1..1 MS
* section[Api].entry 2..2 MS
* section[Api].entry only Reference(StabilitySummary or RoutineSubstanceDefinition)