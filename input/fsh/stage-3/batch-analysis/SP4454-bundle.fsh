
Profile: CMCeCTDDocumentSP4454
Parent: Bundle
Id: cmc-ectd-document-sp4454
Title: "CMC eCTD SP4454 Document"
Description: "Definition for a document bundle with the CMC eCTD SP4454 profiles."
* . ^short = "CMC eCTD SP4454 Bundle"
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