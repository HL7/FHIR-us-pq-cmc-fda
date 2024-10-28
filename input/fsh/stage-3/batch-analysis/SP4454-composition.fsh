Profile: EctdCompositionSP4454
Parent: Composition
Id: ectd-composition-sp4454
Title: "eCTD Batch Analyses Composition"
Description: "The fields needed to represent the Batch Analyses to be included under the 3.2.P.5.4 and 3.2.S.4.4 eCTD headings.  References Sponsor Organization and Batch Analysis"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#SP4454 "Batch Analyses"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES
*/
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.
* section 1.. MS
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in the ectd document. The code must correpond to the subject of the Batch Analyses profile."
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Batch Analyses to be included under the 3.2.P.5.4 eCTD heading."
* section[DrugProduct].code = $SectionTypes#32P54 "Product Batch Analyses"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(BatchAnalysis)
* section[Api] ^definition = "Substance Batch Analyses to be included under the 3.2.S.4.4 eCTD heading."
* section[Api].code = $SectionTypes#32S44 "Substance Batch Analyses"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(BatchAnalysis)