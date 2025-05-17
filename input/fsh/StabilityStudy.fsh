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
  * value[x] from http://hl7.org/fhir/ValueSet/ucum-units (required)
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
Description: "Profile for describing main and Sub-Stability studies for drug substances and products."

* identifier 1..1 MS
  * ^short = "Study Identifier"
  * ^definition = """
    An alphanumeric identifier assigned to a study as executed by the sponsoring organization. [Source: SME Defined]
    Example: Study Number- 565758
  """
* version 0..1 MS
* version ^short = "Study Identifier Version"
* title 1..1 MS
  * ^short = "Study Name"
  * ^definition = """
    A non-unique textual identifier given to the drug stability study by the sponsoring organization. [Source: SME Defined]
  """
* protocol 0..1 MS 
* protocol only Reference (StabilityStudyProtocol)
* protocol ^short = "main Stability Protocol"
* protocol ^definition = "The structured plan for assessing the quality of a drug product or substance over time under specified storage conditions. It outlines the storage parameters, container closure systems, sampling time points, and tests  to be applied. The protocol provides the basis for generating data to support shelf life, retest periods, or regulatory submissions."
* primaryPurposeType 1..1 MS
* primaryPurposeType from PqcmcStabilityStudyReasonTerminology (required)
  * ^short = "Study Reason"
  * ^definition = """
    The rationale for submitting the stability data. [Source: SME Defined]
    Examples: Annual Report, NDA, Pre-market approval.
  """
* focus 1..* MS
  * ^short = """The Drug Substance or Drug Product(s) included in the stabiltiy study.
  Note: When utilizing a bracketed study design, include untested products as with those representing the extreme conditions in a bracketed stability study.
  """
* insert PQCodeableReference(focus)
* focus only CodeableReference(DrugProductHandle or SubstanceDefinitionHandle)  

* description 0..1 MS
  * ^short = "Study Purpose"
  * ^definition = """
    A textual description intended to provide a high level objective and rationale for the study. [Source: SME Defined]
    Example: The purpose of this study EX 2010PRD5758 is to confirm the stability of BellaVie ™ (2 AMINOBUTYROLE ACID, DL) 2.0 mg, Pink Film
    Coated Extended Release Tablets (Product 54321) per the NDA post approval stability commitments
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
* note
  * ^short = "Study Additional Information"
  * ^definition = """
    A placeholder for providing comments about the stability study. [Source: SME Defined]
  """
* whyStopped 0..1 MS
* whyStopped only CodeableConceptTextOnly
  * ^short = "Reason Stopped"
  * ^definition = """
    The rationale for why the Stability study was terminated. [Source: SME Defined]
  """

Profile: StabilitySubStudy
Parent: ResearchStudy
Id: pq-stability-sub-study
Title: "Stability Sub-Study"
Description: "Profile for the a stability sub-study."

// Cross-version R6 Extensions
* extension contains 
    http://hl7.org/fhir/StructureDefinition/researchstudy-focus named r6focus 0..* and
    http://hl7.org/fhir/StructureDefinition/researchstudy-objective named r6Objective 0..*
// R6 focus
* insert PQReference(extension[r6focus].focus)
* extension[r6focus].focus only Reference(CycledTestingPlanDefinition)
*  ^short = "Suppoting information for cycled testing and matrixed study designs."
// R6 objective 
* extension[r6Objective] 0..* MS
  * ^short = "Study Design and Justification"
  * ^definition = "Links to Matrixing, Cycled Testing Plans or Bracketing Evidence providing study design or scientific justification."
* extension[r6Objective].name 1..1 MS
  * ^short = "extension[r6Objective] Label"
  * ^definition = "A label describing the study design eobjective, such as 'Matrixing Justification' or 'Cycled Testing Plan'."
* extension[r6Objective].outcomeMeasure.comparator 1..* MS
  * ^short = "Specific product or group under study"
  * ^definition = """Reference to the specific Medication, Substance, or Stability Group (defined in StabilityGroups profile) 
  representing the population or configuration being studied.
  Note: For bracketing studies it is best to group the extreme batches together for re-use in BracketingStudyEvidence and have two comparator groups here.
  """
* extension[r6Objective].outcomeMeasure.comparator only Reference(StabilityGroups)
* extension[r6Objective].outcomeMeasure.summaryMeasure MS
  * ^short = "Linked Design or Evidence"
  * ^definition = "References to supporting BracketingStudyEvidence."
  * description 1..1 MS
* extension[r6Objective].outcomeMeasure.endpointAnalysisPlan only Reference(BracketingStudyEvidence or MatrixedStudyEvidence)
// R5 elements
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
    A textual identifier given to the drug stability sub-study by the sponsoring organization. [Source: SME Defined]
  """
* label.value  
  *  ^short = "Storage Condition, Orientation and Container Title"
  * ^definition = """
    The Storage Condition, Orientation and Container Title defined in the main study protocol.
  """
* protocol 1..1 MS 
* protocol ^short = "Sub-Stability Protocol"
* protocol ^definition = "Reference to the Main Study protocol with the "
* insert PQReference(protocol)
* protocol only Reference (StabilityStudyProtocol)
* protocol.display 1..1 MS 
// * protocol.display ^short = // no Short??
* protocol.display ^definition = """
  Provide the 'Storage Condition, Orientation and Container Title' from the PlanDefinition.action.title element
  in the StabilityStudyProtocol profile consistent with this sub-study
"""
* partOf MS
* insert PQReference(partOf)
* partOf only Reference(StabilityStudy or StabilitySubStudy)
  * ^short = "Reference to main study or associated study"
  * ^definition = "Use partOf to maintain a hierarchical relationship between stability studies."

* condition 3..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "coding"
  * ^slicing.rules = #closed // or #closed if you don't want other concepts
* condition contains
    substudytype 1..1 MS and
    storage 1..1 MS and
    storagecategory 1..1 MS and
    orientation 0..1 MS
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
    * ^short = "Sub-Study Start Date"
    * ^definition = """
      The date the product or substance is put into the stability chamber for a given set of storage conditions [Source: SME Defined]
    """
  * end 0..1 MS
    * ^short = "Sub-Study End Date"
    * ^definition = """
      The date the study completes or terminates. [Source: SME Defined]
    """
* whyStopped 0..1 MS
* whyStopped only CodeableConceptTextOnly
  * ^short = "Reason Stopped"
  * ^definition = """
    The rationale for why the Stability study was terminated. [Source: SME Defined]
  """
* note
  * ^short = "Sub-Study Additional Information"
  * ^definition = """
    A placeholder for providing comments about the stability study. [Source: SME Defined]
  """ 
* classifier  1..1 MS
  * ^short = "Sub-Study Type"
  * ^definition = """The specific method used to evaluate how a product maintains its quality, safety, and efficacy over time under various environmental conditions. Common types include: Bracketing, Complex, Cycled-Simple, Matrixing, Photostability and	Staandard.
  Note:  Bracketing, Complex, Cycled-Simple and Matrixing require additional elements.
  """ 
* classifier  from pqcmc-study-type-terminology (required)
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

Profile: StabilityStudyProtocol
Parent: PlanDefinition
Id: pq-stability-study-protocol
Title: "Stability Study Protocol"
Description: "Defines the protocol for a stability study, including storage conditions, container closures, time points, and tests."
* identifier 1..1 MS 
  * ^short = "Protocol Identifier"
  * ^definition = """
      An alphanumeric identifier assigned to a prospective protocol plan by the sponsoring organization. [Source: SME Defined]
    """
* version 1..1 MS
  * ^short = "Protocol Version"
  * ^definition = """
      The alphanumeric text assigned by the sponsor to a particular edition of a stability study that is sequential. [Source: SME Defined]
      Examples: 2.1, 2.2 or A1, Aw or P1, P2, etc.
    """
* title 1..1 MS
  * ^short = "Protocol Title"
  * ^definition = "The title of the stability study protocol provided by the sponsor or manufacturer."
* status MS
* description 0..1 MS
  * ^short = "Protocol Description"
  * ^definition = "A narrative description of the main stability study design including objectives, scope, and general approach."
* goal.description MS
* goal.description obeys cmc-valid-test-category-hierachies
  * coding 1..2 MS
    * ^short = "Test Category | Test Subcategory"
    * ^definition = """
      A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties.
    """
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #closed
    * ^slicing.description = "the first coding must be a parent, the second one may be a child"
    * ^slicing.ordered = false
  * coding contains 
      parent 1..1 MS and
      child 0..1 MS
  * coding[parent] from PqcmcTestCategoryParentTerminology (required)
  * coding[child] from PqcmcTestCategoryChildTerminology (required)    
// * goal.description 1..1 MS
* goal.description.text 1..1 MS
* goal.description.text ^short = "Test Name"
* goal.description.text ^definition = """The textual description of a procedure or analytical method. [Source: SME Defined]
  Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
  Note: as defined by the sponsor
  """
// Sub-Study Storage Conditions and container 
* action 1..* MS
  * title 1..1 MS
    * ^short = "Storage Condition, Orientation and Container Title"
    * ^definition = "Descriptive title for the storage condition, orientation and container."
  * code 1..1 MS
    * coding 4..4 MS
    * coding ^slicing.discriminator.type = #value
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #closed
    * coding ^slicing.description = "Slice on the coding itself"
    * coding ^slicing.ordered = false
    * coding contains
      storage 1..1 MS  and
      orientation 1..1 MS and
      containerType 1..1 MS and
      closureType 1..1 MS
    * coding[storage] from PqcmcStorageConditionsTerminology (required)
      * ^short = "Storage Conditions Temp.RH"
      * ^definition = " The temperature and the relative humidity under which the study was performed. [Source: SME Defined]"
    * coding[orientation] from PqcmcContainerOrientationTerminology	 (required)
      * ^short = "Container Orientation"
      * ^definition = """
      The placement of a container during storage to understand the interactions between the product and the closure. [Source: SME Defined]
      Examples: horizontal, upright.
    """
    * coding[containerType] from PqcmcContainerTypeTerminology (required)
      * ^short =  "Container Type"
      * ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C4164]"
    * coding[closureType] from PqcmcClosureTypeTerminology (required)
      * ^short = "Closure Type"
      * ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
  * action 1..* MS
    * title 1..1 MS
      * ^short = "Time Point Title"
      * ^definition = "Descriptive title for the scheduled evaluation time point (e.g., 3 Months)."
    * timingTiming 1..1 MS
      * ^short = "Time Point Schedule"
      * ^definition = "Timing schedule specifying when the samples will be evaluated (e.g., 3, 6, 12 months)."
    * goalId 1..* MS
    * goalId ^short = "Test to be performed at this time point"


Profile: CycledTestingPlanDefinition
Parent: PlanDefinition
Id: cycled-testing-plan
Title: "Cycled Testing Plan Profile"
Description: "Profile for defining stability studies with cycling conditions using goals to represent cycles."

// Require at least one goal to define the cycle
* goal 1..* MS
* goal.target.detail[x] 1..1 MS
* goal.target.detail[x] only CodeableConcept
* goal.target.detailCodeableConcept
  * coding 4..4 MS
  * coding ^slicing.discriminator.type = #value
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #closed
  * coding ^slicing.description = "Slice on the coding itself"
  * coding ^slicing.ordered = false
  * coding contains
    storage 1..1 MS  and
    orientation 1..1 MS and
    containerType 1..1 MS and
    closureType 1..1 MS
  * coding[storage] from PqcmcStorageConditionsTerminology (required)
    * ^short = "Storage Conditions Temp.RH"
    * ^definition = " The temperature and the relative humidity under which the study was performed. [Source: SME Defined]"
  * coding[orientation] from PqcmcContainerOrientationTerminology	 (required)
    * ^short = "Container Orientation"
    * ^definition = """
    The placement of a container during storage to understand the interactions between the product and the closure. [Source: SME Defined]
    Examples: horizontal, upright.
  """
  * coding[containerType] from PqcmcContainerTypeTerminology (required)
    * ^short =  "Container Type"
    * ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C4164]"
  * coding[closureType] from PqcmcClosureTypeTerminology (required)
    * ^short = "Closure Type"
    * ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
// Require at least one action linked to a goal
* action 1..* MS
* action.title 1..1 MS
* action.description 1..1 MS
* action.goalId 1..1 MS
// Allow linking actions in sequence
* action.relatedAction 0..* MS
* action.relatedAction.targetId 1..1 MS
* action.relatedAction.relationship 1..1 MS

Profile: StabilityGroups
Parent: Group
Id: stability-groups
Title: "Stability Groups Profile"
Description: "Profile for defining groups of Medication or Substance used in stability studies, such as bracketed or matrixed product groupings."

// Require group name
* name 1..1 MS
  * ^short = "Label for the stability group"
  * ^definition = "A human-readable name used to identify the group, such as 'High Strength Bracket' or 'Smallest Package Size Group'."
// Require membership specification
* membership 1..1 MS
* membership.value = #enumerated
  * ^short = "Membership type for the stability group"
  * ^definition = "Enumerate the set of stability studies."
// Restrict members to Medication or Substance
* member 1..* MS
// WIP: can't reference Medication until r6
//* member.entity only Reference(DrugProductBatch or DrugSubstanceBatch)
  * ^short = "Group members"
  * ^definition = "References to the Medication or Substance resources that are part of this stability group, used for bracketing, matrixing, or other study designs."

Profile: BracketingStudyEvidence
Parent: Evidence
Id: bracketing-study-evidence
Title: "Bracketing Study Evidence Profile"
Description: "Profile for capturing interpolation-based stability inferences from bracketing designs."

// Cross-version R6 Extensions
* extension contains 
    http://hl7.org/fhir/StructureDefinition/evidence-relatesto named r6relatesto 0..* and

// R6 focus
* insert PQReference(fr6relatesto)
* extension[r6relatesto]
*  ^short = "The product(s) whoes stabiliyt is inferred from the bracketed study evidence."
  * type = http://hl7.org/fhir/artifact-relationship-type#comments-on	"Is Comment On"
  * targetReference only Reference(DrugProductHandle)

// Require active status
* status 1..1 MS
  * ^short = "Evidence status"
  * ^definition = "The status of the evidence record, typically 'active' for valid inferences."
// Description of the evidence  
* description 1..1 MS
  * ^short = "Bracketing study summary"
  * ^definition = "A summary of the statistical justification used to demonstrate that testing extremes (e.g., smallest and largest package sizes) brackets the behavior of intermediate configurations."
// Require variable definitions for population and comparators
  * ^short = "Bracketed package sizes or configurations"
  * ^definition = "Defines the extremes used in the bracketing study, such as smallest and largest package sizes or strengths."
* variableDefinition 2..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "note.text"
  * ^slicing.rules = #open
  * ^slicing.description = ""
  * note 1..1 MS
    * text 1..1 MS
* variableDefinition contains 
  upper 1..1 MS and
  lower 1..1 MS
* variableDefinition[upper]
  * description 1..1 MS
    * ^short = "Description of the bracketed extreme"
    * ^definition = "A human-readable description of the bracketed configuration being evaluated, such as a specific package size."
  * variableRole 1..1 MS
    * ^short = "Comparator Role"
    * ^definition = "Marks one extreme batch as a comparator for the interpolation."
  * variableRole = http://terminology.hl7.org/CodeSystem/variable-role#exposure "exposure"
  * observed 1..1 MS
    * ^short = "Observed High Batch"
    * ^definition = "Reference to the high-strength or extreme batch used in the interpolation."
  * insert PQReference(observed)
  * observed only Reference(StabilityGroups)
  * note.text = "upper"
* variableDefinition[lower]
  * description 1..1 MS
    * ^short = "Description of the bracketed extreme"
    * ^definition = "A human-readable description of the bracketed configuration being evaluated, such as a specific package size."
  * variableRole 1..1 MS
    * ^short = "Comparator Role"
    * ^definition = "Marks the second extreme batch as a comparator for the interpolation."
  * variableRole =  http://terminology.hl7.org/CodeSystem/variable-role#exposure "exposure"
  * observed 1..1 MS
    * ^short = "Observed Low Batch"
    * ^definition = "Reference to the low-strength or second extreme batch used in the interpolation."
  * insert PQReference(observed)
  * observed only Reference(StabilityGroups)
  * note.text = "lower"
// Statistical result to justify bracketing
* statistic 1..* MS
  * ^short = "Statistical outcome supporting bracketing"
  * ^definition = "Details the statistical analysis, such as regression models or equivalence testing, that supports the bracketing conclusion."
* statistic.description 1..1 MS
  * ^short = "Explanation of the statistical result"
  * ^definition = "A narrative summary of the statistical outcome showing that the tested extremes bracket the untested configurations."
* statistic.quantity 0..1 MS
  * ^short = "Interpolated Expiration Duration"
  * ^definition = "The interpolated shelf life or expiration duration, typically expressed in months for the untested intermediate."


Profile: MatrixedStudyEvidence
Parent: Evidence
Id: matrixed-study-evidence
Title: "Matrixed Study Evidence Profile"
Description: "Profile for capturing the results and justification for a matrixed stability study design."

// Require title and description to document the matrixing rationale
* title 1..1 MS
  * ^short = "Matrixing design label"
  * ^definition = "Title describing the matrixing plan, such as 'Reduced Time Point Matrix for Stability Study'."
* description 1..1 MS
  * ^short = "Rationale for matrixing design"
  * ^definition = "Detailed narrative describing the scientific or risk-based rationale for reducing the testing matrix."
* status 1..1 MS
  * ^short = "Evidence status"
  * ^definition = "The status of the evidence record, typically 'active' for valid conclusions."
// Variable definitions representing the tested configurations
* variableDefinition 1..* MS
  * ^short = "Matrixed Configurations Evaluated"
  * ^definition = "Definitions of the product configurations, strengths, packages, or time points tested as part of the matrixed study."
// Optional description of each variable
* variableDefinition.description 0..1 MS
  * ^short = "Description of Matrixed Variable"
  * ^definition = "Narrative description of the variable being evaluated in the matrixed design."
// Statistical summary of the matrixed study
* statistic 1..1 MS
  * ^short = "Matrixed Study Result Summary"
  * ^definition = "Statistical summary of the matrixed design outcomes."
* statistic.description 1..1 MS
  * ^short = "Result Description"
  * ^definition = "Narrative summary describing the matrixed study design and key findings."
// Optional quantitative outcome
* statistic.quantity 0..1 MS
  * ^short = "Summarized Quantitative Outcome"
  * ^definition = "Optional quantitative summary of the matrixed study results, such as predicted shelf life or failure rate."
