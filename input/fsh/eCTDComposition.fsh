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
* section[DrugProduct].entry only Reference(QualitySpecification)
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
Title: "eCTD Product Container Closure System Composition"
Description: "The fields needed to represent the Product Container Closure Systems to be included in the eCTD???  - what was the decsion?  p.7.0 or p.1.0"

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

Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32p10
Title: "eCTD Product Description and Composition "
Description: "The fields needed to represent the Product Description and Composition of the Drug Product to be included in the 3.2.P.1.0 folder of the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32P10 "Product Description and Composition of the Drug Product"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES 
*/
* section 1..* MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document."
* section contains ProductDescription 1..1 MS and ProductComposition 0..* MS 
* section[ProductDescription] ^definition = "Drug product description to be included in the 3.2.P.1.0 eCTD folder."
* section[ProductDescription].code = PqcmcCompSectionTypes#32P11
* section[ProductDescription].title = "Product Description"
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ProductComposition] ^definition = "Drug product components to be included in the 3.2.P.1.0 eCTD folder."
* section[ProductComposition].code = PqcmcCompSectionTypes#32P12
* section[ProductComposition].title = "Product Composition"
* section[ProductComposition].entry only Reference(DrugProductComponent)

Profile: EctdComposition32S60
Parent: Composition
Id: ectd-composition-32s60
Title: "eCTD Substance Container Closure System Composition"
Description: "The fields needed to represent the Substance Container Closure Systems to be included in the eCTD???  - what was the decsion?  p.7.0 or p.1.0"

* status = #final
* type = PqcmcCompSectionTypes#32S60 "Substance Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS 
* section ^definition = "Substance Container Closure System to be included in the 3.2.S.6.0 eCTD folder."
* section.code = PqcmcCompSectionTypes#32S60
* section.title = "Substance Container Closure System"
* section.entry only Reference(SubstanceContainerClosure)

Profile: EctdComposition32S10
Parent: Composition
Id: ectd-composition-32s10
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32S10 "Substance General Information"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES 
*/
* section 1..2 MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in this document."
* section contains SubstanceNomenclature 1..1 MS and SubstanceStructure 1..1 MS 
* section[SubstanceNomenclature] ^definition = "Substance Nomenclature to be included in the 3.2.S.1.0 eCTD folder."
* section[SubstanceNomenclature].code = PqcmcCompSectionTypes#32S11
* section[SubstanceNomenclature].title = "Substance Nomenclature"
* section[SubstanceNomenclature].entry only Reference(DrugSubstanceNomenclature)
* section[SubstanceStructure] ^definition = "Drug product components to be included in the 3.2.S.1.0 eCTD folder."
* section[SubstanceStructure].code = PqcmcCompSectionTypes#32S12
* section[SubstanceStructure].title = "Substance Structure"
* section[SubstanceStructure].entry only Reference(DrugSubstanceStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials Composition"
Description: "The fields needed to represent the Substance Control of Materialss in a to be included in the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32S23 "Substance Control of Materials"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS 
* section ^definition = "Substance Control of Materials to be included in the 3.2.S.2.3 eCTD folder."
* section.code = PqcmcCompSectionTypes#32S23
* section.title = "Substance Control of Materials"
* section.entry only Reference(DrugSubstanceMaterials)

Profile: EctdComposition32S30
Parent: Composition
Id: ectd-composition-32s30
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Structure and Impurities to be included in the 3.2.S.3.0 folder of the eCTD."

* status = #final
* type = PqcmcCompSectionTypes#32S30 "Substance Characterization"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/* 
	SECTION SLICES 
*/
* section 1..* MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document."
* section contains Structure 1..1 MS and Impurities 0..* MS 
* section[Structure] ^definition = "Substance Characterization to be included in the 3.2.S.3.0 eCTD folder."
* section[Structure].code = PqcmcCompSectionTypes#32S31
* section[Structure].title = "Substance Elucidation of Structure and other Characteristics"
* section[Structure].entry only Reference(DrugSubstanceStructure)
* section[Impurities] ^definition = "Drug Substance Impurities to be included in the 3.2.S.3.0 eCTD folder."
* section[Impurities].code = PqcmcCompSectionTypes#32S32
* section[Impurities].title = "Substance Impurities"
* section[Impurities].entry only Reference(DrugSubstanceImpurities)