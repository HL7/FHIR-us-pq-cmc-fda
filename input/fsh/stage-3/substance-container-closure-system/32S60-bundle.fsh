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