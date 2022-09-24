
Profile: CMCeCTDDocument32p10
Parent: Bundle
Id: cmc-ectd-document-32p10
Title: "CMC eCTD 32p10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32p10 profiles."
* . ^short = "CMC eCTD 32p10 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
//* entry.fullUrl 1..
//* entry.fullUrl obeys cmc-ectd-doc-1
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    MedicinalProductContainer 1..1 and
    Ingredient 1..* and
    SubstanceDefinition 1..* and
    Organization 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl 1..1
* entry[Composition].resource 1..1
* entry[Composition].resource only ectd-composition-32p10
* entry[MedicinalProductDefinition].fullUrl 1..1
* entry[MedicinalProductDefinition].resource 1..1
* entry[MedicinalProductDefinition].resource only pqcmc-drug-product-description
* entry[MedicinalProductContainer].fullUrl 1..1
* entry[MedicinalProductContainer].resource 1..1
* entry[MedicinalProductContainer].resource only  pqcmc-druproduct-container-closure
* entry[Ingredient].fullUrl 1..1
* entry[Ingredient].resource 1..1
* entry[Ingredient].resource only pqcmc-Component
* entry[SubstanceDefinition].fullUrl 1..1
* entry[SubstanceDefinition].resource 1..1
* entry[SubstanceDefinition].resource only pqcmc-ComponentSubstance
* entry[Organization].fullUrl 1..1
* entry[Organization].resource 1..1
* entry[Organization].resource only mfg-test-site-organization or cmc-sponsor-organization
* entry[DocumentReference].fullUrl 1..1
* entry[DocumentReference].resource 1..1
* entry[DocumentReference].resource only Base64DocumentReference

Profile: CMCeCTDDocument32P32
Parent: Bundle
Id: cmc-ectd-document-32P32
Title: "CMC eCTD 32P32 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P32 profiles."
* . ^short = "CMC eCTD 32P32 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS
* entry
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Batch Formula document."
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    Organization 1..* and
    ActivityDefinition 1..* and
    Ingredient 1..* and
    SubstanceDefinition 1..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32P32
* entry[MedicinalProductDefinition].fullUrl MS
* entry[MedicinalProductDefinition].resource MS
* entry[MedicinalProductDefinition].resource only BatchFormula
* entry[Organization].fullUrl MS
* entry[Organization].resource MS
* entry[Organization].resource only mfg-test-site-organization or cmc-sponsor-organization
* entry[ActivityDefinition].fullUrl MS
* entry[ActivityDefinition].resource MS
* entry[ActivityDefinition].resource only BatchIngredientReference
* entry[Ingredient].fullUrl MS
* entry[Ingredient].resource MS
* entry[Ingredient].resource only DrugProductIngredient
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only RoutineSubstanceDefinition

Profile: CMCeCTDDocument32S10
Parent: Bundle
Id: cmc-ectd-document-32S10
Title: "CMC eCTD 32S10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S10 profiles."
* . ^short = "CMC eCTD 32S10 Bundle"
* . obeys cmc-first-resource
* identifier 0..1 MS
* type MS
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..1 MS

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Product Description and Composition document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..* and
    Organization 1..* and
    DocumentReference 0..*
* entry[Composition].fullUrl MS
* entry[Composition].resource MS
* entry[Composition].resource only EctdComposition32S10
* entry[SubstanceDefinition].fullUrl MS
* entry[SubstanceDefinition].resource MS
* entry[SubstanceDefinition].resource only DrugSubstanceNomenclature or DrugSubstanceRepresentationalStructure or PolymorphicForm
* entry[Organization].fullUrl  MS
* entry[Organization].resource  MS
* entry[Organization].resource only cmc-sponsor-organization
* entry[DocumentReference].fullUrl MS
* entry[DocumentReference].resource MS
* entry[DocumentReference].resource only cmc-document-reference

Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification Composition"
Description: "The fields needed to represent the Quality Specifications to be included in the eCTD 3.2.P.5.1, 3.2.S.4.1, and 3.2.P.4.1 folders.. References Sponsor Organization and Quality Specification."

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#SP4151 "Quality Specification"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES
*/
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "There is only one section in the profile. The slice the code must correpond to the subject of the Quality Specification profile: RoutineDrugProduct or Routine Api or Excipient"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS and
    Excipient 0..1 MS
* section[DrugProduct] ^definition = "Product Specification to be included in the 3.2.P.5.1 eCTD folder."
* section[DrugProduct].code = pqcmc-comp-section-types#32P51 "Product Specification"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(QualitySpecification)
* section[Api] ^definition = "Drug Substance Specification to be included in the 3.2.S.4.1 eCTD folder."
* section[Api].code = pqcmc-comp-section-types#32S41 "Substance Specification"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(QualitySpecification)
* section[Excipient] ^definition = "Excipient Specification to be included in the 3.2.P.4.1 eCTD folder."
* section[Excipient].code = pqcmc-comp-section-types#32P41 "Excipients Specification"
* section[Excipient].title 1..1 MS
* section[Excipient].entry 1..1 MS
* section[Excipient].entry only Reference(QualitySpecification)
// need check that Specification type in instance matches the seciton selected.

Profile: EctdCompositionSP7383
Parent: Composition
Id: ectd-composition-sp7383
Title: "eCTD Stability Data Composition"
Description: "The fields needed to represent the Stability Data to be included in the 3.2.P.8.3 , 3.2.S.7.3 and 3.2.P.4.5 eCTD folders. References Sponsor Organization and Stability Study."

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#SP7383 "Stability Data"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES
*/
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document. The code must correpond to the subject of the Stability Data profile: RoutineDrugProduct or Routine Api"
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Stability Data to be included in the 3.2.P.8.3 eCTD folder."
* section[DrugProduct].code = pqcmc-comp-section-types#32P83 "Product Stability Data"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(StabilityStudy)
* section[Api] ^definition = "Drug Substance Stability Data to be included in the 3.2.S.7.3 eCTD folder."
* section[Api].code = pqcmc-comp-section-types#32S73 "Substance Stability Data"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(StabilityStudy)
// need check that subject type in instance matches the seciton selected.

Profile: EctdCompositionSP4454
Parent: Composition
Id: ectd-composition-sp4454
Title: "eCTD Batch Analyses Composition"
Description: "The fields needed to represent the Batch Analyses to be included in the 3.2.P.5.4 and 3.2.S.4.4 eCTD folders.  References Sponsor Organization and Batch Analysis"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#SP4454 "Batch Analyses"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES
*/
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.
* section 1.. MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the different sections that are needed in the ectd document. The code must correpond to the subject of the Batch Analyses profile: RoutineDrugProduct or Routine Api."
* section contains
    DrugProduct 0..1 MS and
    Api 0..1 MS
* section[DrugProduct] ^definition = "Product Batch Analyses to be included in the 3.2.P.5.4 eCTD folder."
* section[DrugProduct].code = pqcmc-comp-section-types#32P51 "Product Specifications"
* section[DrugProduct].title 1..1 MS
* section[DrugProduct].entry 1..1 MS
* section[DrugProduct].entry only Reference(BatchAnalysis)
* section[Api] ^definition = "Substance Batch Analyses to be included in the 3.2.S.4.4 eCTD folder."
* section[Api].code = pqcmc-comp-section-types#32S41 "Substance Specification"
* section[Api].title 1..1 MS
* section[Api].entry 1..1 MS
* section[Api].entry only Reference(BatchAnalysis)
// need check that subject only Reference(DrugProductInstance or DrugSubstanceInstance) matches section selected.

Profile: EctdComposition32P32
Parent: Composition
Id: ectd-composition-32p32
Title: "eCTD Batch Formula"
Description: "The fields needed to represent the Product Batch Formula to be included in the eCTD.   References Sponsor Organization and Batch Formula"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32P32 "Product Batch Formula"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
* title obeys cmc-ectd-doc-2
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Batch Formula to be included in the 3.2.P.3.2 eCTD folder."
* section.code = pqcmc-comp-section-types#32P32 "Product Batch Formula"
* section.title 1..1 MS
* section.entry only Reference(BatchFormula)

Profile: EctdComposition32P55
Parent: Composition
Id: ectd-composition-32p55
Title: "eCTD Product Characterization of Impurities Composition"
Description: "The fields needed to represent the Product Characterization of Impurities in a to be included in the eCTD.   References Sponsor Organization and Product Characterization of Impurities"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32P55 "Product Characterization of Impurities"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Characterization of Impurities to be included in the 3.2.P.5.5 eCTD folder."
* section.code = pqcmc-comp-section-types#32P55 "Product Characterization of Impurities"
* section.title 1..1 MS
* section.entry only Reference(DrugProductwithImpurites)

Profile: EctdComposition32P70
Parent: Composition
Id: ectd-composition-32p70
Title: "eCTD Product Container Closure System Composition"
Description: "The fields needed to represent the Product Container Closure Systems to be included in the eCTD p.7.0"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32P70 "Product Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Product Container Closure System to be included in the 3.2.P.7.0 eCTD folder."
* section.code = pqcmc-comp-section-types#32P70 "Product Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(DrugProductContainerClosure)

Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32p10
Title: "eCTD Product Description and Composition"
Description: "The fields needed to represent the Product Description, Container Closure and Composition of the Drug Product to be included in the 3.2.P.1.0 folder of the eCTD. References Sponsor Organization, Drug Product Description, and Product Container Closure System."

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32P10 "Product Description and Composition of the Drug Product"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
* title obeys cmc-ectd-doc-2
* identifier 0..1 MS
* section obeys cmc-ectd-doc-2
* section 3..3 MS
* section.code 1..1 MS
* section.code from cmc-comp-section-types-vs (required)
* section.title 1..1 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the ectd document sections."
* section contains ProductDescription 1..1 MS and ContainerClosure 1..1 MS and ProductComposition 1..1 MS
* section[ProductDescription] ^definition = "Drug product description to be included in the 3.2.P.1.0 eCTD folder."
* section[ProductDescription].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ProductDescription].entry 1..1 MS
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ContainerClosure] ^definition = "Product Container Closure System to be included in the 3.2.P.1.0 eCTD folder."
* section[ContainerClosure].code = pqcmc-comp-section-types#32P11 "Product Description"
* section[ContainerClosure].entry 1..1 MS
* section[ContainerClosure].entry only Reference(DrugProductContainerClosure)
* section[ProductComposition] ^definition = "Drug product components to be included in the 3.2.P.1.0 eCTD folder."
* section[ProductComposition].code = pqcmc-comp-section-types#32P12 "Product Composition"
* section[ProductComposition].entry 1..* MS
* section[ProductComposition].entry only Reference(DrugProductComponent)

Profile: EctdComposition32S60
Parent: Composition
Id: ectd-composition-32s60
Title: "eCTD Substance Container Closure System Composition"
Description: "The fields needed to represent the Substance Container Closure Systems to be included in the eCTD 3.2.S.6.0 eCTD folder. References Sponsor Organization and Substance Container Closure"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32S60 "Substance Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Substance Container Closure System to be included in the 3.2.S.6.0 eCTD folder."
* section.code = pqcmc-comp-section-types#32S60 "Substance Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(SubstanceContainerClosure)

Profile: EctdComposition32S10
Parent: Composition
Id: ectd-composition-32s10
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included in the 3.2.S.1.0 folder of the eCTD. References Sponsor Organization."

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32S10 "Substance General Information"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES
*/
* section 1..2 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "resource"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in this document."
* section contains SubstanceNomenclature 1..1 MS and SubstanceStructure 1..1 MS
* section[SubstanceNomenclature] ^definition = "Substance Nomenclature to be included in the 3.2.S.1.0 eCTD folder."
* section[SubstanceNomenclature].code = pqcmc-comp-section-types#32S11 "Substance Nomenclature"
* section[SubstanceNomenclature].title 1..1 MS
* section[SubstanceNomenclature].title obeys cmc-ectd-doc-2
* section[SubstanceNomenclature].entry 1..1 MS
* section[SubstanceNomenclature].entry only Reference(DrugSubstanceNomenclature)
* section[SubstanceStructure] ^definition = "Substance raw materials to be included in the 3.2.S.1.0 eCTD folder."
* section[SubstanceStructure].code = pqcmc-comp-section-types#32S12 "Substance Structure"
* section[SubstanceStructure].title 1..1 MS
* section[SubstanceStructure].title obeys cmc-ectd-doc-2
* section[SubstanceStructure].entry 1..1 MS
* section[SubstanceStructure].entry only Reference(DrugSubstanceRepresentationalStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials Composition"
Description: "The fields needed to represent the Substance Control of Materials in a to be included in the eCTD. References Sponsor Organization and Drug Substance Materials."

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32S23 "Substance Control of Materials"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section obeys cmc-ectd-doc-2
* section.entry MS
* section ^definition = "Substance Control of Materials to be included in the 3.2.S.2.3 eCTD folder."
* section.code = pqcmc-comp-section-types#32S23 "Substance Control of Materials"
* section.title 1..1 MS
* section.entry only Reference(DrugSubstanceMaterials)

Profile: EctdComposition32S30
Parent: Composition
Id: ectd-composition-32s30
Title: "eCTD Substance Characterization"
Description: "The fields needed to represent the Substance Structure and Impurities to be included in the 3.2.S.3.0 folder of the eCTD. References Sponsor Organization, Drug Substance Structure, and Drug Substance Impurities"

* status = #final
* identifier 0..1 MS
* type =  pqcmc-comp-section-types#32S30 "Substance Characterization"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title  1..1 MS
/*
    SECTION SLICES
*/
* section 1..* MS
* section.entry MS
* section obeys cmc-ectd-doc-2
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document."
* section contains Structure 1..1 MS and Impurities 0..* MS
* section[Structure] ^definition = "Substance Characterization to be included in the 3.2.S.3.0 eCTD folder."
* section[Structure].code = pqcmc-comp-section-types#32S31 "Substance Elucidation of Structure and other Characteristics"
* section[Structure].title 1..1 MS
* section[Structure].entry  1..1 MS
* section[Structure].entry only Reference(DrugSubstanceStructure)
* section[Impurities] ^definition = "Drug Substance Impurities to be included in the 3.2.S.3.0 eCTD folder."
* section[Impurities].code = pqcmc-comp-section-types#32S32 "Substance Impurities"
* section[Impurities].title 1..1 MS
* section[Impurities].entry  1..1 MS
* section[Impurities].entry only Reference(DrugSubstanceImpurities)

Invariant: cmc-identifer
Description: "A document must have an identifier with a system and a value"
Expression: "type = 'document' implies (identifier.system.exists() and identifier.value.exists()) "
Severity: #error

Invariant: cmc-date
Description: "A document must have a date"
Expression: "type = 'document' implies (timestamp.hasValue())"
Severity: #error

Invariant: cmc-first-resource
Description: "A document must have a Composition as the first resource"
Expression: "type = 'document' implies entry.first().resource.is(Composition)"
Severity: #error

Invariant: cmc-ectd-doc-1
Description: "The fullUrl must be an  URI for UUID/OID"
Severity: #error
Expression: "$this.is(FHIR.oid) = true"   //of urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}

Invariant: cmc-ectd-doc-2
Description: "The title must start with the PQCMC Comp Section Type display value"
Expression: "title.value.startsWith(type.coding.display) = true"
Severity: #error

