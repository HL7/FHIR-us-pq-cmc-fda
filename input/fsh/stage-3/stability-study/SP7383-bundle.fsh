Profile: CMCeCTDDocumentSP7383
Parent: Bundle
Id: cmc-ectd-document-sp7383
Title: "CMC eCTD SP7383 Document"
Description: "Definition for a document bundle with the CMC eCTD SP7383 profiles."
* . ^short = "CMC eCTD SP7383 Bundle"
* . obeys cmc-stability-mandatory-pull-date
* identifier 1..1 MS
* type MS
  * ^short = "document"
* type = #document (exactly)
* timestamp 1..1 MS
* entry 1..* MS
  * fullUrl 1..1 MS //each entry must have a fullUrl
  * resource 1..1 MS // each entry must have a resource
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
* entry contains
    Composition 1..1
* entry[Composition].resource only ectd-composition-sp7383