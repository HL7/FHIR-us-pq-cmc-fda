Extension: ProtocolExtension
Id: pq-protocol-extension
Title: "Study Protocol"
Description: """Study protocol identification"""
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy"
* extension contains
    protocolIdentifier 1..1 MS and
    protocolVersion 1..1 MS
* extension[protocolIdentifier]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Protocol Identifier"
    * ^definition = """
      An alphanumeric identifier assigned to a prospective protocol plan by the sponsoring organization. [Source: SME Defined]
    """
* extension[protocolVersion]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Protocol Version"
    * ^definition = """
      The alphanumeric text assigned by the sponsor to a particular edition of a stability study that is sequential. [Source: SME Defined]
      Examples: 2.1, 2.2 or A1, Aw or P1, P2, etc.
    """

Extension: PullIntervalExtension
Id: pq-timePoint-extension
Title: "Study Interval"
Description: "Contains elements related to the intervals of the stability study."
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* extension contains
    timePoint 1..1 MS and
    timePointDescription 1..1 MS
* extension[timePoint]
  * value[x] 1..1 MS
  * value[x] only Quantity
  * value[x] from PqcmcUnitsMeasure (required)
    * ^short = "Interval"
    * ^definition = """
      Storage time of the batch in a climatic chamber. [Source: eStability Implementation Guide]
    """
    * value 1..1 MS
    * code 1..1 MS
      * ^short = "Interval Unit"
      * ^definition = "The partitions of the study pause. [Source: eStability Implementation Guide]"
* extension[timePointDescription]
  * value[x] 1..1 MS
  * value[x] only Coding
  * value[x] from PqcmcIntervalDescriptionCodeTerminology (required)
    * ^short = "Interval Description Code"
    * ^definition = """
      This code describes any 'delay' that happened during testing, e.g., none (Immediate) or freeze sample (Delayed Frozen). [Source: NCIt].
    """

Profile: StabilityStudy
Parent: ResearchStudy
Id: pq-stability-study
Title: "Stability Study"
Description: "Profile for the main stability study."

* extension contains 
  pq-protocol-extension named protocolExtension 1..1 MS and
  pq-additional-info-extension named study-additional-info 0..* MS
* extension[study-additional-info] 
  * ^short = "Study Additional"
  * ^definition = """
    A placeholder for providing comments about the stability study. [Source: SME Defined]
  """
* identifier 1..1 MS
  * ^short = "Study Identifier"
  * ^definition = """
    An alphanumeric identifier assigned to a study as executed by the sponsoring organization. [Source: SME Defined]
    Example: Study Number- 565758
  """
//* version 0..1 MS
//* version ^short = "Study Identifier Version (optional)"
* title 1..1 MS
  * ^short = "Study Name"
  * ^definition = """
    A non-unique textual identifier given to the drug stability study by the sponsoring organization. [Source: SME Defined]
  """
//* protocol Reference (PlanDefinition)
//* protocol ^short = ""
* primaryPurposeType 1..1 MS
* primaryPurposeType from PqcmcStabilityStudyReasonTerminology (required)
  * ^short = "Study Reason"
  * ^definition = """
    The rationale for submitting the stability data. [Source: SME Defined]
    Examples: Annual Report, NDA, Pre-market approval.
  """
* description 0..1 MS
  * ^short = "Study Design"
  * ^definition = """
    A textual description providing the details of the study plan which includes tests, time points, storage conditions, method. [Source: SME Defined]
  """
* period 1..1 MS
  * start 1..1 MS
    * ^short = "Study Start Date"
    * ^definition = """
      The date the product or substance is put into the stability chamber for a given set of storage conditions [Source: SME Defined]
    """
  * end 0..1 MS
    * ^short = "Study End Date"
    * ^definition = """
      The date the study or sub-study completes or terminates. [Source: SME Defined]
    """
* whyStopped 0..1 MS
* whyStopped only CodeableConceptTextOnly
  * ^short = "Reason Stopped"
  * ^definition = """
    The rationale for why the Stability study was terminated. [Source: SME Defined]
  """
// what should this cardinality be? -CRN
* objective 1..* MS
  * description 1..1 MS
    * ^short = "Study Purpose"
    * ^definition = """
      A textual description intended to provide a high level objective and rationale for the study. [Source: SME Defined]
      Example: The purpose of this study EX 2010PRD5758 is to confirm the stability of BellaVie ™ (2 AMINOBUTYROLE ACID, DL) 2.0 mg, Pink Film
      Coated Extended Release Tablets (Product 54321) per the NDA post approval stability commitments
    """

Profile: StabilitySubStudy
Parent: ResearchStudy
Id: pq-stability-sub-study
Title: "Stability Sub-Study"
Description: "Profile for the a stability sub-study."

* extension contains pq-additional-info-extension named substudy-additional-info 0..* MS
* identifier 1..1 MS
  * ^definition = """
    An alphanumeric identifier assigned to a study as executed by the sponsoring organization. [Source: SME Defined]
    Example: Study Number- 565758
  """
* version 0..1 MS
  * ^short = "Sub-Study Identifier Version (optional)"
* title 1..1 MS
  * ^short = "Sub-Study Name"
  * ^definition = """
    A non-unique textual identifier given to the drug stability sub-study by the sponsoring organization. [Source: SME Defined]
  """
//* protocol Reference (PlanDefinition)
//* protocol ^short = "x"
* partOf MS
* insert PQReference(partOf)
* partOf only Reference(StabilityStudy or StabilitySubStudy)
  * ^short = "Reference to main study or associated study"
//* will need rule to set cardinalty*/
* condition 3..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "coding"
  * ^slicing.rules = #closed // or #closed if you don't want other concepts
* condition contains
    substudytype 1..1 and
    storage 1..1 and
    storagecategory 1..1 and
    orientation 0..1
* condition[substudytype] from PqcmcStudyTypeTerminology (required)
  * ^short = "Sub-Study Type"
  * ^definition = """
    A categorization of studies that identifies whether there are single or multiple phases of the study sometimes simulating the periods of use. [Source: SME Defined]
    Examples: Standard, Cycled-simple.
  """
* condition[storage] from PqcmcStorageConditionsTerminology (required)
  * ^short = "Storage Conditions Temp.RH"
  * ^definition = """
    The temperature and the relative humidity under which the study was performed. [Source: SME Defined]
  """
* condition[storagecategory] from PqcmcStorageConditionCategoryTerminology (required)
  * ^short = "Storage Condition Category"
  * ^definition = """
    A classification of storage conditions (temperature and humidity) that is designed to check the chemical degradation or physical change of a drug substance or drug product. [Source: SME Defined]
  """
* condition[orientation] from PqcmcContainerOrientationTerminology (required)
  * ^short = "Container Orientation"
  * ^definition = """
    The placement of a container during storage to understand the interactions between the product and the closure. [Source: SME Defined]
    Examples: horizontal, upright.
  """
* period 1..1 MS
  * start 1..1 MS
    * ^short = "Sub-study Start Date"
    * ^definition = """
      The date the product or substance is put into the stability chamber for a given set of storage conditions [Source: SME Defined]
    """
  * end 0..1 MS
    * ^short = "Sub-Study End Date"
    * ^definition = """
      The date the study or sub-study completes or terminates. [Source: SME Defined]
    """
* whyStopped 0..1 MS
* whyStopped only CodeableConceptTextOnly
  * ^short = "Reason Stopped"
  * ^definition = """
    The rationale for why the Stability study was terminated. [Source: SME Defined]
  """
// what should cardinality be? 'objective' was not profiled CRN
* objective 1..* MS
  * description 1..1 MS
    * ^short = "Study Purpose"
    * ^definition = """
      A textual description intended to provide a high level objective and rationale for the study. [Source: SME Defined]
      Example: The purpose of this study EX 2010PRD5758 is to confirm the stability of BellaVie ™ (2 AMINOBUTYROLE ACID, DL) 2.0 mg, Pink Film
      Coated Extended Release Tablets (Product 54321) per the NDA post approval stability commitments
    """
* result MS
* insert PQReference(result)
* result only Reference(StabilityStudyIntervalReport)
  * ^short = "Link to stability study results"

Profile: StabilityStudyIntervalReport
Parent: DiagnosticReport
Id: pqcmc-stability-study-interval-report
Title: "Stability Study Interval Report"
Description: "Batch or lot stability testing to ensure that pharmaceutical products continue to meet the product specification or determine the expiry period."

* extension contains 
  pq-timePoint-extension named studyInterval 1..1 MS and
  pq-quality-specification-extension named qualitySpecification 1..1 MS and
  pq-additional-info-extension named substudy-additional-info 0..* MS
* extension[substudy-additional-info] 
  * ^short = "Sub-Study Additional"
  * ^definition = """
    A placeholder for providing comments about the stability study. [Source: SME Defined]
  """
* identifier 0..1 MS
  * ^short = "optional user designated identifier"	
* status MS
  * ^short = "Status of the batch analysis"
  * ^definition = """
    The status of the batch analysis. Consult the HL7 list of permitted values in http://hl7.org/fhir/ValueSet/diagnostic-report-status.
  """
* code 1..1 MS
* code only CodeableConceptTextOnly
  * ^short = "Name for this study interval analysis."
* subject 1..1 MS
* insert PQReference(subject)
* subject only Reference(DrugProductBatch or DrugSubstanceBatch)
  * ^short = "A batch placed under study to determine the maintained performance parameters over time."
* performer 1..1 MS
* insert PQReference(performer)
* performer only Reference(CodedOrganization)
  * ^short = "Test Site"
  * ^definition = """
    Reference to the organization profile that contains the name, identifer(s) and address of the testing site.
  """
* result MS
* insert PQReference(result)
* result only Reference(ResultObservation)