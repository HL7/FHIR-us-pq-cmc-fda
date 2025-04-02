Extension: QualitySpecificationExtension	
Id: pq-quality-specification-extension	
Title: "Quality Specification Reference"	
Description: "The product specification used in the batch release or stability testing."	
* . ^short = "Specification and Specification Version"	
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"

* extension contains	
    specification 1..1 MS and	
    specificationVersion 1..1 MS	and
    specificationSubTitle 0..1 MS
* extension[specification]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Specification Title"	
    * ^definition = """
      The textual identification for the specification. [Source: SME Defined] 
      * Example: &lt; drug name&gt;  75 mg chewable tablets 
      Note: This may include the name of the drug substance, product or the raw material/excipients.
    """
* extension[specificationVersion]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Specification Version"	
    * ^definition = """
      The alphanumeric text assigned by the sponsor to a particular edition of a specification. [Source: SME Defined] 
      Examples: 2.1, 13.2, ST1, 00001, 00002, &lt; companyname &gt; 001, etc. 
      Note: This value should be unique across all specifications for a given material, not just those with the same name.
    """
* extension[specificationSubTitle]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Specification Subtitle"

Extension: ReplicateExtension	
Id: pq-replicate-extension	
Title: "Replicate Number"	
Description: """An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual tests are executed on multiple samples to give greater validity to the findings. [Source SME Defined] Examples: Prepare six aliquots from the sample. Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method."""	
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"
* value[x] 1..1 MS
* value[x] only integer	

Extension: PullDateExtension
Id: pq-pullDate-extension
Title: "Pull Date"
Description: "Contains elements related to the pull date of the study samples in a stability study."
* ^context[+].type = #element
* ^context[=].expression = "Observation.effectiveDateTime"
* value[x] 1..1 MS
  * ^short = "Pull Date"
  * ^definition = """
    The date when a particular sample of the batch lot was pulled from the stability chamber. [Source: SME Defined]
  """
* value[x] only dateTime
	
Profile: BatchAnalysis	
Parent: DiagnosticReport	
Id: pqcmc-batch-analysis	
Title: "Batch Analysis"	
Description: "Batch or lot release testing  to ensure that pharmaceutical products meet the product specification."	
	
* extension contains pq-quality-specification-extension named qualitySpecification 1..1 MS	
* identifier 0..1 MS
  * ^short = "optional user designated identifier"			
* status MS	
  * ^short = "Status of the batch analysis"	
  * ^definition = """
    The status of the batch analysis. Consult the HL7 list of permitted values in http://hl7.org/fhir/ValueSet/diagnostic-report-status
  """	
* code  1..1 MS	
  * ^short = "Name for this batch analysis."	
  * text 1..1 MS	
* subject 1..1 MS
  * ^short = "A single medication batch/lot or a single subtance batch/lot"	
* subject only Reference(DrugProductBatch or DrugSubstanceBatch)	
* effectiveDateTime	0..1 MS
  * ^short = "Batch Analysis Release Date"
  * ^definition = """
    The date at which the drug substance or drug product is released by the quality assurance unit of the sponsor/applicant. [Source: SME Defined]
    Note: A single release date per batch.
  """
* performer 1..1 MS	
* performer only Reference(CodedOrganization)	
  * ^short = "Test Site"	
  * ^definition = """
    Reference to the organization profile that contains: 
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
  * ^short = "Stage"	
  * ^definition = """
    A set of discrete sequential steps performed on a given test. [Source: SME Defined]
  """
  * ^comment = "Note: This can be named or numbered.  This will never be 'Single Stage'."	
* status MS
* value[x] MS
* value[x] only Quantity or string
* valueQuantity MS
* valueQuantity from PqcmcUnitsMeasure (required)
  * value 1..1 MS	
    * ^short = "ValueNumeric"	
    * ^definition = "The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"
  * code 1..1 MS
    * ^short = "ValueNumeric UOM"	
    * ^definition = """
      A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
    """	
* valueString MS
  * ^short = "Value"	
  * ^definition = """
    The acceptable qualitative or text value of the result of the test. [Source: SME Defined]
  """
* dataAbsentReason MS

* interpretation 1..1 MS	
  * ^short = "Conformance to Criteria"	
  * ^definition = """
    A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined]
    Examples: Conforms, Does not Conform
  """
* interpretation from PqcmcConformanceCriteriaTerminology (required)
* note MS	
  * ^short = "Additional Information"	
  * ^definition = """
    A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined] 
    Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc. 
  """
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* referenceRange 1..1 MS
  * ^definition = """
    Correpsonds to  Acceptance Criteria in Quality Specification. All numeric values are low and high. Use high when the Interpretation Code is 'EQ'. Only supply original text for qualitative values.
  """
  * modifierExtension contains pq-target-range named targetRange 1..1 MS
  * modifierExtension[targetRange]
    * extension[low].value[x] from PqcmcUnitsMeasure
    * extension[high].value[x] from PqcmcUnitsMeasure
  * text MS
    * ^short = "Original Text"	
    * ^definition = """
      The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
      Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
      Note: This is the text as it appears in the Specification.
    """
    * ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
* component 0..1 MS	
  * ^short = "Replicates"	
  * extension contains pq-replicate-extension named replicate  1..1 MS	
  * extension[replicate] 
    * ^short = "Replicate Number"	
    * ^definition = """
      An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual test are executed on multiple samples to give greater validity to the findings. [Source: SME Defined]
      Examples: Prepare six aliquots from the sample.
      Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
    """
  * code 1..1 MS
    * text 1..1 MS	
      * ^short = "Test Name | Relative Retention Time (RRT)"	
      * ^definition = """
        Test Name: The textual description of a procedure or analytical method. [Source: SME Defined] 
        * Examples: Assay by HPLC, moisture, pH, Particle Size Distribution, Dissolution, analysis for impurities, etc. 
        * Note: as defined by the sponsor 
        Relative Retention Time (RRT):	The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
        * Example: 1:23 (a ratio) 
        * Note: This is the title or name of the impurity (sometimes expressed as a ratio) and not the value.
      """
  * value[x] 1..1 MS	
  * value[x] only Quantity or string	
  * valueQuantity from PqcmcUnitsMeasure (required)
    * value 1..1 MS
      * ^short = "ValueNumeric"	
      * ^definition = """
        The acceptable quantitative or numeric value for the result of the test.[Source: SME Defined]
      """
    * code 1..1 MS
      * ^short = "ValueNumeric UOM"	
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]
      """
  * valueString MS
    * ^short = "Value"	
    * ^definition = """
      The acceptable qualitative or text value of the result of the test.[Source: SME Defined]
    """
  * dataAbsentReason MS	
  * interpretation 1..1 MS	
  * interpretation from PqcmcConformanceCriteriaTerminology	(required)
    * ^short = "Conformance to Criteria"	
    * ^definition = """
      A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
      Examples: Conforms, Does not Conform
    """
  * referenceRange 1..1 MS
    * modifierExtension contains pq-target-range named targetRange 1..1 MS
    // Can't do this
    * modifierExtension[targetRange]
      * extension[low].value[x] from PqcmcUnitsMeasure
      * extension[high].value[x] from PqcmcUnitsMeasure
    * text MS
      * ^short = "Original Text"	
      * ^definition = """
        The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
        Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
        Note: This is the text as it appears in the Specification.
      """
      * ^comment = "Note: For non-numeric tests, the Original Text is the only required element for referenceRange."	
	
Profile: ResultObservation	
Parent: Observation	
Id: pq-result-observation	
Title: "Result Observation"	
Description: "Profile for an observation in a batch-analysis report or a stability report"	
	
* identifier 1..1 MS	
  * ^short = "Stage"	
  * ^definition = """
    A set of discrete sequential steps performed on a given test. [Source: SME Defined]
  """
  * ^comment = "Note: This is a fixed value of 'Single Stage' for non-staged tests."	
* status MS	
* category 1..1 MS
* category from PqcmcTestCategoryTerminology (required)
  * ^short = "Test Category | Test Subcategory"
  * ^definition = "A high level grouping of quality attributes for products, substances, raw materials, excipients, intermediates and reagents.  [Source: SME Defined]  Examples: Assay, Biological Properties."
* code MS
* code only CodeableConceptTextOnly
  * ^short = "Test Name | RRT"	
  * ^definition = """
    Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
    Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
    Note: as defined by the sponsor

    RRT: The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
    Example: 1:23 (a ratio)
    Note:  This is the title or name of the impurity (sometimes expressed as a ratio) and not the value. 
  """
* extension contains pq-pullDate-extension named actualpulldate 1..1 MS	
* effective[x] 1..1 MS	
* effective[x] only dateTime	
  * ^short = "Test Date"	
  * ^definition = """
    The date when a particular test was performed. [Source: SME Defined].
  """
* performer MS
* insert PQReference(performer)
* performer only Reference(CodedOrganization)	
  * ^short = "Testing Site Unique Identifier"	
  * ^definition = """
    A unique identifier assigned to the establishment (facility) which performs the testing. [Source: SME Defined].
  """
* value[x] 1..1 MS	
* value[x]  only Quantity or string
* valueQuantity from PqcmcUnitsMeasure (required)
  * value 1..1 MS
    * ^short = "ValueNumeric"	
    * ^definition = """
      The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]
    """
  * code 1..1 MS	
    * ^short = "ValueNumeric UOM"	
    * ^definition = "A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]"	
* valueString MS
  * ^short = "Value"	
  * ^definition = "The acceptable qualitative or text value of the result of the test. [Source: SME Defined]"
* dataAbsentReason MS	
* interpretation 1..1 MS	
* interpretation from PqcmcConformanceCriteriaTerminology (required)	
  * ^short = "Conformance to Criteria"	
  * ^definition = """
    A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
    Examples: Conforms, Does not Conform
  """
* note MS	
  * ^short = "Additional Information"	
* note ^definition = """
  A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
  Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure. 
"""
* method 1..1 MS
* method only CodeableConceptTextOnly
  * ^short = "Analytical Procedure"	
  * ^definition = """
  The name of the technique used to determine the nature of a characteristic. [Source: SME Defined] . 
  Note: The full descriptor of the technique is part of the next data element - Reference to Procedure
"""
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
* referenceRange 1..1 MS
  * modifierExtension contains pq-target-range named targetRange 1..1 MS
  * modifierExtension[targetRange]
    * extension[low].value[x] from PqcmcUnitsMeasure
    * extension[high].value[x] from PqcmcUnitsMeasure
  * text MS 
    * ^short = "Original Text"	
    * ^definition = """
      The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
      Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
      Note: This is the text as it appears in the Specification.
    """
    * ^comment = """
      Note: For non-numeric tests, the Original Text is the only required element for referenceRange.
    """	
* hasMember 0..1 MS	
* insert PQReference(hasMember)
* hasMember only Reference(MultipleReplicatesResultObservation)	
  * ^comment = """
    Note: This is used to link to test results from Staged tests. Sequence Name must macht the name in the quality spedificaition.
  """	
* component 0..1 MS	
  * ^short = "Replicates"	
  * extension contains pq-replicate-extension named replicate  1..1 MS	
    * ^short = "Replicate Number"	
    * ^definition = """
      An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual test are executed on multiple samples to give greater validity to the findings. [Source: SME Defined]
      Examples: Prepare six aliquots from the sample.
      Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
    """
  * code 1..1 MS
  * code only CodeableConceptTextOnly
    * ^short = "Test Name | Relative Retention Time"
    * ^definition = """
      Test Name: The textual description of a procedure or analytical method. [Source: SME Defined]
      Examples: Assay by HPLC, moisture by Karl Fischer, analysis for impurities.
      Note: as defined by the sponsor.
      Relative Retention Time:The ratio of the retention time of a component relative to that of another used as a reference obtained under identical conditions as an alias for the name of the unidentified impurities. [Source: Adapted from USP] 
      Example: 1:23 (a ratio)
      Note: This is the title or name of the impurity (sometimes expressed as a ratio) and not the value.
    """	
  * value[x] 1..1 MS	
  * value[x] only Quantity or string
  * valueQuantity from PqcmcUnitsMeasure (required)
    * value 1..1 MS
      * ^short = "ValueNumeric"	
      * ^definition = """
        The acceptable quantitative or numeric value for the result of the test.[Source: SME Defined]
      """
    * code 1..1 MS	
      * ^short = "ValueNumeric UOM"	
      * ^definition = """
        A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds.[Source: NCI EVS - C25709]
      """	
  * valueString 0..1 MS
    * ^short = "Value"	
    * ^definition = """
      The acceptable qualitative or text value of the result of the test.[Source: SME Defined]
    """
  * dataAbsentReason MS	
  * interpretation 1..1 MS	
  * interpretation from PqcmcConformanceCriteriaTerminology (required)	
    * ^short = "Conformance to Criteria"	
    * ^definition = """
      A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
      Examples: Conforms, Does not Conform
    """
// need rule for refernece range. If non-numeric test, the Interpretation code is on the range = 'NA'	
  * referenceRange 1..1 MS
    * modifierExtension contains pq-target-range named targetRange 1..1 MS
    * modifierExtension[targetRange]
      * extension[low].value[x] from PqcmcUnitsMeasure
      * extension[high].value[x] from PqcmcUnitsMeasure
    * text MS 
      * ^short = "Original Text"	
      * ^definition = """
        The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
        Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
        Note: This is the text as it appears in the Specification.
      """
      * ^comment = """
        Note: For non-numeric tests, the Original Text is the only required element for referenceRange.
      """	