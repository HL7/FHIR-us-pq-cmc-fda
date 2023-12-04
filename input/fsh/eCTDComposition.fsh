Profile: CMCeCTDDocument32P10
Parent: Bundle
Id: cmc-ectd-document-32p10
Title: "CMC eCTD 32P10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P10 profiles."

* . ^short = "CMC eCTD 32P10 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS

* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only EctdComposition32P10


Profile: CMCeCTDDocument32P32
Parent: Bundle
Id: cmc-ectd-document-32p32
Title: "CMC eCTD 32P32 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P32 profiles."

* . ^short = "CMC eCTD 32P32 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS

* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only  ectd-composition-32p32


Profile: CMCeCTDDocument32S10
Parent: Bundle
Id: cmc-ectd-document-32s10
Title: "CMC eCTD 32S10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S10 profiles."
* . ^short = "CMC eCTD 32S10 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only EctdComposition32S10
 
Profile: CMCeCTDDocument32S30
Parent: Bundle
Id: cmc-ectd-document-32s30
Title: "CMC eCTD 32S30 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S30 profiles."
* . ^short = "CMC eCTD 32S30 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS // each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterization document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..* and
    Organization 1..* and
    DocumentReference 0..*
* entry[Composition].resource only EctdComposition32S30
* entry[SubstanceDefinition].resource only DrugSubstance
* entry[Organization].resource only cmc-sponsor-organization
* entry[DocumentReference].resource only Base64DocumentReference

Profile: CMCeCTDDocument32S23
Parent: Bundle
Id: cmc-ectd-document-32s23
Title: "CMC eCTD 32S23 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S23 profiles."
* . ^short = "CMC eCTD 32S23 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS

* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only EctdComposition32S23

Profile: CMCeCTDDocument32P55
Parent: Bundle
Id: cmc-ectd-document-32p55
Title: "CMC eCTD 32P55 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P55 profile."
* . ^short = "CMC eCTD 32P55 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS

* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-32p55


Profile: CMCeCTDDocument32S60
Parent: Bundle
Id: cmc-ectd-document-32s60
Title: "CMC eCTD 32S60 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S60 profiles."
* . ^short = "CMC eCTD 32S60 Bundle"

* . obeys cmc-identifer
* meta.profile 1..1 MS
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Drug Substance Container Closure System document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..1 and
    Organization 1..1
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S60
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only pqcmc-drug-substance-container-closure
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization

Profile: CMCeCTDDocument32P70
Parent: Bundle
Id: cmc-ectd-document-32p70
Title: "CMC eCTD 32P70 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P70 profiles."
* . ^short = "CMC eCTD 32P70 Bundle"

* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Container Closure System document.  Note this bundle and associated profiles is expected to change substantialy in the future."
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    Organization 1..1
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32P70
* entry[MedicinalProductDefinition].fullUrl MS
* entry[MedicinalProductDefinition].resource MS
* entry[MedicinalProductDefinition].resource only pqcmc-drugproduct-container-closure
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only cmc-sponsor-organization

Profile: CMCeCTDDocumentSP4151
Parent: Bundle
Id: cmc-ectd-document-sp4151
Title: "CMC eCTD SP4151 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4151 profiles."
* . ^short = "CMC eCTD SP4151 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-sp4151

Profile: CMCeCTDDocumentSP4454
Parent: Bundle
Id: cmc-ectd-document-sp4454
Title: "CMC eCTD SP4454 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4454 profiles."
* . ^short = "CMC eCTD SP4454 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-sp4454

Profile: CMCeCTDDocumentSP7383
Parent: Bundle
Id: cmc-ectd-document-sp7383
Title: "CMC eCTD SP7383 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7383 profiles."
* . ^short = "CMC eCTD SP7383 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS

* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-sp7383

Profile: CMCeCTDDocumentSP7181
Parent: Bundle
Id: cmc-ectd-document-sp7181
Title: "CMC eCTD SP7181 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7181 profiles."
* . ^short = "CMC eCTD SP7181 Bundle"
* . obeys cmc-identifer
* meta.profile 1..1 MS  
* meta.profile.extension contains pq-ig-version named version 1..1 MS
* identifier 1..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-sp7181

/*Compositions---------------------------------------------------------------------------------------*/

Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification Composition"
Description: "The fields needed to represent the Quality Specifications to be included under the eCTD 3.2.P.5.1, 3.2.S.4.1, and 3.2.P.4.1 headings.. References Sponsor Organization and Quality Specification."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#SP4151 "Quality Specification"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS

* section 1..1 MS
* section.code 1..1 MS
* section.code from CmcCompSectionTypesVS (required)
* section.title 1..1 MS
/*
    SECTION SLICESProduct
*/
* section.entry MS

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "There is only one section in the profile. The slice the code must correpond to the subject of the Quality Specification profile: RoutineDrugProduct or Routine Api or Excipient"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS and
    Excipient 0..1 MS
* section[DrugProduct] ^definition = "Product Specification to be included under the 3.2.P.5.1 eCTD heading."
* section[DrugProduct].code = $SectionTypes#32P51 "Product Specification"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(QualitySpecification)
* section[Api] ^definition = "Drug Substance Specification to be included under the 3.2.S.4.1 eCTD heading."
* section[Api].code = $SectionTypes#32S41 "Substance Specification"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(QualitySpecification)
* section[Excipient] ^definition = "Excipient Specification to be included under the 3.2.P.4.1 eCTD heading."
* section[Excipient].code = $SectionTypes#32P41 "Excipients Specification"
* section[Excipient].title 1..1 MS
* section[Excipient].entry 1..1 MS
* section[Excipient].entry only Reference(QualitySpecification)
// need check that Specification type in instance matches the seciton selected.

Profile: EctdCompositionSP7383
Parent: Composition
Id: ectd-composition-sp7383
Title: "eCTD Stability Data Composition"
Description: "The fields needed to represent the Stability Data to be included under the 3.2.P.8.3 , 3.2.S.7.3 and 3.2.P.4.5 eCTD headings. References Sponsor Organization and Stability Study."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#SP7383 "Stability Data"
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
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Data profile: RoutineDrugProduct or Routine Api"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Stability Data to be included under the 3.2.P.8.3 eCTD heading."
* section[DrugProduct].code = $SectionTypes#32P83 "Product Stability Data"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(StabilityStudy)
* section[Api] ^definition = "Drug Substance Stability Data to be included under the 3.2.S.7.3 eCTD heading."
* section[Api].code = $SectionTypes#32S73 "Substance Stability Data"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(StabilityStudy)
// need check that subject type in instance matches the seciton selected.

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
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.

Profile: EctdComposition32P32
Parent: Composition
Id: ectd-composition-32p32
Title: "eCTD Batch Formula"
Description: "The fields needed to represent the Product Batch Formula to be included under the eCTD.  References Sponsor Organization and Batch Formula"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P32 "Product Batch Formula"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS
* section ^definition = "Product Batch Formula to be included under the 3.2.P.3.2 eCTD heading."
* section.code = $SectionTypes#32P32 "Product Batch Formula"
* section.title 1..1 MS
* section.entry only Reference(BatchFormulaMedicinalProduct)

Profile: EctdComposition32P55
Parent: Composition
Id: ectd-composition-32p55
Title: "eCTD Product Characterization of Impurities Composition"
Description: "The fields needed to represent the Product Characterization of Impurities in a to be included under the eCTD.  References Sponsor Organization and Product Characterization of Impurities"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P55 "Product Characterization of Impurities"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS
* section ^definition = "Product Characterization of Impurities to be included under the 3.2.P.5.5 eCTD heading."
* section.code = $SectionTypes#32P55 "Product Characterization of Impurities"
* section.title 1..1 MS
* section.entry only Reference(DrugProductwithImpurities)

Profile: EctdComposition32P70
Parent: Composition
Id: ectd-composition-32p70
Title: "eCTD Product Container Closure System Composition"
Description: "The fields needed to represent the Product Container Closure Systems to be included under the eCTD p.7.0"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P70 "Product Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS
* section ^definition = "Product Container Closure System to be included under the 3.2.P.7.0 eCTD heading."
* section.code = $SectionTypes#32P70 "Product Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(DrugProductContainerClosure)

Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32p10
Title: "eCTD Product Description and Composition"
Description: "The fields needed to represent the Product Description, Container Closure and Composition of the Drug Product to be included under the 3.2.P.1.0 heading of the eCTD. References Sponsor Organization, Drug Product Description, and Product Container Closure System."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P10 "Product Description and Composition of the Drug Product"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
* section 3..3 MS
* section.code 1..1 MS
* section.code from CmcCompSectionTypesVS (required)
* section.title 1..1 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the ectd document sections."
* section contains ProductDescription 1..1 MS and ContainerClosure 1..1 MS and ProductComposition 1..1 MS
* section[ProductDescription] ^definition = "Drug product description to be included under the 3.2.P.1.0 eCTD heading."
* section[ProductDescription].code = $SectionTypes#32P11 "Product Description"
* section[ProductDescription].entry 1..1 MS
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ContainerClosure] ^definition = "Product Container Closure Description to be included under the 3.2.P.1.0 eCTD heading."
* section[ContainerClosure].code = $SectionTypes#32P13 "Product Container Closure Description"
* section[ContainerClosure].entry 1..1 MS
* section[ContainerClosure].entry only Reference(DrugProductContainerClosure)
* section[ProductComposition] ^definition = "Drug product components to be included under the 3.2.P.1.0 eCTD heading."
* section[ProductComposition].code = $SectionTypes#32P12 "Product Composition"
* section[ProductComposition].entry 1..* MS
* section[ProductComposition].entry only Reference(FinishedProduct)

Profile: EctdComposition32S60
Parent: Composition
Id: ectd-composition-32s60
Title: "eCTD Substance Container Closure System Composition"
Description: "The fields needed to represent the Substance Container Closure Systems to be included under the eCTD 3.2.S.6.0 eCTD heading. References Sponsor Organization and Substance Container Closure"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S60 "Substance Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS
* section ^definition = "Substance Container Closure System to be included under the 3.2.S.6.0 eCTD heading."
* section.code = $SectionTypes#32S60 "Substance Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(SubstanceContainerClosure)

Profile: EctdComposition32S10
Parent: Composition
Id: ectd-composition-32s10
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included under the 3.2.S.1.0 heading of the eCTD. References Sponsor Organization."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S10 "Substance General Information"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES
*/
* section 2..2 MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the ectd document sections."
* section contains SubstanceNomenclature 1..1 MS and SubstanceStructure 1..1 MS
* section[SubstanceNomenclature] ^definition = "Substance Nomenclature to be included under the 3.2.S.1.0 eCTD heading."
* section[SubstanceNomenclature].code = $SectionTypes#32S11 "Substance Nomenclature"
* section[SubstanceNomenclature].title 1..1 MS
* section[SubstanceNomenclature].entry 1..1 MS
* section[SubstanceNomenclature].entry only Reference(DrugSubstanceNomenclature)
* section[SubstanceStructure] ^definition = "Substance raw materials to be included under the 3.2.S.1.0 eCTD heading."
* section[SubstanceStructure].code = $SectionTypes#32S12 "Substance Structure"
* section[SubstanceStructure].title 1..1 MS
* section[SubstanceStructure].entry 1..1 MS
* section[SubstanceStructure].entry only Reference(DrugSubstanceMolecularStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials Composition"
Description: "The fields needed to represent the Substance Control of Materials in a to be included under the eCTD. References Sponsor Organization and Drug Substance Materials."

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S23 "Substance Control of Materials"
* author 1..1 MS
* author only Reference(SponsorOrganization)
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..* MS
* section.entry MS
* section ^definition = "Substance Control of Materials to be included under the 3.2.S.2.3 eCTD heading."
* section.code = $SectionTypes#32S23 "Substance Control of Materials"
* section.entry 1..* MS
* section.entry only Reference(QualitySpecification)

Profile: EctdComposition32S30
Parent: Composition
Id: ectd-composition-32s30
Title: "eCTD Substance Characterization"
Description: "The fields needed to represent the Substance Structure and Impurities to be included under the 3.2.S.3.0 heading of the eCTD. References Sponsor Organization, Drug Substance Structure, and Drug Substance Impurities"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S30 "Substance Characterization"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS

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
* section[Structure] ^definition = "Substance Characterization to be included under the 3.2.S.3.0 eCTD heading."
* section[Structure].code = $SectionTypes#32S31 "Substance Elucidation of Structure and other Characteristics"
* section[Structure].title 1..1 MS
* section[Structure].entry 1..1 MS
* section[Structure].entry only Reference(DrugSubstance)

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