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
    DrugProductDescription 1..1 and
    ContainerClosure 1..* and
    Organization 0..* and
    DrugProductComponent 0..* and
    ComponentSubstance 0..* and
    GraphicsFile 0..* and
    StructureFile 0..*
* entry[Composition].resource only EctdComposition32P10
* entry[FinishedProduct].resource only FinishedProduct
* entry[DrugProductDescription].resource only DrugProductDescription
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


/*Compositions Stage 1--------------------------------------------------------------------------------------*/

Profile: EctdCompositionSP4151
Parent: Composition
Id: ectd-composition-sp4151
Title: "eCTD Specification Composition"
Description: "The fields needed to represent Quality Specifications for APIs, Drug Substances, Excipients and Raw Materials."

* status = #final
* identifier 0..1 MS
* type from PqcmcQualitySpecificationSectionTypes (required)
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
* section 1..1 MS
* section.title 1..1 MS

* section.entry MS
* insert PQReference(section.entry)
* section.entry only Reference(QualitySpecification)
* section.code 1..1 MS
* section.code = $SectionTypes#SP4151 "Quality Specification"
// need check that Specification type in instance matches the seciton selected.

Profile: EctdComposition32P10
Parent: Composition
Id: ectd-composition-32p10
Title: "eCTD Product Description and Composition"
Description: "The fields needed to represent the Product Description, Container Closure and Composition of the Drug Product to be included under the 3.2.P.1 heading of the eCTD. References Sponsor Organization, Drug Product Description, and Product Container Closure System."

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P10 "Product Description and Composition of the Drug Product"
* author 1..1 MS
* insert PQReference(author)
* author only Reference(CodedOrganization)
* title 1..1 MS
* section 3..3 MS
* section.code 1..1 MS
* section.code from CmcCompSectionTypesVS (required)
* section.title 1..1 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #closed
* section ^slicing.description = "Slice based on the ectd document sections."
// the contains line determines the order, not the section profiling
* section contains ProductDescription 1..1 MS and ProductComposition 1..1 MS and ContainerClosure 1..1 MS
* section[ProductDescription] ^definition = "Drug product description to be included under the 3.2.P.1 eCTD heading."
* section[ProductDescription].code = $SectionTypes#32P11 "Product Description"
* section[ProductDescription].entry 1..1 MS
* insert PQReference(section[ProductDescription].entry)
* section[ProductDescription].entry only Reference(DrugProductDescription)
* section[ProductComposition] ^definition = "Drug product components to be included under the 3.2.P.1 eCTD heading."
* section[ProductComposition].code = $SectionTypes#32P12 "Product Composition"
* section[ProductComposition].entry 1..1 MS
* insert PQReference(section[ProductComposition].entry)
* section[ProductComposition].entry only Reference(FinishedProduct)
* section[ContainerClosure] ^definition = "Product Container Closure Description to be included under the 3.2.P.1 eCTD heading."
* section[ContainerClosure].code = $SectionTypes#32P13 "Product Container Closure Description"
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
* type = $SectionTypes#32S10 "Substance General Information"
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
* section.code 1..1 MS
* section.code = $SectionTypes#32S10 "Substance General Information"
* section.title 1..1 MS
* insert PQReference(section.entry)
* section.entry only Reference(DrugSubstanceNomenclatureStructure)

Profile: EctdComposition32S23
Parent: Composition
Id: ectd-composition-32s23
Title: "eCTD Substance Control of Materials Composition"
Description: "The fields needed to represent the Substance Control of Materials to be included under the eCTD 3.2.S.2.3 heading. References Sponsor Organization and Drug Substance Materials."

* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32S23 "Substance Control of Materials"
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
* section.code 1..1 MS
* section.code = $SectionTypes#32S231 "Raw Material Specification"
* section.entry 1..* MS
* insert PQReference(section.entry)
* section.entry only Reference(QualitySpecification)

// Stage 2  Compositions -------------------------------------------------------------------------------------------------*/
