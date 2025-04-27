### Domain Overview

The Batch Analyses bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.4.4 and 3.2.P.5.4 folder content to the FDA. The contents of these sections include a description of the batch of drug product or drug substance, including lot number, expiration date, batch usage, information about the container in which the batch is stored, the results associated with analyzing or evaluating the quality of the drug product or drug substance based on the release specification, and identification of the facility where the testing occurred.

### Implementer Instructions

The **eCTD Batch Analyses Composition** bundle provides a structured mechanism for representing batch testing data within a regulatory submission, specifically aligned with ICH eCTD sections **3.2.P.5.4 (Control of Drug Product)** and **3.2.S.4.4 (Control of Drug Substance)**. This bundle is centered around a profiled Composition resource that defines the document type as Batch Analyses and organizes its content into four primary sections: the Batch Analysis report, a referencc to the corresponding Product/Substance Specification, the testing results with applicable reference specifications, and the Sponsor and Manufacturing and Testing Organizations.

The core analytic content is captured using a profiled DiagnosticReport resource Batch Analysis, which references the batch of drug product or drug substance under test, identifies the manufacturing or test site, and includes references to one or more Observation resources that document individual analytical results. These observations include metadata such as test name, test category, date of analysis, and interpretation relative to specification criteria. Results may be expressed as quantities, strings, or integers and are supported by value bindings to standardized units of measure. The interger is also used to suport the cardinality in the case of a test with miltiple stages. In addition, each observation includes structured reference ranges through a domain-specific modifier extension (pq-batch-range) that replaces the standard low and high elements with controlled sub-extensions for batch acceptance criteria.

The Observation profile also supports replicate data through the component element, with each replicate annotated using extensions for replicate number and additional information. Pull dates are recorded using a dedicated pq-pullDate-extension, and interpretation results are categorized using the Conformance to Criteria value set. When analytical results span **multiple stages**—such as in stepwise procedures or time-based testing, the hasMember element is used to link together related Observation instances that belong to the same analytical group.

A required extension pq-quality-specification-extension within the Batch Analysis report references the applicable quality specification that defines the acceptance criteria. Organizational references—such as the sponsor and test-site are constrained to a profiled Organization resource to capture site functions.

**Note:**

* Each Batch Analyses bundle is an evaluation of a single batch of an active substance or a single batch of a drug product.
* Tests and the stages within them should be entered in the XML bundle in the order in which they should be displayed.
* The combination of Specification Title, Specification Subtitle and Specification Version is assumed to be unique across all Specifications.

### Representation in FHIR

The domain concepts of Batch Analyses are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Batch Analyses FHIR bundle profile. Concepts that are key to this domain include the following:

* Product/Substance Batch Analysis
  * [Batch Analysis](StructureDefinition-pqcmc-batch-analysis.html) (BatchAnalysis) profile on the [DiagnosticReport](https://hl7.org/fhir/R5/diagnosticreport.html) resource
* Product Batch
  * [Drug Product Manufactured Instance](StructureDefinition-pqcmc-drug-product-instance.html) (DrugProductBatch) profile on the [Medication](https://hl7.org/fhir/R5/medication.html) resource
* Substance Batch
  * [Drug Substance Manufactured Batch](StructureDefinition-pqcmc-drug-substance-batch.html) (DrugSubstanceBatch) profile on the [Substance](https://hl7.org/fhir/R5/substance.html) resource
* Observations
  * [Result Observation](StructureDefinition-pq-result-observation.html) (ResultObservation) profile on the [Observation](https://hl7.org/fhir/R5/observation.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource


Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.4.4 and 3.2.P.5.4 Profile Map

<div style="width: 1200px;">{%include BatchAnalysis.svg%}</div>

### Usage Patterns

#### Batch Analysis Test Result Patterns

This section describes the patterns used in reporting individual test results in a Batch Analysis Bundle. The numeric test results have multiple structures to capture the detail of the Observation referenceRange text. The following XML snippets illustrate how to implement the various test results types. Each example below shows the FHIR element structure and a code block with sample content.

Note: "..." is used to compress the XML so that the relevant sections can be seen more clearly.

##### Qualitative Result (valueString)

Used when the observation reports a qualitative assessment (e.g., odor, appearance).

**Key Characteristic Elements:**
- `valueString`
- `interpretation`
- `referenceRange.text`

```xml
<Observation>
          <category>
          <coding>
            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
            <code value="C205026"/>
            <display value="Organoleptic"/>
          </coding>
        </category>
  ...
  <valueString>No unpleasant odor</valueString>
  ...
  <referenceRange>
    <text>Pellet form without unpleasant odor</text>
  </referenceRange>
</Observation>
```

##### Numeric Result (valueQuantity)

Used when the observation quantifies an assay (e.g., content purity). The referenceRange.modifierExtension elements high and low are optional.  Use both when reprenting a range acceptance criteria.  Use high when the value must be NMT and use low when the valule is NLT.

**Key Characteristic Elements:**
- `valueQuantity`
- `referenceRange.modifierExtension` with `low` (and sometimes `high`)

```xml
<Observation>
 <category>
   <coding>
     <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
     <code value="C60819"/>
     <display value="Assay"/>
   </coding>
 </category>
 ...
  <text value="Assay Monostearate"/>
  ...
  <valueQuantity>
   <value value="98.7"/>
   <unit value="percent"/>
   <system value="http://unitsofmeasure.org"/>
   <code value="%"/>
  </valueQuantity>
  <interpretation>...<display value="Conforms"/>...</interpretation>
  ...
 <referenceRange>
   <modifierExtension url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-batch-range">
     <extension url="low">
       <valueQuantity>
  <value value="95"/>
  <unit value="percent"/>
  <system value="http://unitsofmeasure.org"/>
  <code value="%"/>
       </valueQuantity>
     </extension>
   </modifierExtension>
   <text value="≥ 95%"/>
 </referenceRange>
</Observation>
```

##### Pass/Fail Result

Used when only "Pass", "Qualified", or similar is reported.

**Key Characteristic Elements:**
- `valueString` examples "Pass" or "Qualified"
- `interpretation`  interpretation codes are $NCIT#C80262 "Conforms" and $NCIT#C133998 "Does not conform"
- `referenceRange.text`

```xml
<Observation>
  ...
  <valueString value="Pass"/>
  <interpretation>...<display value="Conforms"/>...</interpretation>
  <referenceRange>
    <text>Complies with USP-467</text>
  </referenceRange>
</Observation>
```

##### Replicates using component

Used when multiple replicate results are part of the same observation. Replicates are individual tests are executed on multiple samples to give greater validity to the findings. An identification number for a member of the set of results for a test, usually the sequence order in which the test was executed.

**Key Characteristics:**
- Each `component` holds a result for a replicate.
- `component.code` identifies the sub-measurement for example and individual result acceptance criteria can differ from the average reported in Observation.valueQuantity.
- `component.valueQuantity` or `valueString` contains the actual measurement for each replicate.
- pq-replicate-extension identifies the replicate number.

```xml
<Observation>
...
  <component>
     <extension
       url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-replicate-extension">
     <valueInteger value="1"/>
   </extension>
...
   <valueQuantity>
     <value value="2.65"/>
     <unit value="pH"/>
     <system value="http://unitsofmeasure.org"/>
     <code value="[pH]"/>
   </valueQuantity>
...  
  </component>
  <component>
     <extension
       url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-replicate-extension">
     <valueInteger value="2"/>
   </extension>
...
   <valueQuantity>
     <value value="2.65"/>
     <unit value="pH"/>
     <system value="http://unitsofmeasure.org"/>
     <code value="[pH]"/>
   </valueQuantity>
...  
  </component>
</Observation>
```

##### Multi-Stage Result Reporting (using hasMember)

Used for tests that include multiple detailed sub-measurements.

**Key Characteristic Elements:**
- identifier.value equals "Multi-Stage" for the parent test
- Parent Observation uses `hasMember` to reference detailed results for each stage of the test.
- identifier.value equals the stage name of the stege result contained in the member observation resource.
- If the staged test also has replicates, each replicate is reported as a component of the member observation.  The replicate number must be maintained accross the all the stages. 

```xml
<Observation>
tbd
</Observation>
```

#####  Result with Child Observations

**Key Characteristic Elements:**
- `valueString` = "Qualified"
- `hasMember` to detailed element-specific Observations

```xml
<Observation>
  <category>Material Properties/Measurements</category>
  <code>USP <401> Fats and Fixed Oils</code>
  <valueString>Qualified</valueString>
  <hasMember>
    <reference value="Observation/AcidValue"/>
    <reference value="Observation/SaponificationValue"/>
  </hasMember>
</Observation>
```

#### Notes

- All tests must include an `interpretation` to indicate conformance.
- Units must align with UCUM coding where applicable.
- Use `modifierExtension` for numeric ranges (high/low limits).
- Use `valueString` for qualitative assessments.
- Use `component` when multiple replicate results are reported under a single Observation.
...  

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.