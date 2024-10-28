
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
