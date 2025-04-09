### Domain Overview

The Substance Container Closure System bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.6 folder content to the FDA. The contents of this section include identification of the container and closure type(s), textual comments that describe the sum of container closure system (CCS) components that together contain and protect the drug substance, and a diagram of the CCS or any of its parts.

### Implementer Instructions

* Each 32S6 bundle is for a single active substance.

### Representation in FHIR

The domain concepts of Substance Container Closure System are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Substance Container Closure System FHIR bundle profile. Concepts that are key to this domain include the following:

* Substance Container Closure
  * [Container Closure](StructureDefinition-pqcmc-drug-substance-container-closure.html) (SubstanceContainerClosure) profile on the [PackagedProductDefinition](https://hl7.org/fhir/R5/packagedproductdefinition.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.6 Profile Map

<div>{%include SubstanceContainer.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supportinng other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.