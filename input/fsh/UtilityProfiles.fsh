Profile: Base64DocumentReference
Parent: DocumentReference
Id: cmc-document-reference
Description: "A profile that represents the document or diagram in base64."
* status from http://hl7.org/fhir/ValueSet/document-reference-status
* status = #current (exactly)
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.data 1..1 MS
* content.attachment.title 1..1 MS 
* content.attachment.title ^short = "Document file name including the file extension. Used for the following: Analytical Instrument Data File Type, Impurity Analysis Graphic, Impurity Analytical Instrument Data File, Impurity Chemical Structure Data File, and Substance Structure Graphic"
* content.attachment.title ^definition = "A format or abbreviation name that identifies a file structure. [Source: SME Defined]"
 
Extension: AditionalInformationExtension
Id: pq-additional-info-extension
Title: "Aditional Information"
Description: "Any additional information"
* value[x] only markdown
