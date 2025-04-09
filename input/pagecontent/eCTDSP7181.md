### Domain Overview
A Stability Study is a structured, formal investigation to continually evaluate the physical, chemical, biological, microbiological, biochemical, and immunochemical attributes of a drug substance or a drug product  as a function of time.

The Stability Study bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.7.1 and 3.2.P.8.1 folder content to the FDA. The contents of this section include the high-level objective and rationale for the study, the study design, the rationale for submitting the stability data, study start date, study end date, stability conditions, and container orientation.

### Implementer Instructions

* Each Stability Summary bundle is the structured plan to formally investigate a single batch of an active substance or a single batch of a drug product.

### Rperesentation in FHIR

The domain concepts of Stability Summary are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Stability Summary FHIR bundle profile. Concepts that are key to this domain include the following:

* Stability Summary
  * [Stability Summary](StructureDefinition-pqcmc-stability-summary.html) (StabilitySummary) profile on [PlanDefinition](https://hl7.org/fhir/R5/plandefinition.html) resource
* Drug Product
  * [Drug Product Handle](StructureDefinition-pqcmc-drug-product-handle.html) (DrugProductHandle) profile on [MedicinalProductDefinition](http://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* API 
  * [Substance Definition Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.7.1 and 3.2.P.8.1 Profile Map

<div>{%include StabilitySummary.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supportinng other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.