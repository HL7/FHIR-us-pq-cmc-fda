Extension: QualitySpecificationExtension
Id: pq-quality-specification-extension
Title: "Quality Specification Reference"
Description: "The product specification used in the batch release or stability testing."
* . ^short = "Specification and Specification Version"
* extension contains 
    specification 1..1 MS and
    specificationVersion 1..1 MS 
* extension[specification]
* extension[specification].valueString
* extension[specification].valueString ^short = "Specification Title"
* extension[specification].valueString ^definition = ""
* extension[specificationVersion]
* extension[specificationVersion].valueString
* extension[specificationVersion].valueString ^short = "Specification Version"
* extension[specificationVersion].valueString ^definition = ""

Extension: ReplicateExtension
Id:  pq-replicate-extension
Title: "Replicate Number"
Description: """An identification number for a  member of the set of results for a test, usually the sequence order in twheich the test was exectured. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] 
* Examples: Prepare six aliquots from the sample.
* Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method."""
* extension.value[x] only integer

Profile: BatchAnalysis
Parent: DiagnosticReport
Id: pqcmc-batch-analysis
Title: "Batch Analysis"
Description: "Batch or lot release testing  to ensure that pharmaceutical products meet the product specification."

* .extension contains pq-quality-specification-extension named qualitySpecification 1..1 MS
* identifier 1..1 MS
* identifier.value 1..1
* status MS
* status ^short = "Status of the batch analysis"
* status ^definition = "The status of the batch analysis. Consult the HL7 list of permitted values in http://hl7.org/fhir/ValueSet/diagnostic-report-status"
* code  1..1 MS
* code ^short = "Name for this batch analysis."
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

Profile: AdditionalStageResultObservation
Parent: Observation
Id: pq-additional-stage-result-observation
Title: "Result Observation"
Description: "Profile for an observation in a batch-analysis report or a stability report"

* identifier 1..1 MS
* identifier ^short = "Stage"
* identifier ^comment = "Note: This can be named or numbered.  This will never be 'Single Stage'."
* status MS
* value[x] 1..1 MS 
* value[x]  only Quantity or string
* valueQuantity 0..1 MS
* valueQuantity.unit 1..1 MS 
* valueQuantity.code 1..1 MS
* valueQuantity.code from  vsPqcmcUnitsofMeasureTerminology
* valueQuantity.value 0..1 MS
* valueString 0..1 MS
* dataAbsentReason MS
* interpretation 1..1 MS
* interpretation ^short = "Conformance to Criteria"
* interpretation from PqcmcConformanceCriteriaTerminology
* note MS
* note ^short = "Additional Information"
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'
* referenceRange 1..1 MS
* referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"
* referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS
* referenceRange.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.low MS
* referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.low.extension[interpretationCode] 1..1 MS
* referenceRange.low.unit 1..1 MS
* referenceRange.low.unit from  vsPqcmcUnitsofMeasureTerminology
* referenceRange.high MS
* referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.high.extension[interpretationCode] 1..1 MS
* referenceRange.high.value 1..1 MS
* referenceRange.high.unit 1..1 MS
* referenceRange.high.unit from  vsPqcmcUnitsofMeasureTerminology
* referenceRange.text ^short = "Original Text"
* referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."
* component 0..1 MS
* component ^short = "Grouped replicates"
* component.extension contains pq-replicate-extension named replicate  1..1 MS
* component.extension[replicate] ^short = "Replicate Number"
//* component.extension[replicate] only integer
* component.code.text 1..1 MS
* component.code.text ^short = "Test Name | RRT"
* component.value[x] 1..1 MS 
* component.valueQuantity 0..1 MS
* component.valueQuantity.unit 1..1 MS
* component.valueQuantity.code 1..1 MS
* component.valueQuantity.code from  vsPqcmcUnitsofMeasureTerminology
* component.valueQuantity.value 0..1 MS
* component.valueString 0..1 MS
* component.dataAbsentReason MS
* component.interpretation 1..1 MS
* component.interpretation ^short = "Conformance to Criteria"
* component.interpretation from PqcmcConformanceCriteriaTerminology
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'
* component.referenceRange 1..1 MS
* component.referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"
* component.referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS
* component.referenceRange.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.low MS
* component.referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* component.referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.low.value 1..1 MS
* component.referenceRange.low.unit 1..1 MS
* component.referenceRange.low.unit from  vsPqcmcUnitsofMeasureTerminology
* component.referenceRange.high MS
* component.referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* component.referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.high.extension[interpretationCode] 1..1 MS
* component.referenceRange.high.value 1..1 MS
* component.referenceRange.high.unit 1..1 MS
* component.referenceRange.high.unit from  vsPqcmcUnitsofMeasureTerminology
* component.referenceRange.text ^short = "Original Text"
* component.referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."

Profile: ResultObservation
Parent: Observation
Id: pq-result-observation
Title: "Result Observation"
Description: "Profile for an observation in a batch-analysis report or a stability report"

* identifier 1..1 MS
* identifier ^short = "Stage"
* identifier ^comment = "Note: This is a fixed value of 'Single Stage' for non-staged tests."
* status MS
* category  1..1 MS
* category ^short = "Test Category"
* category from vsPqcmcTestCategoryTerminology
* code.text 1..1 MS
* code.text ^short = "Test Name | RRT"
* effective[x] 1..1 MS
* effective[x] ^short = "Test Date"
* effective[x] only dateTime
* performer MS
* performer ^short = "Testing Site Unique Identifier"
* performer only Reference(MfgTestSiteOrganization)
* value[x] 1..1 MS 
* value[x]  only Quantity or string
* valueQuantity.unit 1..1 MS 
* valueQuantity.code 1..1 MS
* valueQuantity.code from  vsPqcmcUnitsofMeasureTerminology
* valueQuantity.value 0..1 MS
* valueString 0..1 MS
* dataAbsentReason MS
* interpretation 1..1 MS
* interpretation ^short = "Conformance to Criteria"
* interpretation from PqcmcConformanceCriteriaTerminology
* note MS
* note ^short = "Additional Information"
* method.text 1..1 MS
* method.text ^short = "Analytical Procedure"
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'
* referenceRange 1..1 MS
* referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"
* referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS
* referenceRange.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.low MS
* referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.low.value 1..1 MS
* referenceRange.low.unit 1..1 MS
* referenceRange.low.unit from  vsPqcmcUnitsofMeasureTerminology
* referenceRange.high MS
* referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* referenceRange.high.value 1..1 MS
* referenceRange.high.unit 1..1 MS
* referenceRange.high.unit from  vsPqcmcUnitsofMeasureTerminology
* referenceRange.text ^short = "Original Text"
* referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."
* hasMember MS
* hasMember only Reference(AdditionalStageResultObservation)
* hasMember ^comment = " Note: This is used to link to test results from Staged tests. Sequence Name must macht the name in the quality spedificaition."
* component 0..1 MS
* component ^short = "Grouped replicates"
* component.extension contains pq-replicate-extension named replicate  1..1 MS
* component.extension[replicate] ^short = "Replicate Number"
//* component.extension[replicate] only integer
* component.code.text 1..1 MS
* component.code.text ^short = "Test Name | RRT"
* component.value[x] 1..1 MS 
* component.valueQuantity 0..1 MS
* component.valueQuantity.unit 1..1 MS
* component.valueQuantity.code 1..1 MS
* component.valueQuantity.code from  vsPqcmcUnitsofMeasureTerminology
* component.valueQuantity.value 0..1 MS
* component.valueString 0..1 MS
* component.dataAbsentReason MS
* component.interpretation 1..1 MS
* component.interpretation ^short = "Conformance to Criteria"
* component.interpretation from PqcmcConformanceCriteriaTerminology
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'
* component.referenceRange 1..1 MS
* component.referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"
* component.referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS
* component.referenceRange.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.low MS
* component.referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* component.referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.low.value 1..1 MS
* component.referenceRange.low.unit 1..1 MS
* component.referenceRange.low.unit from  vsPqcmcUnitsofMeasureTerminology
* component.referenceRange.high MS
* component.referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS
* component.referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"
* component.referenceRange.high.value 1..1 MS
* component.referenceRange.high.unit 1..1 MS
* component.referenceRange.high.unit from  vsPqcmcUnitsofMeasureTerminology
* component.referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."

