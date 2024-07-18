Profile: PqcmcAttachment
Parent: Attachment
Id: pqcmc-attachment
Title: "PQCMC Attachment"
Description: "Any attached file in a submission is required to have a type, data, and a title"
* ^abstract = true
* contentType 1..1 MS
* data 1..1 MS
* title 1..1 MS 
* title ^short = "Document file name including the file extension"
* title ^definition = """A format or abbreviation name that identifies a file structure. [Source: SME Defined]
Used for the following: Analytical Instrument Data File Type, Impurity Analysis Graphic, Impurity Analytical Instrument Data File, Impurity Chemical Structure Data File, and Substance Structure Graphic.
"""

Profile: GraphicAttachment
Parent: PqcmcAttachment
Id: pqcmc-graphic-attachment
Title: "Analysis Graphic"
Description: "Any attached file that contains a graphical representation"
* ^abstract = true
* contentType from PqcmcGraphicalFileTypes (required)

Profile: AnalyticalInstrumentData
Parent: PqcmcAttachment
Id: pqcmc-analytical-intstrument-data
Title: "Analytical Instrument Data"
Description: "Any attached file that contains analytical instrument data"
* ^abstract = true
* contentType from PqcmcAnalyticalInstrumentDataTypes (required)

Profile: StructureDataAttachment
Parent: PqcmcAttachment
Id: pqcmc-structure-data
Title: "Structure Data"
Description: "Any attached file that contains structure data (e.g. SDFiles, MolFiles, INCHI)"
* ^abstract = true
* contentType from PqcmcStructureDataTypes (required)

Profile: GraphicReference
Parent: Base64DocumentReference
Id: pqcmc-graphic-reference
Title: "Graphic Reference"
Description: "A Document Reference to any attachment tha contains a graphical representation"
* ^abstract = true
* content.attachment only GraphicAttachment

Profile: StructureReference
Parent: Base64DocumentReference
Id: pqcmc-structure-reference
Title: "Structure Data Reference"
Description: "A Document Reference to any attachment that contains structure data"
* ^abstract = true
* content.attachment only StructureDataAttachment

Profile: Base64DocumentReference
Parent: DocumentReference
Id: cmc-document-reference
Title: "Document Reference Attachment"
Description: "A profile that represents the document or diagram in base64."

* meta.profile MS
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
* ^context[=].expression = "PlanDefinition"
* ^context[+].type = #element "PlanDefinition.goal"
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only markdown

