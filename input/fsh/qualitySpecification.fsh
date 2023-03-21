Extension: InterpretationCodeExtension
Id: pq-interpretation-code-extension
Title: "Interpretation Code"
Description: "A code that describes how to relate the given value to an acceptance value."
* value[x] only CodeableConcept
* value[x] from PqcmcInterpretationCodeTerminology (required)

Extension: SpecificationStatusExtension
Id: pq-specification-status-extension
Title: "Specification Status"
Description: """The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, etc.
Note: There are instances when FDA does approve the Specifications in a supplement or an amendment where other information in the dossier has not changed.
"""

* value[x] 1..1 MS
  * ^short = "Specification Status"
  * ^definition = """ The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, etc.
Note: There are instances when FDA does approve the Specifications in a supplement or an amendment where other information in the dossier has not changed.
Note: This is different from Application Status """
* value[x] only CodeableConcept
* value[x] from PqcmcSpecificationStatusTerminology (required)

Extension: SpecificationTypeExtension
Id: pq-specification-type-extension
Title: "Specification Type"
Description: """A classification of specification related to the kind of the entity it is referencing. [Source: SME Defined]
Examples: Drug product, drug substance, etc.
"""

* value[x] 1..1 MS
  * ^short = "Specification Type"
  * ^definition = """ A classification of specification related to the kind of entity it is referencing. [Source: SME Defined]
Examples: Drug product, Drug substance. 
"""
* value[x] only CodeableConcept
* value[x] from PqcmcSpecificationTypeTerminology (required)

Extension: TestOrderExtension
Id: pq-order-extension
Title: "Test Order | Stage Sequence Order"
Description: """Test Order: The sequential number assigned to each Test to specify the order of display on the Quality Specification. [Source: SME Defined]
Stage Sequence Order: The order of the stages in regular succession. [Source: SME Defined]
Examples: 1, 2, 3.
"""
* value[x] only decimal

Extension: RRTExtension
Id: pq-rrt-extension
Title: "Relative Retention Time"
Description: "The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP]
Example: 1:23 (a ratio)
Note: This is the title or name of the impurity (sometimes expressed as a ratio) and not the value"
* value[x] only string

Profile: QualitySpecification
Parent: PlanDefinition
Id: pqcmc-quality-specification
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."

* extension contains 
    pq-specification-status-extension named specificationStatus 1..1 MS and
    pq-specification-type-extension named specificationType 1..1 MS and
    pq-additional-info-extension named spec-additional-info 0..1 MS
* extension[spec-additional-info] ^short = "Specification Additional Information"
* extension[spec-additional-info] ^definition = """Placeholder for providing any comments that are relevant to the specification. [Source: SME Defined]
Examples: replaces method ABC, using the XYZ facility.
"""
* identifier 1..1 MS
* version 1..1 MS
* version ^short = "Specification Version"
* version ^definition = """ The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined]
Examples: 2.1, 13.2, ST1, 00001, 00002, <companyname>001, etc.
Note: This value should be unique across all specifications for a given material, not just those with the same name """
* title 1..1 MS
* title ^short = "Specification Title"
* title ^definition = """ The textual identification for the specification. [Source: SME Defined]
 Example: <drug name> 75 mg chewable tablets
 Note: This may include the name of the drug substance, product or the raw material/excipients. """
* subtitle 0..1 MS
* subtitle ^short = "Specification Subtitle"
* subtitle ^definition = "An additional textual identification for the specification [Source: SME Defined]."
* status MS
* subjectReference 1..1 MS
* subjectReference only Reference(RoutineDrugProduct or RoutineSubstanceDefinition or ExcipientRaw)
* date 1..1 MS
* date ^short = "Specification Version Date"
* date ^definition = """The date when the sponsor assigned a date to a specific version. [Source: SME Defined]
Note: This is the date a particular version of the specification was internally accepted by the submitter.
"""
* useContext MS
* useContext ^short = "Specification Status"
* useContext ^definition = """The current FDA regulatory status of the specification. [Source: SME Defined]
Examples: Approved, Not Approved, Reported in a CBE or AR.
Note: There are instances when FDA does approve the Specifications in a supplement or an amendment where other information in the dossier has not changed.
Note: This is different from Application Status"""
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow	"Workflow Setting"
* useContext.valueCodeableConcept.coding from PqcmcSpecificationStatusTerminology
* approvalDate  MS
* approvalDate ^short = "Specification Status Date"
* approvalDate ^definition = """ The date on which the FDA approval status for a specification became effective. [Source: SME Defined]
Note: If the application is not yet approved, then this is the date of the current submission OR the date of the complete response (CR).
Note: This is not the application approval status date. """
* goal.description 1..1 MS
* goal.description ^short = "Original Text"
* goal.description ^definition = """ The text of the acceptance criteria as provided in the specification. [Source: SME Defined]
Examples: White to off-white cake; 22.5 - 27.5 mg/ml Note: This is the text as it appears in the Specification. """
* goal.addresses 1..* MS
* goal.addresses.coding.code 1..1 MS
* goal.addresses.coding.code ^short = "Aceptacnce Criteria Usage"
* goal.addresses.coding.code ^definition = "A coded value specifying when a particular analytical procedure or measurement is being performed on a substance or a product. [Source: SME Defined]  Examples: Release, Stability.
Note: The concept of  'In-Process' is  subsumed by the Release code. "
* goal.addresses.coding.code from PqcmcTestUsageTerminology
* goal.addresses.text ^short = ""

* goal.documentation 0..* MS
* goal.documentation.type = http://hl7.org/fhir/related-artifact-type#comments-on
* goal.documentation.display 1..1 MS
* goal.documentation.display ^short = "Acceptance Criteria Additional Information"
* goal.documentation.display ^definition = """ A textual field to provide any additional information about the acceptance criteria. [Source: SME Defined]
Example: value changed from 4% to 5% on 01/01/2010) """
* goal.target 1..* MS
* goal.target.measure MS 
* goal.target.measure.text 1..1 MS
* goal.target.detail[x] only Quantity or Range  or string or integer
* goal.target.detailQuantity  0..1 MS
* goal.target.detailQuantity ^short = "Acceptance Criteria (Numeric)"
* goal.target.detailQuantity.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailQuantity.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailQuantity.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
* goal.target.detailQuantity.value 1..1 MS
* goal.target.detailQuantity.unit 1..1 MS
* goal.target.detailQuantity.code 1..1 MS
* goal.target.detailQuantity.code from  PqcmcUnitsMeasureTerminology

* goal.target.detailRange  0..1 MS
* goal.target.detailRange ^short = "Acceptance Criteria (Numeric range)"
* goal.target.detailRange
* goal.target.detailRange.low 1..1
* goal.target.detailRange.low.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange.low.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. """
* goal.target.detailRange.low.value 1..1 MS
* goal.target.detailRange.low.unit 1..1 MS
* goal.target.detailRange.low.code 1..1 MS
* goal.target.detailRange.low.code from  PqcmcUnitsMeasureTerminology
* goal.target.detailRange.high 1..1
* goal.target.detailRange.high.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange.high.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. """
* goal.target.detailRange.high.value 1..1 MS
* goal.target.detailRange.high.unit 1..1 MS
* goal.target.detailRange.high.code 1..1 MS
* goal.target.detailRange.high.code from  PqcmcUnitsMeasureTerminology

* goal.target.detailString  0..1 MS
* goal.target.detailString ^short = "Acceptance Criteria (Text)"
* goal.target.detailString.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailString.extension[interpretationCode].valueCodeableConcept ^short = "Interpretation Code"
* goal.target.detailString.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
* goal.target.detailString.extension[interpretationCode].valueCodeableConcept.coding = #C48660 "Not Applicable"

* goal.target.detailInteger  0..1 MS
* goal.target.detailInteger ^short = "Replicate Number"
* goal.target.detailInteger ^definition =  """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] 
Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
"""	
* goal.target.detailInteger.value 1..1 MS
* action MS
* action ^short = "Test or Stage"
* action.extension contains pq-order-extension named testOrder 1..1 MS  
* action.extension[testOrder] ^short = "Test/Stage Order"
* action.extension[testOrder] ^definition = "The sequential number assigned to each Test to specify the order of display on the Quality Specification. [Source: SME Defined]"
* action.extension[testOrder].valueDecimal 1..1 MS 
* action.linkId MS
* action.linkId ^short = "only required for staged test and alternate test"
* action.prefix 1.. MS
* action.prefix ^short = "Stage Name"
* action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined]
Examples – Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP <711>)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - USP <151>; 21 CFR 610.13(b) Test for pyrogenic substances)
Default 'Single Stage'.
"""
* action.title 1.. MS
* action.title ^short = "Test Name"
* action.title ^definition = """The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
"""
* action.title.extension contains pq-rrt-extension named rrt 0..1 MS
* action.description 0..1 MS
* action.description ^short = "Test Additional Information | Stage Additional Information"
* action.description ^definition = """Test Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined].
Stage Additional Information: Placeholder for providing any comments that are relevant to the Test. [Source: SME Defined]
If there is more than one comment, include in this element.  Markdown allows formating for clarity.
"""
* action.code  MS
* action.code ^short = "Not requried if test has stages and action is not first stage"
* action.code.coding obeys cmc-sub-test-category
* action.code.coding ^slicing.discriminator.type = #pattern
* action.code.coding ^slicing.discriminator.path = "$this"
* action.code.coding ^slicing.rules = #open
* action.code.coding contains
    testCategory 1..1 and
    testSubCat 0..1 and
    methodOrigin 1..1
* action.code.coding[testCategory].code MS
* action.code.coding[testCategory].code from PqcmcTestCategoryTerminology
* action.code.coding[testCategory].code ^short = "Test Category"
* action.code.coding[testCategory].code ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* action.code.coding[testSubCat].code MS
* action.code.coding[testSubCat].code from PqcmcTestSubCategoryTerminology
* action.code.coding[testSubCat].code ^short = "Test Sub-category"

* action.code.coding[methodOrigin].code MS
* action.code.coding[methodOrigin].code ^short = "Test Method Origin"
* action.code.coding[methodOrigin].code ^definition = "A coded value specifying the source of the method. [Source: SME Defined] Example: Compendial"
* action.code.coding[methodOrigin].code from PqcmcTestMethodOriginTerminology
* action.code.text 1..1 MS
* action.code.text ^short = "Analytical Procedure"
* action.code.text ^definition = """ The name of the technique used to determine the nature of a characteristic. [Source: SME Defined].
Note: The full descriptor of the technique is part of the next data element - Reference to Procedure """

* action.documentation 0..1 MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.documentation.label 1..1 MS
* action.documentation.label ^short = "Reference to Procedure"
* action.documentation.label ^definition = """The reference to the actual file of the analytical procedure.
Example: the file path to the procedure document.
"""
* action.goalId 1..* MS
* action.goalId ^short = "Reference to Acceptance Criteria"
* action.relatedAction MS
* action.relatedAction ^short = "Alternate Test or Subsequent Stage"
* action.relatedAction.targetId MS
* action.relatedAction.relationship MS
* action.relatedAction.relationship ^short = "concurrent for Alternate Test; after-end for Stage testing"
* action.selectionBehavior MS
* action.selectionBehavior ^short = "Only required when relatedAction is an alternate test. Value will be exactly-one"
//* //element(*,PlanDefinition)/action/selectionBehavior/@value
* action.action 0..* MS
* action.action ^short = "Alternate if required for elaborate testing.  Use testOrder decimal values to indicate group sequencing."


Profile: QualitySpecificationTemp
Parent: PlanDefinition
Id: pqcmc-quality-specification-temp
Title: "Quality Specification"
Description: "A quality specification is for a drug product or drug substance (excipient, API or raw material)."
* goal.description 1..1 MS
* goal.description ^short = "Original Text"
* goal.description ^definition = """ The text of the acceptance criteria as provided in the specification. [Source: SME Defined]
Examples: White to off-white cake; 22.5 - 27.5 mg/ml Note: This is the text as it appears in the Specification. """
* goal.addresses 1..* MS
* goal.addresses.coding.code 1..1 MS
* goal.addresses.coding.code ^short = "Aceptacnce Criteria Usage"
* goal.addresses.coding.code ^definition = "A coded value specifying when a particular analytical procedure or measurement is being performed on a substance or a product. [Source: SME Defined]  Examples: Release, Stability.
Note: The concept of  'In-Process' is  subsumed by the Release code. "
* goal.addresses.coding.code from PqcmcTestUsageTerminology
* goal.addresses.text ^short = ""

* goal.documentation 0..* MS
* goal.documentation.type = http://hl7.org/fhir/related-artifact-type#comments-on
* goal.documentation.display 1..1 MS
* goal.documentation.display ^short = "Acceptance Criteria Additional Information"
* goal.documentation.display ^definition = """ A textual field to provide any additional information about the acceptance criteria. [Source: SME Defined]
Example: value changed from 4% to 5% on 01/01/2010) """
* goal.target 1..* MS
* goal.target.measure MS 
* goal.target.measure.text 1..1 MS
* goal.target.detail[x] only Quantity or Range  or string or integer
* goal.target.detailQuantity  0..1 MS
* goal.target.detailQuantity ^short = "Acceptance Criteria (Numeric)"
* goal.target.detailQuantity.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailQuantity.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailQuantity.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
* goal.target.detailQuantity.value 1..1 MS
* goal.target.detailQuantity.unit 1..1 MS
* goal.target.detailQuantity.code 1..1 MS
* goal.target.detailQuantity.code from  PqcmcUnitsMeasureTerminology

* goal.target.detailRange  0..1 MS
* goal.target.detailRange ^short = "Acceptance Criteria (Numeric range)"
* goal.target.detailRange
* goal.target.detailRange.low 1..1
* goal.target.detailRange.low.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange.low.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. """
* goal.target.detailRange.low.value 1..1 MS
* goal.target.detailRange.low.unit 1..1 MS
* goal.target.detailRange.low.code 1..1 MS
* goal.target.detailRange.low.code from  PqcmcUnitsMeasureTerminology
* goal.target.detailRange.high 1..1
* goal.target.detailRange.high.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* goal.target.detailRange.high.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. """
* goal.target.detailRange.high.value 1..1 MS
* goal.target.detailRange.high.unit 1..1 MS
* goal.target.detailRange.high.code 1..1 MS
* goal.target.detailRange.high.code from  PqcmcUnitsMeasureTerminology

* goal.target.detailString  0..1 MS
* goal.target.detailString ^short = "Acceptance Criteria (Text)"
* goal.target.detailString.extension contains pq-interpretation-code-extension named interpretationCode 1..1 MS
* goal.target.detailString.extension[interpretationCode].valueCodeableConcept ^short = "Interpretation Code"
* goal.target.detailString.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] Note: When result value is numeric there is a controlled vocabulary."""
* goal.target.detailString.extension[interpretationCode].valueCodeableConcept.coding = #C48660 "Not Applicable"

* goal.target.detailInteger  0..1 MS
* goal.target.detailInteger ^short = "Replicate Number"
* goal.target.detailInteger ^definition =  """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] 
Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
"""	
* goal.target.detailInteger.value 1..1 MS