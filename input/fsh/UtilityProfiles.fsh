Profile: Base64DocumentReference
Parent: DocumentReference
Description: "A profile that represents the document or diagram in base64."
* status = #current (exactly)
* content MS
* content.attachment MS
* content.attachment.data 1..1 MS

Extension: AditionalInformationExtension
Id:  pq-additional-info-extension
Title: "Aditional Information"
Description: "Any additional information"
* extension.value[x] only markdown