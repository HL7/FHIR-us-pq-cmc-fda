Profile: StabilitySpecSummary
Parent: PlanDefinition
Id: pqcmc-stability-spec-summary
Title: "Stability Summary"
Description: "Summary of the types of studies conducted (forced degradation, photostability, and stress testing), protocols used, and the results of the studies"

* identifier 1..1 MS
* status MS
* subject[x] 1..1 MS
* insert PQReference(subject[x])
* subject[x] only Reference(DrugProductHandle or SubstanceDefinitionHandle)
* goal MS
* goal ^short = "Acceptance Criteria"

* goal.description 1..1 MS
* goal.description ^short = "Original Text"
* goal.description ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined]
Examples: White to off-white cake; 22.5 - 27.5 mg/ml Note: This is the text as it appears in the Specification."""

* action obeys cmc-link-required and cmc-single-or-multistage
* action 1..* MS
* action ^short = "Method"
* action.linkId MS
* action.linkId ^short = "only required for alternate tests"
* action.prefix 0..1 MS
* action.prefix ^short = "Stage Name"
* action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined] Examples - Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP  &lt;711&gt;)
Note: A Stage may or may not provide a conditional sequence with associated acceptance criteria. [Source: SME Defined] (e.g., dissolution test, pyrogen test - &lt;151&gt;; 21 CFR 610.13 (b) Test for pyrogenic substances)

Implememtation Note:  Value at this level is 'Single Stage'
"""
* action.title 1..1 MS
* action.title ^short = "Test Name"
* action.title ^definition = """The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor
"""
* action.code.text 1..1 MS
* action.code.text ^short = "Analytical Procedure"
* action.code.text ^definition = """The name of the technique used to determine the nature of a characteristic. [Source: SME Defined].
"""
* action.reason 1..2 MS
* action.reason ^short = "Test Category | Test Subcategory"
* action.reason ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* action.reason from PqcmcTestCategoryTerminology (required)
* action.documentation 0..1 MS
* action.documentation.type = http://hl7.org/fhir/related-artifact-type#documentation
* action.goalId 0..* MS
* action.goalId ^short = "Reference to Acceptance Criteria"

//* action.action obeys cmc-at-least-one
* action.action 0..* MS
* action.action ^short = "Groups or Stages"
* action.action.prefix 0..1 MS
* action.action.prefix ^short = "Stage Name"
* action.action.prefix ^definition = """A textual description and/or a number that identifies a level within a sequential test. [Source: SME Defined] Examples - Single Stage, Stage 1, Stage 2 (sometimes referred to as L1, L2 L3 or A1, A2 as in USP  &lt;711&gt;)
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
* action.action.goalId 0..* MS
* action.action.goalId ^short = "Reference to Acceptance Criteria"

Profile: ResultSummary
Parent: Observation	
Id: pq-result-summary	
Title: "Result Summary"	
Description: "Observation capturing one set of stability parameters (assay, impurities, etc.) for a given batch at a specific time point and storage condition."

* identifier.value 1..1 MS	
  * ^short = "Stage Name"	
  * ^definition = """
    A set of discrete sequential steps performed on a given test. [Source: SME Defined]
    Note: This is either 'Single Stage' for non-staged tests and 'Multi-Stage' for tests with more than one stage. Use hasMember to report multiple stages.
  """
* status MS	
* category MS
* category from PqcmcStorageConditionsTerminology (required)
  * ^short = "Storage Conditions Temp.RH"
  * ^definition = " The temperature and the relative humidity under which the study was performed. [Source: SME Defined]"
* code 1..1 MS
* code from PqcmcContainerOrientationTerminology (required)
  * ^short = "Container Orientation"
  * ^definition = """
    The placement of a container during storage to understand the interactions between the product and the closure. [Source: SME Defined]
    Examples: horizontal, upright.
  """
* subject 1..1 MS
  * ^short = "A single medication batch/lot or a single subtance batch/lot"	
* subject only Reference(DrugProductBatch or DrugSubstanceBatch)	

* component 1..* MS	
  * ^short = "Interval"	
  * extension contains pq-timePoint-extension named studyInterval 1..1 MS 
* component.code.coding 1..2 MS
  * ^short = "Test Category | Test Subcategory"
  * ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* component.code.coding from PqcmcTestCategoryTerminology (required)
* component
  * value[x] 1..1 MS	
    * ^short = "Summary Result"
    * ^definition = """For a single replicate enter the single value. For multiple replicates either:
    enter the mean as a quantity or enter the upper and lower values as a  range
    """	
  * value[x] only Quantity or string or Range
  * valueQuantity from http://hl7.org/fhir/ValueSet/ucum-units (required)
    * value 1..1 MS
      * ^short = "ValueNumeric"	
      * ^definition = """
        The numeric value of the result of the test.
      """
    * code 1..1 MS	
      * ^short = "ValueNumeric UOM"	
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]
      """	
  * valueString 0..1 MS
    * ^short = "Value"	
    * ^definition = """
      The qualitative or text value of the result of the test.
      Note: Enter 
    """
  * valueRange 0..1 MS
    * ^short = "Value"	
    * ^definition = "The upper and lower values of the result replicates of the test."
    * low 1..1 MS
    * low.value 1..1 MS
      * ^short = "ValueNumeric"	
      * ^definition = """
        The numeric value of the result of the test.
      """
    * low.code 1..1 MS	
      * ^short = "ValueNumeric UOM"	
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]
      """	
    * high 1..1 MS
    * high.value 1..1 MS
      * ^short = "ValueNumeric"	
      * ^definition = """
        The numeric value of the result of the test.
      """
    * high.code 1..1 MS	
      * ^short = "ValueNumeric UOM"	
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]
      """	
