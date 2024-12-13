Profile: CMCeCTDDocumentSP7181
Parent: Bundle
Id: cmc-ectd-document-sp7181
Title: "CMC eCTD SP7181 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7181 profiles."
* . ^short = "CMC eCTD SP7181 Bundle"
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