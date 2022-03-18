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
*Examples: 2.1, 2.2 or A1, Aw or P1, P2, etc."""

Extension: PullIntervalExtension
Id: pq-timePoint-extension
Title: "Study Interval"
Description: "Contains elements related to the intervals of the stability study."
* extension contains
    timePoint 1..1 MS and
    timePointDescription 1..1 MS 
* extension[timePoint].value[x] only Quantity
* extension[timePoint].value[x] ^short = "Interval"
* extension[timePoint].value[x] ^definition = "The scheduled time for the the pull date."
* extension[timePointDescription].value[x] only CodeableConcept
* extension[timePointDescription].value[x] from vsPqcmc-interval-description-code-terminology (required)
* extension[timePointDescription].value[x] ^short = "Interval Description"
* extension[timePointDescription].value[x] ^definition = "A description of any 'delay' that happened diring testing, e.g. none (immediate) or freeze sample (Delayed Frozen). [Source NCIt]."

Profile: StabilityStudy
Parent: ResearchStudy
Id: pq-stability-study
Title: "Stability Study"
Description: "Profile for a the main stability study"

* .extension contains pq-protocol-extension named protocolExtension 1..1 MS
* identifier 1..1 MS
* identifier ^short = "Study Identifier"
* version  0..1 MS
* version ^short = "Study Identifier (optional)"
* title 1..1 MS
* title ^short = "Study Name"
//* protocol Reference (PlanDefinition)
//* protocol ^short = ""
* primaryPurposeType  1..1 MS
* primaryPurposeType ^short = "Study Reason"
* primaryPurposeType from  vspqcmc-stability-study-reason-terminology
* description 1..1 MS
* description ^short = "Study Design"
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Study Start Date"
* period.end 0..1 MS
* period.end ^short = "Study End Date"
* whyStopped  0..1 MS
* whyStopped.coding 0..0
* whyStopped.text 1..1 MS
* whyStopped.text ^short = "Reason Stopped"
* objective.description 1..1 MS
* objective.description ^short = " Study Purpose"

Profile: StabilitySubStudy
Parent: ResearchStudy
Id: pq-stability-sub-study
Title: "Stability Sub-Study"
Description: "Profile for a the main stability Sub-Study"

* identifier 1..1 MS
* identifier ^short = "Sub-study Identifier"
* version  1..1 MS
* version ^short = "Sub-study Identifier (optional)"
* title  1..1 MS
* title ^short = "Sub-study Name"
* partOf ^short = "Reference to main study or associated study"
* partOf only Reference (StabilityStudy or StabilitySubStudy)
* condition  1..2 MS
* condition.coding ^short = "Storage Conditions Temp/RH"
* condition.coding from  vsPqcmcStorageConditionsTerminology
* condition.coding ^short = "Container Orientation"
* condition.coding from vsPqcmcContainerOrientationTerminology
* period 1..1 MS
* period.start 1..1 MS
* period.start ^short = "Sub-study Start Date"
* period.end 0..1 MS
* period.end ^short = "Sub-study End Date"
* note 0..1 MS
* note ^short = "Sub-study Storage Condition Comment"
* whyStopped  0..1 MS
* whyStopped ^short = "Reason Stopped"
* whyStopped.coding 0..0
* whyStopped.text 1..1 MS
* objective.description 1..1 MS
* objective.description ^short = " Study Purpose"
* result ^short = "Link to stability study results" 
* result only Reference(StabilityStudyIntervalReport)


Profile: StabilityStudyIntervalReport
Parent: DiagnosticReport
Id: pqcmc-stability-study-interval-report
Title: "Stability Study Interval Report"
Description: "Batch or lot stability testing to ensure that pharmaceutical products continue to meet the product specification or determine the expiry period."

* .extension contains pq-timePoint-extension named studyInterval 1..1 MS
* .extension contains pq-quality-specification-extension named qualitySpecification 1..1 MS
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
* subject only Reference(DrugProductInstance or DrugSubstanceInstance)
* subject ^short = "A single medication batch/lot or a single subtance batch/lot "
* performer 1..1 MS
* performer only Reference(MfgTestSiteOrganization)
* performer ^short = "Test Site"
* performer ^definition = "Reference to the organization profile that contains the name, identifer(s) and address of the testing site."
* result MS
* result only Reference(ResultObservation)