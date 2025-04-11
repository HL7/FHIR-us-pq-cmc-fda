### Domain Overview

The Batch Analyses bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.4.4 and 3.2.P.5.4 folder content to the FDA. The contents of these sections include a description of the batch of drug product or drug substance, including lot number, expiration date, batch usage, information about the container in which the batch is stored, the results associated with analyzing or evaluating the quality of the drug product or drug substance based on the release specification, and identification of the facility where the testing occurred.

### Implementer Instructions

The **eCTD Batch Analyses Composition** bundle provides a structured mechanism for representing batch testing data within a regulatory submission, specifically aligned with ICH eCTD sections **3.2.P.5.4 (Control of Drug Product)** and **3.2.S.4.4 (Control of Drug Substance)**. This bundle is centered around a profiled Composition resource that defines the document type as Batch Analyses and organizes its content into four primary sections: the Batch Analysis report, a referencc to the corresponding Product/Substance Specification, the testing results with applicable reference specifications, and the Sponsor and Manufacturing and Testing Organizations.

The core analytic content is captured using a profiled DiagnosticReport resource Batch Analysis, which references the batch of drug product or drug substance under test, identifies the manufacturing or test site, and includes references to one or more Observation resources that document individual analytical results. These observations include metadata such as test name, test category, date of analysis, and interpretation relative to specification criteria. Results may be expressed as quantities, strings, or integers and are supported by value bindings to standardized units of measure. The interger is also used to suport the cardinality in the case of a test with miltiple stages. In addition, each observation includes structured reference ranges through a domain-specific modifier extension (pq-batch-range) that replaces the standard low and high elements with controlled sub-extensions for batch acceptance criteria.

The Observation profile also supports replicate data through the component element, with each replicate annotated using extensions for replicate number and additional information. Pull dates are recorded using a dedicated pq-pullDate-extension, and interpretation results are categorized using the Conformance to Criteria value set. When analytical results span **multiple stages**—such as in stepwise procedures or time-based testing, the hasMember element is used to link together related Observation instances that belong to the same analytical group.

A required extension pq-quality-specification-extension within the Batch Analysis report references the applicable quality specification that defines the acceptance criteria. Organizational references—such as the sponsor and test-site are constrained to a profiled Organization resource to capture site functions.

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

Waiting for example.  Will add code snippets for stages and replicates

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.