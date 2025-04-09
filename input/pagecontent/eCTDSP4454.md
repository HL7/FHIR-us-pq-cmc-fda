### Domain Overview

The Batch Analyses bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.4.4 and 3.2.P.5.4 folder content to the FDA. The contents of these sections include a description of the batch of drug product or drug substance, including lot number, expiration date, batch usage, information about the container in which the batch is stored, the results associated with analyzing or evaluating the quality of the drug product or drug substance based on the release specification, and identification of the facility where the testing occurred.

### Implementer Instructions

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
  * [Multiple Result Observation](StructureDefinition-pq-additional-stage-result-observation.html) (MultipleReplicatesResultObservation) profile on the [Observation](https://hl7.org/fhir/R5/observation.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource


Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.4.4 and 3.2.P.5.4 Profile Map

<div style="width: 1200px;">{%include BatchAnalysis.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supportinng other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.