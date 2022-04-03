Extension: ProtocolExtension
Id:  pq-protocol-extension
Title: "Study Protocol"
Description: """Study protocol identification"""
* extension contains   
    protocolIdentifier 1..1 MS and
    protocolVersion 1..1 MS 
* extension[protocolIdentifier]
* extension[protocolIdentifier].valueString ^short = "Protocol Identifier"
* extension[protocolIdentifier].valueString ^definition = "An alphanumeric identifier assigned to a prospective protocol plan by the sponsoring organication. [Source: SME Defined]"
* extension[protocolVersion].valueString
* extension[protocolVersion].valueString ^short = "Protocol Version"
* extension[protocolVersion].valueString ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a stability study that is sequential. [Source: SME Defined]
Examples: 2.1, 2.2 or A1, Aw or P1, P2, etc."""

Extension: PullIntervalExtension
Id: pq-timePoint-extension
Title: "Study Interval"
Description: "Contains elements related to the intervals of the stability study."
* extension contains
    timePoint 1..1 MS and
    timePointDescription 1..1 MS 
* extension[timePoint].value[x] only Quantity
* extension[timePoint].value[x] ^short = "Interval"
* extension[timePoint].value[x] ^definition = "Storage time of the batch in a climatic chamber. [Source: eStability Implementation Guide]"
* extension[timePoint].valueQuantity.value 1..1 MS
* extension[timePoint].valueQuantity.unit 1..1 MS 
* extension[timePoint].valueQuantity.unit ^short = "Interval Unit"
* extension[timePoint].valueQuantity.unit ^definition = "The partitions of the study pause. [Source: eStability Implementation Guide] "
* extension[timePoint].valueQuantity.code 1..1 MS
* extension[timePoint].valueQuantity.code from  PqcmcUnitsMeasureTerminology
* extension[timePointDescription].value[x] only CodeableConcept
* extension[timePointDescription].value[x] from PqcmcIntervalDescriptionCodeTerminology (required)
* extension[timePointDescription].value[x] ^short = "Interval Description Code"
* extension[timePointDescription].value[x] ^definition = "This code describes any 'delay' that happened during testing, e.g., none (Immediate) or freeze sample (Delayed Frozen). [Source: NCIt]."

Profile: StabilityStudy
Parent: ResearchStudy
Id: pq-stability-study
Title: "Stability Study"
Description: "Profile for the main stability study."

* .extension contains pq-protocol-extension named protocolExtension 1..1 MS
* .extension contains pq-additional-info-extension named study-additional-info 0..* MS  
* .extension[study-additional-info] ^short = "Study Additional" 
* .extension[study-additional-info] ^definition = """A placeholder for providing comments about the stability study. [Source: SME Defined]
"""
* identifier 1..1 MS
* identifier ^short = "Study Identifier"
* identifier ^definition = """An alphanumeric identifier assigned to a study as executed by the sponsoring organization. [Source: SME Defined]
Example: Study Number- 565758 
"""
* version  0..1 MS
* version ^short = "Study Identifier Version (optional)"
* title 1..1 MS
* title ^short = "Study Name"
* title ^definition = "A non-unique textual identifier given to the drug stability study by the sponsoring organization. [Source: SME Defined]"
//* protocol Reference (PlanDefinition)
//* protocol ^short = ""
* primaryPurposeType  1..1 MS
* primaryPurposeType ^short = "Study Reason"
* primaryPurposeType ^definition = """The rationale for submitting the stability data. [Source: SME Defined] 
Examples: Annual Report, NDA, Pre-market approval."""
* primaryPurposeType from PqcmcStabilityStudyReasonTerminology
* description 0..1 MS
* description ^short = "Study Design"
* description ^definition = """A textual description providing the details of the study plan which includes tests, time points, storage conditions, method. [Source: SME Defined]
"""
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Study Start Date"
* period.start ^definition = "The date the product or substance is put into the stability chamber for a given set of storage conditions [Source: SME Defined]"
* period.end 0..1 MS
* period.end ^short = "Study End Date"
* period.end ^definition = "The date the study or sub-study completes or terminates. [Source: SME Defined]"
* whyStopped  0..1 MS
* whyStopped.coding 0..0
* whyStopped.text 1..1 MS
* whyStopped.text ^short = "Reason Stopped"
* whyStopped.text ^definition = "The rationale for why the Stability study was terminated. [Source: SME Defined]"
* description 1..1 MS
* description ^short = "Study Purpose"
* description ^definition = """A textual description intended to provide a high level objective and rationale for the study. [Source: SME Defined]
Example: The purpose of this study EX 2010PRD5758 is to confirm the stability of BellaVie ™ (2 AMINOBUTYROLE ACID, DL) 2.0 mg, Pink Film 
Coated Extended Release Tablets (Product 54321) per the NDA post approval stability commitments
"""
Profile: StabilitySubStudy
Parent: ResearchStudy
Id: pq-stability-sub-study
Title: "Stability Sub-Study"
Description: "Profile for the a stability sub-study."

* .extension contains pq-additional-info-extension named substudy-additional-info 0..* MS 
* identifier 1..1 MS
* identifier ^definition = """An alphanumeric identifier assigned to a study as executed by the sponsoring organization. [Source: SME Defined]
Example: Study Number- 565758 
"""
* version  0..1 MS
* version ^short = "Sub-Study Identifier Version (optional)"
* title 1..1 MS
* title ^short = "Sub-Study Name"
* title ^definition = "A non-unique textual identifier given to the drug stability study by the sponsoring organization. [Source: SME Defined]"
//* protocol Reference (PlanDefinition)
//* protocol ^short = ""
* partOf ^short = "Reference to main study or associated study"
* partOf only Reference (StabilityStudy or StabilitySubStudy)
//* will need rule to set cardinalty*/
* condition 1..1 MS
* condition.coding 1..1 MS
* condition.coding ^short = "Sub-Study Type "
* condition.coding ^definition = """A categorization of studies that identifies whether there are single or multiple phases of the study sometimes simulating the periods of use. [Source: SME Defined]
Examples: Standard, Cycled-simple.
"""
* condition.coding from PqcmcStudyTypeTerminology
* condition 1..1 MS
* condition.coding 1..1 MS
* condition.coding ^short = "Storage Conditions Temp.RH"
* condition.coding ^definition = "The temperature and the relative humidity under which the study was performed. [Source: SME Defined]"
* condition.coding from  PqcmcStorageConditionsTerminology
* condition 1..1 MS
* condition.coding 1..1 MS //check cardinality cannot be 0 in fhir
* condition.coding ^short = "Container Orientation"
* condition.coding ^definition = """The placement of a container during storage to understand the interactions between the product and the closure. [Source: SME Defined]
Examples: horizontal, upright.
""" 
* condition.coding from PqcmcContainerOrientationTerminology
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Sub-study Start Date"
* period.start ^definition = "The date the product or substance is put into the stability chamber for a given set of storage conditions [Source: SME Defined]"
* period.end 0..1 MS
* period.end ^short = "Sub-Study End Date"
* period.end ^definition = "The date the study or sub-study completes or terminates. [Source: SME Defined]"
* whyStopped  0..1 MS
* whyStopped.coding 0..0
* whyStopped.text 1..1 MS
* whyStopped.text ^short = "Reason Stopped"
* whyStopped.text ^definition = "The rationale for why the Stability study was terminated. [Source: SME Defined]"
* description 1..1 MS
* description ^short = "Sub-Study Purpose"
* description ^definition = """A textual description intended to provide a high level objective and rationale for the study. [Source: SME Defined]
Example: The purpose of this study EX 2010PRD5758 is to confirm the stability of BellaVie ™ (2 AMINOBUTYROLE ACID, DL) 2.0 mg, Pink Film 
Coated Extended Release Tablets (Product 54321) per the NDA post approval stability commitments
"""
* result ^short = "Link to stability study results" 
* result only Reference(StabilityStudyIntervalReport)


Profile: StabilityStudyIntervalReport
Parent: DiagnosticReport
Id: pqcmc-stability-study-interval-report
Title: "Stability Study Interval Report"
Description: "Batch or lot stability testing to ensure that pharmaceutical products continue to meet the product specification or determine the expiry period."

* .extension contains pq-timePoint-extension named studyInterval 1..1 MS
* .extension contains pq-quality-specification-extension named qualitySpecification 1..1 MS
* .extension contains pq-additional-info-extension named substudy-additional-info 0..* MS  
* .extension[substudy-additional-info] ^short = "Sub-Study Additional" 
* .extension[substudy-additional-info] ^definition = """A placeholder for providing comments about the stability study. [Source: SME Defined]
"""
* identifier 1..1 MS
* identifier.value 1..1
* status MS
* status ^short = "Status of the batch analysis"
* status ^definition = "The status of the batch analysis. Consult the HL7 list of permitted values in http://hl7.org/fhir/ValueSet/diagnostic-report-status"
* code  1..1 MS
* code ^short = "Name for this study interval analysis."
* code.coding 0..0
* code.text 1..1 MS
* subject 1..1 MS
* subject only Reference(DrugProductBatch or DrugSubstanceBatch)
* subject ^short = "A single medication batch/lot or a single subtance batch/lot "
* performer 1..1 MS
* performer only Reference(MfgTestSiteOrganization)
* performer ^short = "Test Site"
* performer ^definition = "Reference to the organization profile that contains the name, identifer(s) and address of the testing site."
* result MS
* result only Reference(ResultObservation)