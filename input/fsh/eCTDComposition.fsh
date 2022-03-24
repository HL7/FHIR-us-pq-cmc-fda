Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification Composition"
Description: "The fields needed to represent the Quality Specifications to be included in the  eCTD."

* status = #final
* type = PqcmcCompSectionTypes#SP4151 "Quality Specification"  
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES 
*/
* section 1..1 MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Quality Specification profile: RoutineDrugProduct or Routine Api or Excipient"
* section contains DrugProduct 0..1 MS and Api 0..1 MS and Excipient 0..1 MS 
* section[DrugProduct] ^definition = "Product Specification to be included in the 3.2.P.5.1 eCTD folder."
* section[DrugProduct].code = PqcmcCompSectionTypes#32P51
* section[DrugProduct].title = "Drug Product Quality Specification"
* section.entry only Reference(QualitySpecification)
* section[Api] ^definition = "Drug Substance Specification to be included in the 3.2.S.4.1 eCTD folder."
* section[Api].code = PqcmcCompSectionTypes#32S41
* section[Api].title = "Drug Substance Quality Specification"
* section[Api].entry only Reference(QualitySpecification)
* section[Excipient] ^definition = "Excipient Specification to be included in the 3.2.P.4.1 eCTD folder."
* section[Excipient].code = PqcmcCompSectionTypes#32P41
* section[Excipient].title = "Excipient Quality Specification"
* section[Excipient].entry only Reference(QualitySpecification)
// need check that Specification type in instance matches the seciton selected.

Profile: EctdCompositionSP4454
Parent: Composition
Id: ectd-composition-sp4454
Title: "eCTD Batch Analyses Composition"
Description: "The fields needed to represent the Batch Analyses to be included in the  eCTD."

* status = #final
* type = PqcmcCompSectionTypes#SP4454 "Batch Analyses" 
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES 
*/
* section 1..1 MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Batch Analyses profile: RoutineDrugProduct or Routine Api."
* section contains DrugProduct 0..1 MS and Api 0..1 MS 
* section[DrugProduct] ^definition = "Product Batch Analyses to be included in the 3.2.P.5.4 eCTD folder."
* section[DrugProduct].code = PqcmcCompSectionTypes#32P51
* section[DrugProduct].title = "Product Batch Analyses"
* section[DrugProduct].entry only Reference(BatchAnalysis)
* section[Api] ^definition = "Substance Batch Analyses to be included in the 3.2.S.4.4 eCTD folder."
* section[Api].code = PqcmcCompSectionTypes#32S41
* section[Api].title = "Substance Batch Analyses"
* section[Api].entry only Reference(BatchAnalysis)
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance)	matches section selected.

Profile: EctdComposition32P32
Parent: Composition
Id: ectd-composition-32p32
Title: "eCTD Batch Formula Composition"
Description: "The fields needed to represent the Product Batch Formula to be included in the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32P32 "Product Batch Formula" 
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS 
* section ^definition = "Product Batch Formula to be included in the 3.2.P.3.2 eCTD folder."
* section.code = PqcmcCompSectionTypes#32P32
* section.title = "Product Batch Formula"
* section.entry only Reference(BatchFormula)

Profile: EctdComposition32P55
Parent: Composition
Id: ectd-composition-32p55
Title: "eCTD Product Characterization of Impurities Composition"
Description: "The fields needed to represent the Product Characterization of Impurities in a to be included in the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32P55 "Product Characterization of Impurities"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS 
* section ^definition = "Product Characterization of Impurities to be included in the 3.2.P.5.5 eCTD folder."
* section.code = PqcmcCompSectionTypes#32P55
* section.title = "Product Characterization of Impurities"
* section.entry only Reference(DrugProductwithImpurites)

Profile: EctdComposition32P70
Parent: Composition
Id: ectd-composition-32p70
Title: "eCTD Product Container Closure SystemComposition"
Description: "The fields needed to represent the Product Characterization of Impurities in a to be included in the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32P70 "Product Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS 
* section ^definition = "Product Container Closure System to be included in the 3.2.P.7.0 eCTD folder."
* section.code = PqcmcCompSectionTypes#32P70
* section.title = "Product Container Closure System"
* section.entry only Reference(DrugProductContainerClosure)