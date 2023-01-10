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
* extension[specification].valueString ^definition = """The textual identification for the specification. [Source: SME Defined] 
* Example: <drug name> 75 mg chewable tablets 
Note: This may include the name of the drug substance, product or the raw material/excipients."""	
* extension[specificationVersion]	
* extension[specificationVersion].valueString	
* extension[specificationVersion].valueString ^short = "Specification Version"	
* extension[specificationVersion].valueString ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined] 
Examples: 2.1, 13.2, ST1, 00001, 00002, <companyname>001, etc. 
Note: This value should be unique across all specifications for a given material, not just those with the same name.
"""	
Extension: ReplicateExtension	
Id: pq-replicate-extension	
Title: "Replicate Number"	
Description: """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method."""	
* value[x] only integer	

Extension: PullDateExtension
Id: pq-pullDate-extension
Title: "Pull Date"
Description: "Contains elements related to the pull date of the study samples in a stability study."

* extension.value[x] only dateTime
* extension.value[x] ^short = "Pull Date"
* extension.value[x] ^definition = "The date when a particular sample of the batch lot was pulled from the stability chamber. [Source: SME Defined]"
	
Profile: BatchAnalysis	
Parent: DiagnosticReport	
Id: pqcmc-batch-analysis	
Title: "Batch Analysis"	
Description: "Batch or lot release testing  to ensure that pharmaceutical products meet the product specification."	
	
* .extension contains pq-quality-specification-extension named qualitySpecification 1..1 MS	
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"			
* status MS	
* status ^short = "Status of the batch analysis"	
* status ^definition = "The status of the batch analysis. Consult the HL7 list of permitted values in http://hl7.org/fhir/ValueSet/diagnostic-report-status"	
* code  1..1 MS	
* code ^short = "Name for this batch analysis."	
* code.coding 0..0	
* code.text 1..1 MS	
* subject 1..1 MS	
* subject only Reference(DrugProductBatch or DrugSubstanceBatch)	
* subject ^short = "A single medication batch/lot or a single subtance batch/lot"	
* effectiveDateTime	1..1 MS
* effectiveDateTime ^short = "Batch Analysis Release Date"
* effectiveDateTime ^definition = """The date at which the drug substance or drug product is released by the quality assurance unit of the sponsor/applicant. [Source: SME Defined]
Note: A single release date per batch.
"""
* performer 1..1 MS	
* performer only Reference(MfgTestSiteOrganization)	
* performer ^short = "Test Site"	
* performer ^definition = """Reference to the organization profile that contains: 
* Testing Site Name: The name of the establishment (facility) which tests the raw materials, intermediates, drug substance, drug product, packaging components, etc. [Source: SME Defined]
* Testing Site Address: The complete address for the testing site.  [Source: SME Defined]
* Testing Site Unique Identifier: A unique identifier assigned to the establishment (facility) which performs the testing. [Source: SME Defined]
* Testing Site Unique identifier Type:	A value that identifies the source of the unique identifier. [Source: SME Defined] Examples: DUNS, FEI. 
"""
* result MS	
* result only Reference(ResultObservation)	
	
Profile: MultipleReplicatesResultObservation	
Parent: Observation	
Id: pq-additional-stage-result-observation	
Title: "Multiple Result Observation"	
Description: "Profile for an observation in a batch-analysis report or a stability report"	
	
* identifier 1..1 MS	
* identifier ^short = "Stage"	
* identifier ^definition = """A set of discrete sequential steps performed on a given test. [Source: SME Defined]"""
* identifier ^comment = "Note: This can be named or numbered.  This will never be 'Single Stage'."	
* status MS	
* value[x] only Quantity or string	
* valueQuantity.value 0..1 MS	
* valueQuantity.value ^short = "ValueNumeric"	
* valueQuantity. ^definition = "The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "ValueNumeric UOM"	
* valueQuantity.unit ^definition = "A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]"	
* valueQuantity.code 1..1 MS	
* valueQuantity.code from  PqcmcUnitsMeasureTerminology
* valueString 0..1 MS
* valueString ^short = "Value"	
* valueString ^definition = "The acceptable qualitative or text value of the result of the test. [Source: SME Defined]"
* dataAbsentReason MS	
* interpretation 1..1 MS	
* interpretation ^short = "Conformance to Criteria"	
* interpretation ^definition = """A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined]
 Examples: Conforms, Does not Conform"""
* interpretation from PqcmcConformanceCriteriaTerminology	
* note MS	
* note ^short = "Additional Information"	
* note ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined] 
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc. 
"""
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* referenceRange 1..1 MS	
* referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"	
* referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS	
* referenceRange.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. 
"""
* referenceRange.low MS	
* referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.low.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. 
"""
* referenceRange.low.extension[interpretationCode] 1..1 MS	
* referenceRange.low.unit 1..1 MS	
* referenceRange.low.unit from  PqcmcUnitsMeasureTerminology	
* referenceRange.high MS	
* referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.high.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail. 
"""
* referenceRange.high.extension[interpretationCode] 1..1 MS	
* referenceRange.high.value 1..1 MS	
* referenceRange.high.unit 1..1 MS	
* referenceRange.high.unit from PqcmcUnitsMeasureTerminology
* referenceRange.text ^short = "Original Text"	
* referenceRange.text  
* referenceRange.text ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
Note: This is the text as it appears in the Specification."""
* referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
* component 0..1 MS	
* component ^short = "Grouped replicates"	
* component.extension contains pq-replicate-extension named replicate  1..1 MS	
* component.extension[replicate] ^short = "Replicate Number"	
* component.extension[replicate]  
* component.extension[replicate] ^definition = """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed.  Individual test are executed on multiple samples to give greater validity to the findings. [Source: SME Defined] 
Examples: Prepare six aliquots from the sample. Record the individual  values.
Test 8 samples. If any fall above 110%, test an additional 7 samples.  Record all replicate values"""
//* component.extension[replicate] only integer	
* component.code.text 1..1 MS	
* component.code.text ^short = "Test Name | Relative Retention Time (RRT)"	
* component.code.text ^definition = """Test Name: The textual description of a procedure or analytical method. [Source: SME Defined] 
* Examples: Assay by HPLC, moisture, pH, Particle Size Distribution, Dissolution, analysis for impurities, etc. 
* Note: as defined by the sponsor 
Relative Retention Time (RRT):	The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
* Example: 1:23 (a ratio) 
* Note: This is the title or name of the impurity (sometimes expressed as a ratio) and not the value."""
* component.value[x] 1..1 MS	
* component.value[x] only Quantity or string	
* component.valueQuantity.value 0..1 MS	
* component.valueQuantity.value ^short = "ValueNumeric"	
* component.valueQuantity.value ^definition = "The acceptable quantitative or numeric value for the result of the test.[Source: SME Defined]"
* component.valueQuantity.unit 1..1 MS
* component.valueQuantity.unit ^short = "ValueNumeric UOM"	
* component.valueQuantity.unit ^definition = "A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]"	
* component.valueQuantity.code 1..1 MS	
* component.valueQuantity.code from PqcmcUnitsMeasureTerminology
* component.valueString 0..1 MS
* component.valueString ^short = "Value"	
* component.valueString ^definition = "The acceptable qualitative or text value of the result of the test.[Source: SME Defined]"
* component.dataAbsentReason MS	
* component.interpretation 1..1 MS	
* component.interpretation ^short = "Conformance to Criteria"	
* component.interpretation ^definition = """A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
Examples: Conforms, Does not Conform"""
* component.interpretation from PqcmcConformanceCriteriaTerminology	
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* component.referenceRange 1..1 MS	
* component.referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"	
* component.referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS	
* component.referenceRange.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* component.referenceRange.low MS	
* component.referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* component.referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.low.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* component.referenceRange.low.value 1..1 MS	
* component.referenceRange.low.unit 1..1 MS	
* component.referenceRange.low.unit from  PqcmcUnitsMeasureTerminology
* component.referenceRange.high MS	
* component.referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* component.referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.high.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined]
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* component.referenceRange.high.extension[interpretationCode] 1..1 MS	
* component.referenceRange.high.value 1..1 MS	
* component.referenceRange.high.unit 1..1 MS	
* component.referenceRange.high.unit from  PqcmcUnitsMeasureTerminology
* component.referenceRange.text ^short = "Original Text"	
* component.referenceRange.text ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
 Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
 Note: This is the text as it appears in the Specification.
"""
* component.referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
	
Profile: ResultObservation	
Parent: Observation	
Id: pq-result-observation	
Title: "Result Observation"	
Description: "Profile for an observation in a batch-analysis report or a stability report"	
	
* identifier 1..1 MS	
* identifier ^short = "Stage"	
* identifier ^definition = "A set of discrete sequential steps performed on a given test. [Source: SME Defined]"
* identifier ^comment = "Note: This is a fixed value of 'Single Stage' for non-staged tests."	
* status MS	
* category  MS
* category.coding obeys cmc-sub-test-category-batch
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    testCategory 1..1 and
    testSubCat 0..1
* category.coding[testCategory].code MS
* category.coding[testCategory].code from PqcmcTestCategoryTerminology
* category.coding[testCategory].code ^short = "Test Category"
* category.coding[testCategory].code ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* category.coding[testSubCat].code MS
* category.coding[testSubCat].code from PqcmcTestSubCategoryTerminology
* category.coding[testSubCat].code ^short = "Test Sub-category"
* code.text 1..1 MS	
* code.text ^short = "Test Name | RRT"	
* effective[x] 1..1 MS	
* effective[x].extension contains pq-pullDate-extension named actualpulldate 1..1 MS	
* effective[x] ^short = "Test Date"	
* effective[x] ^definition = "The date when a particular test was performed. [Source: SME Defined]."
* effective[x] only dateTime	
* performer MS	
* performer ^short = "Testing Site Unique Identifier"	
* performer ^definition = "A unique identifier assigned to the establishment (facility) which performs the testing. [Source: SME Defined]."
* performer only Reference(MfgTestSiteOrganization)	
* value[x] 1..1 MS	
* value[x]  only Quantity or string	
* valueQuantity.value 0..1 MS	
* valueQuantity.value ^short = "ValueNumeric"	
* valueQuantity. ^definition = "The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "ValueNumeric UOM"	
* valueQuantity.unit ^definition = "A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]"	
* valueQuantity.code 1..1 MS	
* valueQuantity.code from PqcmcUnitsMeasureTerminology
* valueString 0..1 MS
* valueString ^short = "Value"	
* valueString ^definition = "The acceptable qualitative or text value of the result of the test. [Source: SME Defined]"
* dataAbsentReason MS	
* interpretation 1..1 MS	
* interpretation ^short = "Conformance to Criteria"	
* interpretation ^definition = """A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
Examples: Conforms, Does not Conform"""
* interpretation from PqcmcConformanceCriteriaTerminology	
* note MS	
* note ^short = "Additional Information"	
* note ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined] 
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc."""
* method.text 1..1 MS	
* method.text ^short = "Analytical Procedure"	
* method.text  ^definition = """The name of the technique used to determine the nature of a characteristic. [Source: SME Defined] . 
Note: The full descriptor of the technique is part of the next data element - Reference to Procedure"""
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* referenceRange 1..1 MS	
* referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"	
* referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS	
* referenceRange.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* referenceRange.low MS	
* referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.low.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* referenceRange.low.value 1..1 MS	
* referenceRange.low.unit 1..1 MS	
* referenceRange.low.unit from  PqcmcUnitsMeasureTerminology
* referenceRange.high MS	
* referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"	
* referenceRange.high.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* referenceRange.high.value 1..1 MS	
* referenceRange.high.unit 1..1 MS	
* referenceRange.high.unit from  PqcmcUnitsMeasureTerminology
* referenceRange.text ^short = "Original Text"	
* referenceRange.text  ^definition = """The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
Note: This is the text as it appears in the Specification."""
* referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
* hasMember 0..1 MS	
* hasMember only Reference(MultipleReplicatesResultObservation)	
* hasMember ^comment = "Note: This is used to link to test results from Staged tests. Sequence Name must macht the name in the quality spedificaition."	
* component 0..1 MS	
* component ^short = "Grouped replicates"	
* component.extension contains pq-replicate-extension named replicate  1..1 MS	
* component.extension[replicate] ^short = "Replicate Number"	
* component.extension[replicate] ^definition = """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed.  Individual test are executed on multiple samples to give greater validity to the findings. [Source: SME Defined] 
Examples: Prepare six aliquots from the sample. Record the individual  values. 
Test 8 samples. If any fall above 110%, test an additional 7 samples.  Record all replicate values"""
//* component.extension[replicate] only integer	
* component.code.text 1..1 MS	
* component.code.text ^short = "Test Name | Relative Retention Time (RRT)"
* component.code.text ^definition = """Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
Note: as defined by the sponsor.
Relative Retention Time:The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
Example: 1:23 (a ratio)
Note: This is the title or name of the impurity (sometimes expressed as a ratio) and not the value.
"""	
* component.value[x] 1..1 MS	
* component.value[x]  only Quantity or string	
* component.valueQuantity.value 0..1 MS	
* component.valueQuantity.value ^short = "ValueNumeric"	
* component.valueQuantity.value ^definition = "The acceptable quantitative or numeric value for the result of the test.[Source: SME Defined]"
* component.valueQuantity.unit 1..1 MS
* component.valueQuantity.unit ^short = "ValueNumeric UOM"	
* component.valueQuantity.unit ^definition = "A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]"	
* component.valueQuantity.code 1..1 MS	
* component.valueQuantity.code from PqcmcUnitsMeasureTerminology
* component.valueString 0..1 MS
* component.valueString ^short = "Value"	
* component.valueString ^definition = "The acceptable qualitative or text value of the result of the test.[Source: SME Defined]"
* component.dataAbsentReason MS	
* component.interpretation 1..1 MS	
* component.interpretation ^short = "Conformance to Criteria"	
* component.interpretation ^definition = """A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
Examples: Conforms, Does not Conform"""
* component.interpretation from PqcmcConformanceCriteriaTerminology	
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* component.referenceRange 1..1 MS	
* component.referenceRange ^comment = "Note: Correpsonds to  Acceptance Criteria in Quality Specification"	
* component.referenceRange.extension contains pq-interpretation-code-extension named interpretationCode  0..1 MS	
* component.referenceRange.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail.
"""
* component.referenceRange.low MS	
* component.referenceRange.low.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* component.referenceRange.low.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.low.extension[interpretationCode] ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail.
"""
* component.referenceRange.low.value 1..1 MS	
* component.referenceRange.low.unit 1..1 MS	
* component.referenceRange.low.unit from PqcmcUnitsMeasureTerminology
* component.referenceRange.high MS	
* component.referenceRange.high.extension contains pq-interpretation-code-extension named interpretationCode  1..1 MS	
* component.referenceRange.high.extension[interpretationCode] ^short = "Interpretation Code"	
* component.referenceRange.high.extension[interpretationCode]  ^definition = """A code that describes how to relate the given value to an acceptance value. [Source: SME Defined] 
Note: When result value is numeric there is a controlled vocabulary; when result value is textual the vocabulary is Pass/Fail."""
* component.referenceRange.high.value 1..1 MS	
* component.referenceRange.high.unit 1..1 MS	
* component.referenceRange.high.unit from PqcmcUnitsMeasureTerminology
* component.referenceRange.text ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
	
