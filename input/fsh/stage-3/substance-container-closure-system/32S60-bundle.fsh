Profile: CMCeCTDDocument32S60
Parent: Bundle
Id: cmc-ectd-document-32s60
Title: "CMC eCTD 32S60 Document"
Description: "Definition for a document bundle with the CMC eCTD 32S60 profiles."
* . ^short = "CMC eCTD 32S60 Bundle"
* identifier 1..1 MS
* type MS
  * ^short = "document"
* type = #document (exactly)
* timestamp 1..1 MS
* entry 1..* MS
  * fullUrl 1..1 MS
  * resource 1..1 MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "The specific bundle entries that are needed for a Drug Substance Container Closure System document."
* entry contains
    Composition 1..1 and
    SubstanceDefinition 1..1 and
    Organization 1..1
* entry[Composition]
  * resource only EctdComposition32S60
* entry[SubstanceDefinition]
  * resource only SubstanceContainerClosure
* entry[Organization]
  * resource only CodedOrganization