Extension: QualitySpecificationExtension	
Id: pq-quality-specification-extension	
Title: "Quality Specification Reference"	
Description: """
  The product specification used in the batch release or stability testing.
  Note: The combination of Specification Title, Specification Subtitle and Specification Version is assumed to be unique across all Specifications.
  Note: Either the Specification OID must be present, or the Title, Subtitle, and Version must all be present.
"""	
* . ^short = "Specification and Specification Version"	
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* . obeys cmc-specification-reference-oid-or-title
* extension contains	
    specification 0..1 MS and	
    specificationVersion 0..1 MS	and
    specificationSubtitle 0..1 MS and
    specificationOid 0..1 MS
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
* extension[specificationSubtitle]
  * value[x] 1..1 MS
  * value[x] only string
    * ^short = "Specification Subtitle"
    * ^definition = "An additional textual identification for the specification [Source: SME Defined]."
* extension[specificationOid]
  * value[x] 1..1 MS
  * value[x] only oid
    * ^short = "Persistent CMC eCTD SP4151 Bundle identifier typically the Specification bundle OID."

Extension: BatchRange
Id: pq-batch-range
Title: "Target Range"
Description: "The FHIR Range datatype uses Simple Quantities to represent the high and low bounds, which do not allow a comparator to be set. This extension allows the high and low bounds to have a comparator"
* ^context[+].type = #element
* ^context[=].expression = "Observation.referenceRange"
* ^context[+].type = #element
* ^context[=].expression = "Observation.component.referenceRange"
* . ?!
* . ^isModifierReason = "When present, the target cannot have a referenceRange.low or referenceRange.high; instead this extension acts as its low and high"
* extension 1..2 MS
  * ^short = "ValueNumeric (range)"
  * ^definition = """The acceptable quantitative or numeric value for the result of the test. [Source: SME Defined]"""
* extension contains 
  low 0..1 MS and
  high 0..1 MS
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

// Invariant: cmc-batch-range
// Description: "When the Range extension is present, referenceRange.low and referenceRange.high cannot be present."
// Expression: "modifierExtension.where(url = 'http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-batch-range').exists() implies (low.exists().not() and high.exists().not())"
// Severity: #error

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
* ^context[=].expression = "Observation"
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
  * ^short = "Optional user designated identifier"			
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
* performer only Reference(MfgSiteOrganization)	
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
	

Profile: ResultObservation	
Parent: Observation	
Id: pq-result-observation	
Title: "Result Observation"	
Description: "Profile for an observation in a batch-analysis report or a stability report"	
* . obeys cmc-range-extension-required
* extension contains pq-pullDate-extension named actualpulldate 0..1 MS
* extension contains pq-additional-info-extension named additionalInfo 0..1 MS
  * ^short = "Test Additional Information"
* identifier.value 1..1 MS	
  * ^short = "Stage Name"	
  * ^definition = """
    A set of discrete sequential steps performed on a given test. [Source: SME Defined]
    Note: This is either 'Single Stage' for non-staged tests and 'Multi-Stage' for tests with more than one stage. Use hasMember to report multiple stages.
  """
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

* effective[x] 1..1 MS	
* effective[x] only dateTime	
  * ^short = "Test Date"	
  * ^definition = """
    The date when a particular test was performed. [Source: SME Defined].
  """
* performer 1..1 MS
* insert PQReference(performer)
* performer only Reference(CodedOrganization)	
  * ^short = "Testing Site Unique Identifier"	
  * ^definition = """
    A unique identifier assigned to the establishment (facility) which performs the testing. [Source: SME Defined].
  """
* value[x] 1..1 MS	
* value[x]  only Quantity or string or integer
* valueQuantity from http://hl7.org/fhir/ValueSet/ucum-units (required)
// * valueQuantity from PqcmcUnitsMeasure (required)
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
  * ^definition = """The acceptable qualitative or text value of the result of the test. [Source: SME Defined]
    Note: For tests that do not have a gro  N
    """
* valueInteger MS
  * ^short = "Number of Stages | No Aggregates "
  * ^definition = """
    The number of stages reported 
    or
    Enter 0 when there is no Aggregate measure for the replicates.
    """
* dataAbsentReason MS	
* interpretation 1..1 MS	
* interpretation from PqcmcConformanceCriteriaTerminology (required)	
  * ^short = "Conformance to Criteria"	
  * ^definition = """
    A coded value specifying whether the results of a particular test on a given batch of a drug substance or a drug product comply with the acceptance criteria. [Source: SME Defined] 
    Examples: Conforms, Does not Conform
  """
* note MS	
  * ^short = "Result Additional Information"	
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
  * modifierExtension contains pq-batch-range named batchRange 0..1 MS
  * modifierExtension[batchRange]
    * extension[low].value[x] from http://hl7.org/fhir/ValueSet/ucum-units
    * extension[high].value[x] from http://hl7.org/fhir/ValueSet/ucum-units
  * low 0..0
  * high 0..0
  * text 1..1 MS 
    * ^short = "Original Text | Text Value"	
    * ^definition = """
      The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
      Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
      Note: This is the text as it appears in the Specification.
    """
    * ^comment = """
      Note: For non-numeric tests, the Original Text is the only required element for referenceRange.
    """	
* hasMember 0..* MS	
* insert PQReference(hasMember)
* hasMember only Reference(ResultObservation)
  * ^short = """
    Note: Used to link to test results for Staged tests. Sequence Name must match the name in the quality spedificaition.
    """	
* component 0..* MS	
  * ^short = "Replicates"	
  * extension contains pq-replicate-extension named replicate  1..1 MS	
    * ^short = "Replicate Number"	
    * ^definition = """
      An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed. Individual test are executed on multiple samples to give greater validity to the findings. [Source: SME Defined]
      Examples: Prepare six aliquots from the sample.
      Test 8 samples. If any fall above 110%, test an additional 7 samples. Record all replicate values as stated in the method.
    """
  * extension contains pq-additional-info-extension named additionalInfo 0..1 MS
    * ^short = "Stage Additional Information"
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
  * valueQuantity from http://hl7.org/fhir/ValueSet/ucum-units (required)
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
      Note: Enter 
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
    * modifierExtension contains pq-batch-range named batchRange 1..1 MS
    * modifierExtension[batchRange]
      * extension[low].value[x] from http://hl7.org/fhir/ValueSet/ucum-units
      * extension[high].value[x] from http://hl7.org/fhir/ValueSet/ucum-units
    * low 0..0 MS
    * high 0..0 MS
    * text 1..1 MS 
      * ^short = "Original Text"	
      * ^definition = """
        The text of the acceptance criteria as provided in the specification. [Source: SME Defined] 
        Examples: White to off-white cake; 22.5 - 27.5 mg/ml 
        Note: This is the text as it appears in the Specification.
      """
      * ^comment = """
        Note: For non-numeric tests, the Original Text is the only required element for referenceRange.
      """	