Profile: PqcmcAttachment
Parent: Attachment
Id: pqcmc-attachment
Title: "PQCMC Attachment"
Description: "Any attached file in a submission is required to have a type, data, and a title"
* contentType 1..1 MS
* data 1..1 MS
* title 1..1 MS 
* title ^short = "Document file name including the file extension"
* title ^definition = """A format or abbreviation name that identifies a file structure. [Source: SME Defined]
Used for the following: Analytical Instrument Data File Type, Impurity Analysis Graphic, Impurity Analytical Instrument Data File, Impurity Chemical Structure Data File, and Substance Structure Graphic.
"""

Profile: Base64DocumentReference
Parent: DocumentReference
Id: cmc-document-reference
Title: "Document Reference Attachment"
Description: "A profile that represents the document or diagram in base64."

* meta.profile 1..1 MS
* status = #current
* content MS
* content.attachment MS
* content.attachment only PqcmcAttachment

 
Extension: AditionalInformationExtension
Id: pq-additional-info-extension
Title: "Additional Information"
Description: "Any additional information"
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.constituent"
* ^context[+].type = #element
* ^context[=].expression = "ManufacturedItemDefinition.component.property.valueMarkdown"
* ^context[+].type = #element
* ^context[=].expression = "Ingredient"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only markdown

Extension: IgVersion
Id: pq-ig-version
Title: "Profile IG Version"
Description: "The IG version number of the bundle profile to which the instance conforms.  Additionally, all the profiles of the resources in the bundle must conform to this version."
* ^context.type = #element
* ^context.expression = "Bundle.identifier"

* value[x] 1..1
* value[x] only string
* . ^short = "IG Version"
* . ^definition = "The Implementation Guide version number of the bundle profile to which the instance conforms.  Additionally, all the profiles of the resources in the bundle must conform to this version."
