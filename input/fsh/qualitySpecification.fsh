Extension: InterpretationCodeExtension
Id: pq-interpretation-code-extension
Title: "Interpretation Code"
Description: "A code that describes how to relate the given value to an acceptance value."
* ^context[+].type = #element
* ^context[=].expression = "Observation.referenceRange.low"
* ^context[+].type = #element
* ^context[=].expression = "Observation.referenceRange.high"
* ^context[+].type = #element
* ^context[=].expression = "Observation.component.referenceRange.low"
* ^context[+].type = #element
* ^context[=].expression = "Observation.component.referenceRange.high"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.goal.target.detail.ofType(Quantity)"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.goal.target.detail.ofType(Range).low"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.goal.target.detail.ofType(Range).high"

* value[x] only CodeableConcept
* value[x] from PqcmcInterpretationCodeTerminology (required)

Extension: SpecificationTypeExtension
Id: pq-specification-type-extension
Title: "Specification Type"
Description: "A classification of specification related to the kind of the entity it is referencing"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition"
* value[x] 1..1 MS
  * ^short = "Specification Type"
  * ^definition = """A classification of specification related to the kind of entity it is referencing. [Source: SME Defined]
Examples: Drug product, Drug substance. 
"""
* value[x] only CodeableConcept
* value[x] from PqcmcSpecificationTypeTerminology (required)

Extension: HierarchicalLevelExtension
Id: pq-hierarchical-level-extension
Title: "Hierarchical Level"
Description: "Numeric level in the hierarchical value-set"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action.reason"

* value[x] 1..1 MS
  * obeys cmc-greater-than-zero
  * ^short = "TestCategory  Level"
  * ^definition = """Level within the hierarchical value-set. E.g: first level equals 1, second level equals 2."""
* value[x] only integer

Extension: TestOrderExtension 
Id: pq-order-extension
Title: "Test Order | Stage Sequence Order"
Description: "The sequential number assigned to each Test or Stabe to specify the order of display on the Quality Specification."
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action.action"
* value[x] only decimal

Profile: QualitySpecification
Parent: PlanDefinition
Id: pqcmc-quality-specification
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."

* meta.profile 0..1 MS
* extension contains 
    pq-specification-type-extension named specificationType 1..1 MS and
    pq-additional-info-extension named spec-additional-info 0..1 MS
* extension[spec-additional-info] ^short = "Specification Additional Information"
* extension[spec-additional-info] ^definition = """Placeholder for providing any comments that are relevant to the specification. [Source: SME Defined]
Examples: replaces method ABC, using the XYZ facility.
"""
* identifier 0..1 MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined]
Examples: 2.1, 13.2, ST1, 00001, 00002, &lt;companyname&gt;001, etc.
Note: This value should be unique across all specifications for a given material, not just those with the same name"""
* title 1..1 MS
* title ^short = "Specification Title"
* title ^definition = """The textual identification for the specification. [Source: SME Defined]
 Example: &lt;drug name&gt; 75 mg chewable tablets
 Note: This may include the name of the drug substance, product or the raw material/excipients."""
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* subtitle ^definition = "An additional textual identification for the specification [Source: SME Defined]."
* status MS
* subject[x] 1..1 MS
* subject[x] only Reference(RoutineDrugProduct or RoutineSubstanceDefinition or ExcipientRaw)
* date 1..1 MS
* date ^short = "Specification Version Date"
* date ^definition = """The date when the sponsor assigned a date to a specific version. [Source: SME Defined]
Note: This is the date a particular version of the specification was internally accepted by the submitter.
"""
* useContext 1..1 MS
* useContext ^short = "Specification Status"
* useContext ^definition = """The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, Reported in a CBE or AR.
Note: There are instances when FDA does approve the Specifications in a supplement or an amendment where other information in the dossier has not changed.
Note: This is different from Application Status"""
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow	"Workflow Setting"
* useContext.valueCodeableConcept 1..1 MS
* useContext.valueCodeableConcept.coding from PqcmcSpecificationStatusTerminology (required)
* approvalDate  MS
* approvalDate ^short = "Specification Status Date"
* approvalDate ^definition = """The date on which the FDA approval status for a specification became effective. [Source: SME Defined]
Note: If the application is not yet approved, then this is the date of the current submission OR the date of the complete response (CR).
Note: This is not the application approval status date."""
* goal.description 1..1 MS
* goal.description ^short = "Original Text"
* goal.description ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined]
Examples: White to off-white cake; 22.5 - 27.5 mg/ml Note: This is the text as it appears in the Specification."""
* goal.addresses 1..* MS
* goal.addresses.coding.code 1..1 MS
* goal.addresses.coding.code ^short = "Aceptacnce Criteria Usage"
* goal.addresses.coding.code ^definition = "A coded value specifying when a particular analytical procedure or measurement is being performed on a substance or a product. [Source: SME Defined]  Examples: Release, Stability.
Note: The concept of  'In-Process' is  subsumed by the Release code."
* goal.addresses.coding.code from PqcmcTestUsageTerminology (required)
* goal.addresses.text ^short = "Accpetance Criteria Usage"

* goal.documentation 0..* MS
* goal.documentation.type = http://hl7.org/fhir/related-artifact-type#comments-on
* goal.documentation.display 1..1 MS
* goal.documentation.display ^short = "Acceptance Criteria Additional Information"
* goal.documentation.display ^definition = """A textual field to provide any additional information about the acceptance criteria. [Source: SME Defined]
Example: value changed from 4% to 5% on 01/01/2010) """
* goal.target 1..* MS
* goal.target.measure.text 0..1 MS
* goal.target.measure.text ^short = "Detailed parameter being measured if more granular than action.action.title"
* goal.target.detail[x] MS
* goal.target.detail[x] only Quantity or Range  or CodeableConcept or integer
* goal.target.detailQuantity  0..1 MS
* goal.target.detailQuantity ^short = "Acceptance Criteria (Numeric)"
* goal.target.detailQuantity ^definition = """The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"""
* goal.target.detailQuantity.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailQuantity.extension[interpretationCode].valueCodeableConcept ^short = "Interpretation Code"
* goal.target.detailQuantity.extension[interpretationCode].valueCodeableConcept ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
* goal.target.detailQuantity.value 1..1 MS
* goal.target.detailQuantity.unit 1..1 MS
* goal.target.detailQuantity.code 1..1 MS
* goal.target.detailQuantity.code from  PqcmcUnitsMeasureTerminology (required)
* goal.target.detailRange  0..1 MS
* goal.target.detailRange ^short = "Acceptance Criteria (Numeric range)"
* goal.target.detailRange ^definition = """The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"""
* goal.target.detailRange
* goal.target.detailRange.low 1..1
* goal.target.detailRange.low.extension contains pq-interpretation-code-extension named interpretationCodeLow 1..1 MS
* goal.target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept ^short = "Interpretation Code"
* goal.target.detailRange.low.extension[interpretationCodeLow].valueCodeableConcept ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* goal.target.detailRange.low.value 1..1 MS
* goal.target.detailRange.low.unit 1..1 MS
* goal.target.detailRange.low.code 1..1 MS
* goal.target.detailRange.low.code from  PqcmcUnitsMeasureTerminology (required)
* goal.target.detailRange.high 1..1
* goal.target.detailRange.high.extension contains pq-interpretation-code-extension named interpretationCodeHigh 1..1 MS
* goal.target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept ^short = "Interpretation Code"
* goal.target.detailRange.high.extension[interpretationCodeHigh].valueCodeableConcept ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* goal.target.detailRange.high.value 1..1 MS
* goal.target.detailRange.high.unit 1..1 MS
* goal.target.detailRange.high.code 1..1 MS
* goal.target.detailRange.high.code from  PqcmcUnitsMeasureTerminology (required)
* goal.target.detailCodeableConcept 0..1 MS
  * coding 1..1 MS
  * coding from PqcmcInterpretationCodeTerminology (required)
  * coding ^short = "Interpretation Code"
  * coding ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
  //* coding = $NCIT#C48660 "Not Applicable"
  * coding = $NCIT#C48793 "EQ"	
  * text 1..1 MS 
    * ^short = "Acceptance Criteria (Text)"
    * ^definition = """The acceptable qualitative or text value of the result of the test. [Source: SME Defined]"""
* goal.target.detailInteger  0..1 MS
* goal.target.detailInteger ^short = "Number of Replicates"
* goal.target.detailInteger ^definition = """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] 
Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
"""	
* goal.target.due 0..0
* action obeys cmc-link-required
* action 1..* MS
* action ^short = "Method"
* action.extension contains pq-order-extension named testOrder 1..1 MS
* action.extension[testOrder] ^short = "Test Order"
* action.extension[testOrder] ^definition = """Test Order: The sequential number assigned to each Test to specify the order of display on the Quality Specification. [Source: SME Defined]
[Source: SME Defined]
Examples: 1, 2, 3.
"""
* action.extension[testOrder].valueDecimal 1..1 MS
* action.linkId MS
* action.linkId ^short = "only required for alternate tests"
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
//* action.code.coding obeys cmc-sub-test-category
//element(*,PlanDefinition)/action/code/coding
* action.code.coding.code 1..1 MS
* action.code.coding.code from PqcmcTestMethodOriginTerminology (required)
* action.code.text ^short = "Analytical Procedure"
* action.code.text ^definition = """The name of the technique used to determine the nature of a characteristic. [Source: SME Defined].
Note: The full descriptor of the technique is part of the next data element - Reference to Procedure """
//* coding obeys cmc-sub-test-category-batch
* action.reason 1..2 MS
* action.reason ^short = "Test Category | Test Subcategory"
* action.reason ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* action.extension contains pq-hierarchical-level-extension named categoryLevel 1..1 MS
* action.reason.coding.code 1..1 MS
* action.reason.coding.code from PqcmcTestCategoryTerminology (required)
* action.reason.coding.display  1..1
* action.documentation 0..1 MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.documentation.label 1..1 MS
* action.documentation.label ^short = "Reference to Procedure"
* action.documentation.label ^definition = """The reference to the actual file of the analytical procedure.
Example: the file path to the procedure document.
"""
* action.relatedAction 0..* MS
* action.relatedAction ^short = "Alternate Test"
* action.relatedAction ^definition = "Alternate Tests are one or more test that are equivalent often using differnt method or equipment. The tests are used interchangeably and only one is used to satisfy the drug product specificaion."
* action.relatedAction.targetId MS
* action.relatedAction.relationship MS
* action.relatedAction.relationship ^short = "Code is concurrent"
* action.relatedAction.relationship = $ActRelationType#concurrent "Concurrent"
* action.selectionBehavior MS
* action.selectionBehavior ^short = "Code is exactly-one"
* action.selectionBehavior = $ActSelection#exactly-one "Exactly One"
* action.action obeys cmc-at-least-one
* action.action 1..* MS
* action.action ^short = "Stage"
* action.action.extension contains pq-order-extension named stageOrder 1..1 MS
* action.action.extension[stageOrder] ^short = "Stage Order"
* action.action.extension[stageOrder] ^definition = """Stage Sequence Order: The order of the stages in regular succession. [Source: SME Defined]
Examples: 1, 2, 3.
"""
* action.action.extension[stageOrder].valueDecimal 1..1 MS
* action.action.prefix 1.. MS
* action.action.prefix ^short = "Stage Name"
* action.action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined]
Examples – Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP &lt;711&gt;)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - USP &lt;151&gt;; 21 CFR 610.13(b) Test for pyrogenic substances)
Default 'Single Stage'.
"""
* action.action.description 0..1 MS
* action.action.description ^short = "Test Additional Information | Stage Additional Information"
* action.action.description ^definition = """Test Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].
Stage Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined]
If there is more than one comment, include in this element.  Markdown allows formating for clarity.  If both types are present, indicate type.
"""
* action.action.goalId 0..* MS
* action.action.goalId ^short = "Reference to Acceptance Criteria"

* action.action.action 0..* MS
* action.action.action ^short = "Sub-Test"
* action.action.action.extension contains pq-order-extension named testOrder 1..1 MS
* action.action.action.extension[testOrder] ^short = "Test Order"
* action.action.action.extension[testOrder] ^definition = """Test Order: The sequential number assigned to each Test to specify the order of display on the Quality Specification. [Source: SME Defined]
[Source: SME Defined]
Examples: 1, 2, 3.
"""
* action.action.action.extension[testOrder].valueDecimal 1..1 MS
* action.action.action.title 0..1 MS
* action.action.action.title ^short = "Test Name  | RRT (complex testing)"
* action.action.action.title ^definition = """Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
Note: The test name of the action.action can be different than the action.  Example,  the action test is Microbial Limits and the action.action test is Staphylococcus aureus.

RRT: An alternative for test name when the RRT is used as an identifier for a substance, usually unknown.
"""
* action.action.action.description 0..1 MS
* action.action.action.description ^short = "Test Additional Information | Stage Additional Information"
* action.action.action.description ^definition = """Test Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].
Stage Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined]
If there is more than one comment, include in this element.  Markdown allows formating for clarity.  If both types are present, indicate type.
"""
* action.action.action.goalId 1..* MS
* action.action.action.goalId ^short = "Reference to Acceptance Criteria"