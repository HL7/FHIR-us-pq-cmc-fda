Extension: SpecificationStatusExtension
Id: pq-specification-status-extension
Title: "Specification Status"
Description: "A classification of the regulatory status of the specification."
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition"
* value[x] 1..1 MS
  * ^short = "Specification Stutus"
  * ^definition = """The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, Reported in a CBE or AR. 
"""
* value[x] only CodeableConcept
* value[x] from PqcmcSpecificationStatusTerminology (required)

Extension: HierarchicalLevelExtension
Id: pq-hierarchical-level-extension
Title: "Hierarchical Level"
Description: "Numeric level in the hierarchical value-set. As an example, this extension is used to distinguished between Test Category | Test Subcategory in Quality Specifications. Test Category is level 1 and Test Subcategory is level two. A constraint enforces values greater than zero. "
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action.reason"

* value[x] 1..1 MS
  * ^short = "TestCategory  Level"
  * ^definition = """Level within the hierarchical value-set. E.g: first level equals 1, second level equals 2."""
* value[x] only positiveInt

Extension: TargetRange
Id: pq-target-range
Title: "Target Range"
Description: "The FHIR Range datatype uses Simple Quantities to represent the high and low bounds, which do not allow a comparator to be set. This extension allows the high and low bounds to have a comparator"
Context: PlanDefinition.goal.target
* . ?!
* . ^isModifierReason = "When present, the target cannot have a detail; instead this extension acts as its detail"
* extension 
  * ^short = "ValueNumeric (range)"
  * ^definition = """The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"""
* extension contains 
  low 1..1 MS and
  high 1..1 MS
* extension[low]
  * value[x] 1..1 MS
  * value[x] only Quantity
    * value 1..1 MS
    * unit 1..1 MS
* extension[high]
  * value[x] 1..1 MS
  * value[x] only Quantity
    * value 1..1 MS
    * unit 1..1 MS

Invariant: cmc-target-range
Description: "When the Range extension is present, detail cannot be present."
Expression: "modifierExtension.where(url = 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-target-range').exists() implies detail.exists().not()"
Severity: #error

Profile: QualitySpecification
Parent: PlanDefinition
Id: pqcmc-quality-specification
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."

* extension contains 
    pq-specification-status-extension named ApprovalStatus 1..1 MS and
    pq-additional-info-extension named spec-additional-info 0..1  
* extension[spec-additional-info] ^short = "Specification Additional Information"
* extension[spec-additional-info] ^definition = """Placeholder for providing any comments that are relevant to the specification. [Source: SME Defined]
Examples: replaces method ABC, using the XYZ facility.
"""
* identifier 0..* MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined] Examples: 2.1, 13.2, ST1, 00001, 00002, companyname-001.
Note: This value should be unique across all specifications for a given material, not just those with the same name"""
* title 1..1 MS
* title ^short = "Specification Title"
* title ^definition = """The textual identification for the specification. [Source: SME Defined]
Example: &lt;drug name> 75 mg chewable tablets
Note: This may include the name of the drug substance, product or the raw material/excipients"""
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* subtitle ^definition = "An additional textual identification for the specification [Source: SME Defined]."
* type 1..1 MS
  * coding 2..2 MS
  * coding ^slicing.discriminator.type = #value
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #closed
  * coding ^slicing.description = "Slice on the coding itself"
  * coding ^slicing.ordered = false
  * coding contains 
    DefinitionType 1..1 MS and
    SpecType 1..1 MS
  * coding[DefinitionType] = http://terminology.hl7.org/CodeSystem/plan-definition-type#workflow-definition "Workflow Definition"
  * coding[SpecType] from PqcmcSpecificationTypeTerminology (required)
  * coding[SpecType]  ^short = "Specification Type"
  * coding[SpecType] ^definition = "A classification of specification related to the kind of the entity it is referencing."
  * ^short = "Specification Type"
  * ^definition = """A classification of specification related to the kind of entity it is referencing. [Source: SME Defined]
Examples: Drug product, Drug substance. 
"""
* status MS
* subject[x] 1..1 MS
* insert PQReference(subject[x])
* subject[x] only Reference(DrugProductHandle or SubstanceDefinitionHandle or ExcipientRaw)
* date 1..1 MS
* date ^short = "Specification Version Date"
* date ^definition = """The date when the sponsor assigned a date to a specific version. [Source: SME Defined]
Note: This is the date a particular version of the specification was internally accepted by the submitter.
"""
* approvalDate  MS
* approvalDate ^short = "Specification Status Date"
* approvalDate ^definition = """The date on which the FDA approval status for a specification became effective. [Source: SME Defined]
Note: If the application is not yet approved, then this is the date of the current submission OR the date of the complete response (CR).
Note: This is not the application approval status date."""
* goal MS
* goal ^short = "Acceptance Criteria"
* goal.extension contains 
    pq-additional-info-extension named ac-additional-info 0..1  
* goal.extension[ac-additional-info] ^short = "Acceptance Criteria Additional Information"
* goal.extension[ac-additional-info] ^definition = """A coded value specifying when a particular analytical procedure or measurement is being performed on a substance or a product. [Source: SME Defined]  Examples: Release, Stability.
Note: The concept of  'In-Process' is  subsumed by the Release code.
Example: value changed from 4% to 5% on 01/01/2010) """
* goal.description 1..1 MS
* goal.description ^short = "Original Text"
* goal.description ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined]
Examples: White to off-white cake; 22.5 - 27.5 mg/ml Note: This is the text as it appears in the Specification."""
* goal.addresses 1..* MS
* goal.addresses from PqcmcTestUsageTerminology (required)
  * ^short = "Acceptance Criteria Usage"
  * ^definition = """
    A coded value specifying when a particular analytical procedure or measurement is being performed on a substance or a product. [Source: SME Defined]  Examples: Release, Stability.
    Note: The concept of  'In-Process' is  subsumed by the Release code.
  """
* goal.target 1..* MS
* goal.target obeys cmc-target-range
* goal.target ^short = "Acceptance Criteron"
  * modifierExtension contains pq-target-range named targetRange 0..1 MS
* goal.target.measure 0..1 MS
* goal.target.measure only CodeableConceptTextOnly
  * ^short = "Detailed parameter being measured if more granular than Sub-Test"
* goal.target.detail[x] MS
* goal.target.detail[x] only Quantity or string or integer
* goal.target.detailQuantity  0..1 MS
* goal.target.detailQuantity ^short = "ValueNumeric"
* goal.target.detailQuantity ^definition = """The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"""
* goal.target.detailQuantity from  PqcmcUnitsMeasure (required)  
* goal.target.detailQuantity.value 1..1 MS
* goal.target.detailQuantity.comparator 0..1 MS
* goal.target.detailQuantity.unit 1..1 MS
* goal.target.detailQuantity.code 1..1 MS

* goal.target.detailString 0..1 MS
  * ^short = "Value"
  * ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined] Examples – Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP &lt;711>)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - USP &lt;151>; 21 CFR 610.13 (b) Test for pyrogenic substances)
"""
* goal.target.detailInteger  0..1 MS
* goal.target.detailInteger ^short = "Number of Replicates"
* goal.target.detailInteger ^definition = """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] 
Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
"""	
* goal.target.due 0..0
* action obeys cmc-link-required and cmc-single-or-multistage
* action 1..* MS
* action ^short = "Method"
* action.linkId MS
* action.linkId ^short = "only required for alternate tests"
* action.prefix 0..1 MS
* action.prefix ^short = "Stage Name"
* action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined] Examples – Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP  &lt;711&gt;)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - &lt;151&gt;; 21 CFR 610.13 (b) Test for pyrogenic substances)

Implememtation Note:  Value at this level is 'Single Stage'
"""
* action.title 1..1 MS
* action.title ^short = "Test Name"
* action.title ^definition = """The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
"""
* action.description 0..1 MS
* action.description ^short = "Test Additional Information"
* action.description ^definition = """Test Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].
If there is more than one comment, include in this element.  Markdown allows formating for clarity.
"""
* action.code 1..1 MS
* action.code ^short = "Test Method Origin"
* action.code ^definition = "A coded value specifying the source of the method. [Source: SME Defined] Example: Compendial"
// code is a codeableConcept but both the coding and text portions are being used
// so the binding is down at the coding level
* action.code.coding 1..1 MS
* action.code.coding from PqcmcTestMethodOriginTerminology (required)
* action.code.text 1..1 MS
* action.code.text ^short = "Analytical Procedure"
* action.code.text ^definition = """The name of the technique used to determine the nature of a characteristic. [Source: SME Defined].
"""
* action.reason 1..2 MS
* action.reason ^short = "Test Category | Test Subcategory"
* action.reason ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
// This is an extension from before the hierarchical relationship was included
// in the codesystem. This should probably be removed -- there shouldn't be an
// extension on a datatype (CodeableConcept) and the codesystem would reveal
// the hiearchy if only the child were provided. If both are the parent and 
// child code are truly needed a better way to do this would be with two value
// sets (one with parent codes (required), one with child codes(optional))
* action.reason.extension contains pq-hierarchical-level-extension named categoryLevel 1..1 MS
* action.reason from PqcmcTestCategoryTerminology (required)
* action.documentation 0..1 MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.documentation.label 1..1 MS
* action.documentation.label ^short = "Reference to Procedure"
* action.documentation.label ^definition = """A sponsor/applicant provided alphanumeric code that identifies the procedure. [Source: SME Defined]. Example: HP1234-2008
Note: This could also be a transferred lab method.
"""
* action.relatedAction 0..* MS
* action.relatedAction ^short = "Alternate Test"
* action.relatedAction ^definition = "Alternate Tests are one or more test that are equivalent often using differnt method or equipment. The tests are used interchangeably and only one is used to satisfy the drug product specificaion."
* action.relatedAction.targetId MS
* action.relatedAction.relationship MS
* action.relatedAction.relationship ^short = "Code is concurrent"
* action.relatedAction.relationship = $ActRelationType#concurrent "Concurrent"
* action.goalId 0..* MS
* action.goalId ^short = "Reference to Acceptance Criteria"

//* action.action obeys cmc-at-least-one
* action.action 0..* MS
* action.action ^short = "Groups or Stages"
* action.action.prefix 0..1 MS
* action.action.prefix ^short = "Stage Name"
* action.action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined] Examples – Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP  &lt;711&gt;)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - &lt;151&gt;; 21 CFR 610.13 (b) Test for pyrogenic substances)

Implememtation Note: not requried if action.prefix is 'Single Stage'
"""
* action.action.title 0..1 MS 
* action.action.title ^short = "Test Name (only reqired if different than above)"
* action.action.title ^definition = """Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
Note: The test name of the action.action can be different than the action.  Example,  the action test is Microbial Limits and the action.action test is Staphylococcus aureus.
"""
* action.action.description 0..1 MS
* action.action.description ^short = "Test Additional Information | Stage Additional Information"
* action.action.description ^definition = """Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].

Implementation Note: If there is more than one comment, include in this element.  Markdown allows formating for clarity.
"""
* action.action.documentation 0..* MS
* action.action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.action.documentation.document  1..1 MS
* action.action.documentation.document ^short = "Test or Stage Additional Information Visual Attachments"
* action.action.documentation.document ^definition = """Any visual data described andor referenced in additional informatation"""
* action.action.documentation.document.contentType 1..1 MS
* action.action.documentation.document.data 1..1 MS
* action.action.documentation.document.title 1..1 MS 
* action.action.documentation.document.title ^short = "Document file name including the file extension"
* action.action.documentation.document.title ^definition = """A format or abbreviation name that identifies a file structure. [Source: SME Defined]
Used for the following: Analytical Instrument Data File Type, Impurity Analysis Graphic, Impurity Analytical Instrument Data File, Impurity Chemical Structure Data File, and Substance Structure Graphic.
"""
* action.action.goalId 0..* MS
* action.action.goalId ^short = "Reference to Acceptance Criteria"

* action.action.action 0..* MS
* action.action.action obeys cmc-subtest-rrt
* action.action.action ^short = "Sub-Test"
* action.action.action.prefix 0..1 MS
* action.action.action.prefix ^short = "RRT"
* action.action.action.prefix ^definition = """RRT: The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
Example: 1:23 (a ratio)
Note:  This is the title or name of the impurity (sometimes expressed as a ratio) and not the value.

Implementation Note:  This value can only be 'RRT'. It is used to desinate that RRT value(s) expressed in action.action.action.title are relative retention times."""
* action.action.action.title 1..1 MS
* action.action.action.title ^short = "Test Name | RRT (complex testing)"
* action.action.action.title ^definition = """Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
Note: The test name of the action.action can be different than the action.  Example,  the action test is Microbial Limits and the action.action test is Staphylococcus aureus.

RRT: The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
Example: 1:23 (a ratio)
Note:  This is the title or name of the impurity (sometimes expressed as a ratio) and not the value. 

Implementation Note: For RRT, if there is a range associated with the unidentified peak then the range can be entered instead of indivual values.  E.g.:  0.4 – 0.8.
"""
* action.action.action.description 0..1 MS
* action.action.action.description ^short = "Test Additional Information | Stage Additional Information"
* action.action.action.description ^definition = """Test Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].
Stage Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined]
If there is more than one comment, include in this element.  Markdown allows formating for clarity.  If both types are present, indicate type.
"""
* action.action.action.goalId 1..* MS
* action.action.action.goalId ^short = "Reference to Acceptance Criteria"