### Domain Overview

The Stability Data bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.7.3 and 3.2.P.8.3 folder content to the FDA. The contents of this section include the results associated with the evaluation of the drug substance or drug product over time based on the stability study, including the pull date, the amount of th ebatch was stored in the climatic chamber, and identification of the facility where the evaluation occurred.

### Implementer Instructions

* Each Stability Data bundle is the results associated with a single stability study, which is an evaluation of a single batch of an active substance hor a single batch of product.

### Representation in FHIR

The domain concepts of Stability Data are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Stability Data FHIR bundle profile. Concepts that are key to this domain include the following:

* Stability Study
  * [Stability Study](StructureDefinition-pq-stability-study.html) (StabilityStudy) profile on the [ResearchStudy](https://hl7.org/fhir/R5/researchstudy.html) resource
  * [Stability Sub-Study](StructureDefinition-pq-stability-sub-study.html) (StabilitySubStudy) profile on the [ResearchStudy](https://hl7.org/fhir/R5/researchstudy.html) resource
  * [Stability Study Interval Report](StructureDefinition-pqcmc-stability-study-interval-report.html) (StabilityStudyIntervalReport) profile on the [DiagnosticReport](https://hl7.org/fhir/R5/diagnosticreport.html) resource
* Product Batch
  * [Drug Product Manufactured Instance](StructureDefinition-pqcmc-drug-product-instance.html) (DrugProductBatch) profile on the [Medication](https://hl7.org/fhir/R5/medication.html) resource
* Substance Batch
  * [Drug Substance Manufactured Batch](StructureDefinition-pqcmc-drug-substance-batch.html) (DrugSubstanceBatch) profile on the [Substance](https://hl7.org/fhir/R5/substance.html) resource
* Observations
  * [Result Observation](StructureDefinition-pq-result-observation.html) (ResultObservation) profile on the [Observation](https://hl7.org/fhir/R5/observation.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.7.3 and 3.2.P.8.3 Profile Map

<div width="1200px">{%include Stability.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supportinng other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.