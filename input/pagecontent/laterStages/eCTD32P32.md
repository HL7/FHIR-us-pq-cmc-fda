### Domain Overview

The Product Batch Formula bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.P.3.2 folder content to the FDA. The contents of this section include the amount of material in a specific type of batch, in total and broken down by the components and constituents that constitute the drug product. 

### Implementer Instructions

* Each 32P32 bundle is for a single drug product.
* All batch formulas for a drug product are contained in a single bundle.

### Representation in FHIR

* Drug Product
    * [Batch Formula Drug Product Identification](StructureDefinition-pqcmc-batch-formula-product.html) (BatchFormulaMedicinalProduct) profile on [MedicinalProductDefinition](https://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* Batch Formula
    * [Drug Product Batch Formula](StructureDefinition-pqcmc-product-batch-formula.html) (BatchFormula) profile on [ManufacturedItemDefinition](https://hl7.org/fhir/R5/manufactureditemdefinition.html) resource
* Batch Formula Constituent
    * [Drug Product Batch Formula Ingredient](StructureDefinition-pqcmc-dp-ingredient.html) (DrugProductIngredient) profile on [Ingredient](https://hl7.org/fhir/R5/ingredient.html) resource
    * [Drug Substance Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource
    * [Excipient Drug Substance](StructureDefinition-pqcmc-excipient.html) (ExcipientRaw) profile on [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource
* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.P.3.2 Profile Map

<div>{%include BatchForm.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supporting other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This example demonstrates the batch formula for a commercial batch of a drug product. This image displays the narrative as inserted in the composition text element generated by the narrative transform. The XML can be found on the Artifacts page. The XML file with the publisher narrative is on the artifacts page and in the Bundle profile. [49d3b79e-b436-a242-93ba-b706b4364ab2](Bundle-49d3b79e-b436-a242-93ba-b706b4364ab2.html)

Another batch formula example is  [a242b79e-b706-49d3-93ba-b4364ab2baa3](Bundle-a242b79e-b706-49d3-93ba-b4364ab2baa3.html)


{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="BatchFormula.png" />

</figure>

{::options parse_block_html="true" /}