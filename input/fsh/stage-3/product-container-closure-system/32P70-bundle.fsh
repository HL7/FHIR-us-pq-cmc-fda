
Profile: CMCeCTDDocument32P70
Parent: Bundle
Id: cmc-ectd-document-32p70
Title: "CMC eCTD 32P70 Document"
Description: "Definition for a document bundle with the CMC eCTD 32P70 profiles."
* . ^short = "CMC eCTD 32P70 Bundle"
* identifier 1..1 MS
* type MS
* type = #document (exactly)
  * ^short = "document"
* timestamp 1..1 MS
* entry 1..* MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "The specific bundle entries that are needed for a Container Closure System document.  Note this bundle and associated profiles is expected to change substantialy in the future."
  * fullUrl 1..1 MS
  * resource 1..1 MS
* entry contains
    Composition 1..1 and
    MedicinalProductDefinition 1..1 and
    Organization 1..1
* entry[Composition]
  * resource only EctdComposition32P70
* entry[MedicinalProductDefinition]
  * resource only ContainerClosure
* entry[Organization]
  * resource only CodedOrganization
