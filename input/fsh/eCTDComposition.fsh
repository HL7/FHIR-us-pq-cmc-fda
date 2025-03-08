Profile: CMCeCTDDocument32P10
Parent: Bundle
Id: cmc-ectd-document-32p10
Title: "CMC eCTD 32P10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P1 profiles."

* . ^short = "CMC eCTD 32P1 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterisation document."
* entry contains
    Composition 1..1 and
    FinishedProduct 1..1 and
    DrugProduct 1..* and
    ContainerClosure 1..* and
    Organization 0..* and
    DrugProductComponent 0..* and
    ComponentSubstance 0..* and
    GraphicsFile 0..* and
    StructureFile 0..* 
* entry[Composition].resource only EctdComposition32P10
* entry[FinishedProduct].resource only FinishedProduct
* entry[DrugProduct].resource only DrugProductDescription or DrugProductHandle
* entry[ContainerClosure].resource only ContainerClosure
* entry[Organization].resource only CodedOrganization
* entry[DrugProductComponent].resource only DrugProductComponent
* entry[ComponentSubstance].resource only ComponentSubstance
* entry[GraphicsFile].resource only GraphicReference
* entry[StructureFile].resource only StructureReference

// If you want to avoid warnings, you can list the other types of allowed resources too.
// No need to indicate that composition is the first, as that's already enforced by a base invariant on Bundles of type 'document'

Profile: CMCeCTDDocument32S10
Parent: Bundle
Id: cmc-ectd-document-32s10
Title: "CMC eCTD 32S10 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S1 profiles."
* . ^short = "CMC eCTD 32S1 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #closed
  * ^slicing.description = ""
  * ^slicing.ordered = false
* entry contains
  Composition 1..1 and
  Organization 0..* and
  StructureDefinition 1..* and
  GraphicsFiles 0..* and
  StructureFiles 0..*
* entry[Composition].resource only EctdComposition32S10
* entry[Organization].resource only CodedOrganization
// The intersection of all possible DrugSubstanceNomenclatureStructures and
// all possible PolymorphicForms is not an empty set -- you could contrive a 
// Resource that satisfies both simultaneously so they can't go in separate
// slices
* entry[StructureDefinition].resource only DrugSubstanceNomenclatureStructure or PolymorphicForm
* entry[GraphicsFiles].resource only GraphicReference
* entry[StructureFiles].resource only StructureReference

Profile: CMCeCTDDocument32S23
Parent: Bundle
Id: cmc-ectd-document-32s23
Title: "CMC eCTD 32S23 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S23 profiles."
* . ^short = "CMC eCTD 32S23 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterisation document."
* entry contains
    Composition 1..1 and
    RoutineSubstance 1..* and // there must be at least one subject
    Organization 1..* and
    Excipient 0..* and
    RoutineProduct 0..* and
    Specification 1..*
* entry[Composition].resource only EctdComposition32S23
* entry[Organization].resource only CodedOrganization
// The intersection of all possible routine substances
// and raw excipients is an empty set so they can go
// in different slices
* entry[RoutineSubstance].resource only SubstanceDefinitionHandle
* entry[Excipient].resource only ExcipientRaw
* entry[RoutineProduct].resource only DrugProductHandle
* entry[Specification].resource only QualitySpecification

Profile: CMCeCTDDocumentSP4151
Parent: Bundle
Id: cmc-ectd-document-sp4151
Title: "CMC eCTD SP4151 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4151 profiles."
* . ^short = "CMC eCTD SP4151 Bundle"

* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterisation document."
* entry contains
  Composition 1..1 and
  Organization 1..* and
  Specification 1..1 and
  RoutineSubstance 0..1 and
  RoutineProduct 0..1 and
  ExcipientRaw 0..1
* entry[Composition].resource only EctdCompositionSP4151
* entry[Organization].resource only CodedOrganization
* entry[Specification].resource only QualitySpecification
* entry[RoutineSubstance].resource only SubstanceDefinitionHandle
* entry[RoutineProduct].resource only DrugProductHandle
* entry[ExcipientRaw].resource only ExcipientRaw




/*Bundles Stage 2-------------------------------------------------------------------------------------------*/

Profile: CMCeCTDDocument32S3
Parent: Bundle
Id: cmc-ectd-document-32s3
Title: "CMC eCTD 32S3 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S3 profiles."
* . ^short = "CMC eCTD 32S3 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS // each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for a Substance Characterisation document."
* entry contains
    Composition 1..1 and
    Characterisation 1..1 and
    Organization 1..* and
    Impurity 0..* and
    GraphicsFile 0..* and
    StructureFile 0..*
* entry[Composition].resource only EctdComposition32S3
* entry[Characterisation].resource only DrugSubstanceCharacterisation
* entry[Organization].resource only CodedOrganization
* entry[Impurity].resource only ImpuritySubstance
* entry[GraphicsFile].resource only GraphicReference
* entry[StructureFile].resource only StructureReference


Profile: CMCeCTDDocument32P32
Parent: Bundle
Id: cmc-ectd-document-32p32
Title: "CMC eCTD 32P32 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P32 profiles (Product Batch Formula)."

* . ^short = "CMC eCTD 32P32 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1 and
    Organization 1..* and
    BatchFormulaMedicinalProduct 1..1 and
    BatchFormula 1..* and
    Ingredient 0..* and
    RoutineSubstance 0..* and
    ExcipientRaw 0..*
* entry[Composition].resource only EctdComposition32P32
* entry[Organization].resource only CodedOrganization
* entry[BatchFormulaMedicinalProduct].resource only BatchFormulaMedicinalProduct
* entry[BatchFormula].resource only BatchFormula
* entry[Ingredient].resource only DrugProductIngredient
* entry[RoutineSubstance].resource only SubstanceDefinitionHandle
* entry[ExcipientRaw].resource only ExcipientRaw

Profile: CMCeCTDDocument32P55
Parent: Bundle
Id: cmc-ectd-document-32p55
Title: "CMC eCTD 32P55 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P55 profile (Product Characterisation of Impurities)."
* . ^short = "CMC eCTD 32P55 Bundle"
* identifier MS
* identifier ^definition = "Designation by the author."
* type MS
* type = #document
* type ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS //each entry must have a fullUrl
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Composition 1..1 and
    Organization 1..1 and
    DrugProduct 1..1 and
    Impurity 0..* and
    GraphicsFile 0..* and
    StructureFile 0..*
* entry[Composition].resource only EctdComposition32P55
* entry[Organization].resource only CodedOrganization
* entry[DrugProduct].resource only DrugProductwithImpurities
* entry[Impurity].resource only ImpuritySubstance
* entry[GraphicsFile].resource only GraphicReference
* entry[StructureFile].resource only StructureReference

/*Compositions Stage 1--------------------------------------------------------------------------------------*/

Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification"
Description: "The fields needed to represent Quality Specifications for APIs, Drug Substances, Excipients and Raw Materials."

* status = #final
* identifier 0..1 MS
* type 1..1 MS 
// !!!generates errors while ich codes are not in any codesystem
// on a terminology server. once it is, uncomment this line.
// you could maybe get the same effect by slicing
//* type from PqcmcQualitySpecificationSectionTypes (required)
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
* section 1..1 MS
* section.title 1..1 MS
* section.entry MS
* insert PQReference(section.entry)
* section.entry only Reference(QualitySpecification)


Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32p10
Title: "eCTD Product Description and Composition"
Description: "The fields needed to represent the Product Description, Container Closure and Composition of the Drug Product to be included under the 3.2.P.1 heading of the eCTD. References Sponsor Organization, Drug Product Description, and Product Container Closure System."

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.p.1 "Description and Composition of the Drug Product"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
* section 3..3 MS
* section.code 1..1 MS
// * section.code from CmcCompSectionTypesVS (required)
* section.title 1..1 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the ectd document sections."
// the contains line determines the order, not the section profiling
* section contains ProductDescription 1..1 MS and ProductComposition 1..1 MS and ContainerClosure 1..1 MS
* section[ProductDescription] ^definition = "Drug product description to be included under the 3.2.P.1 eCTD heading."
* section[ProductDescription].code.text = "Product Description"
* section[ProductDescription].entry 1..1 MS
* insert PQReference(section[ProductDescription].entry)
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ProductComposition] ^definition = "Drug product components to be included under the 3.2.P.1 eCTD heading."
* section[ProductComposition].code.text = "Product Composition"
* section[ProductComposition].entry 1..1 MS
* insert PQReference(section[ProductComposition].entry)
* section[ProductComposition].entry only Reference(FinishedProduct)
* section[ContainerClosure] ^definition = "Product Container Closure Description to be included under the 3.2.P.1 eCTD heading."
* section[ContainerClosure].code.text =  "Product Container Closure Description"
* section[ContainerClosure].entry 1..* MS
* insert PQReference(section[ContainerClosure].entry)
* section[ContainerClosure].entry only Reference(ContainerClosure)

Profile: EctdComposition32S10
Parent: Composition
Id: ectd-composition-32s10
Title: "eCTD Substance General Information"
Description: "The fields needed to represent the Substance Nomenclature and Structure to be included under the 3.2.S.1 heading of the eCTD. References Sponsor Organization."

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.s.1 "General Information"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
/*
    SECTION SLICES
*/
* section 1..1 MS
* section.entry 1..1 MS
* section ^definition = "Substance General Information the 3.2.S.1 eCTD heading."
* section.title 1..1 MS
* insert PQReference(section.entry)
* section.entry only Reference(DrugSubstanceNomenclatureStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials"
Description: "The fields needed to represent the Substance Control of Materials to be included under the eCTD 3.2.S.2.3 heading. References Sponsor Organization and Drug Substance Materials."

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.s.2.3 "Control of Materials"
* subject 1..1 MS
* insert PQReference(subject)
* subject only Reference(SubstanceDefinitionHandle)
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..* MS
* section.entry MS
* section ^definition = "Substance Control of Materials to be included under the 3.2.S.2.3 eCTD heading."
* section.entry 1..* MS
* insert PQReference(section.entry)
* section.entry only Reference(QualitySpecification)

// Stage 2  Compositions -------------------------------------------------------------------------------------------------*/
Profile: EctdComposition32P32
Parent: Composition
Id: ectd-composition-32p32
Title: "eCTD Batch Formula"
Description: "The fields needed to represent the Product Batch Formula to be included under the eCTD. References Sponsor Organization and Batch Formula"

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.p.3.2 "Batch Formula"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
/*
 SECTION SLICES - not requried - only one option
*/
* section 1..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Slice on ICH code. only one slice is defined but slicing is left open for interoperability"
  * ^slicing.ordered = false
  * code 1..1 MS
* section contains BatchFormulaMedicinalProduct 1..1 MS
* section[BatchFormulaMedicinalProduct]
  * ^definition = """
    Product Batch Formula to be included under the 3.2.P.3.2 eCTD heading.
  """
  * code = $SectionTypes#ich_3.2.p.3.2 "Batch Formula"
  * title 1..1 MS
  * entry 1..1 MS
  * insert PQReference(entry)
  * entry only Reference(BatchFormulaMedicinalProduct)


Profile: EctdComposition32P55
Parent: Composition
Id: ectd-composition-32p55
Title: "eCTD Product Characterisation of Impurities"
Description: "The fields needed to represent the Product Characterisation of Impurities in a to be included under the eCTD. References Sponsor Organization and Product Characterisation of Impurities"

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.p.5.5 "Characterisation of Impurities"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
/*
 SECTION SLICES - not requried - only one option
*/
* section 1..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Slice on the ICH Section code. only one slice is defined but is left open for other sections that won't be parsed"
  * ^slicing.ordered = false
  * code 1..1 MS
* section contains Characterisation 1..1 MS
* section[Characterisation]
  * ^definition = """
    Product Characterisation of Impurities to be included under the 3.2.P.5.5 eCTD heading.
  """
  * code = $SectionTypes#ich_3.2.p.5.5 "Characterisation of Impurities"
  * title 1..1 MS
  * entry 1..1 MS
  * insert PQReference(entry)
  * entry only Reference(DrugProductwithImpurities)

Profile: EctdComposition32S3
Parent: Composition
Id: ectd-composition-32s3
Title: "eCTD Substance Characterisation"
Description: "The fields needed to represent the Substance Structure and Impurities to be included under the 3.2.S.3 heading of the eCTD. References Sponsor Organization, Drug Substance Structure, and Drug Substance Impurities"

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#ich_3.2.s.3 "Characterisation"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS

/*
 SECTION SLICES
*/
* section 1..* MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the different sections that are needed in an ectd document."
* section contains Structure 1..1 MS
* section[Structure] ^definition = "Substance Characterisation to be included under the 3.2.S.3 eCTD heading."
* section[Structure].code 1..1 MS
* section[Structure].code = $SectionTypes#ich_3.2.s.3.1 "Elucidation of Structure and other Characteristics"
* section[Structure].title 1..1 MS
* section[Structure].entry 1..1 MS
* insert PQReference(section[Structure].entry)
* section[Structure].entry only Reference(DrugSubstanceCharacterisation)