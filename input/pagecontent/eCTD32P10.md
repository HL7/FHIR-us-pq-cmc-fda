### Domain Overview

The Description and Composition of the Drug Product bundle profile provides a mechanism for the industry to submit Module 3 of CTD 3.2.P.1 folder content to the FDA. The contents of this section include a description of the drug product, its container closure, and its components and constituents. At this time, the profile is scoped to support only products that have a solid oral dose form; other dose forms will be supported in future iterations of the profile.

For the purposes of the PQ/CMC IG, the Example 1 below of a two-layer Tablet provides description of the terms used to explain the 2-layer tablet.

<table ><tr><td><img src="image1.png" /></td></tr></table>

<p style="font-weight: bold"> Example 1: A 2 layer tablet with 1 purple layer and 1 white layer </p>

- A <span style="text-decoration:underline;">Drug Product</span> is the dose unit, i.e., the whole tablet.
- <span style="text-decoration:underline;">Components</span> are the “parts” of the Drug Product, i.e., each of the two layers in the tablet is considered a Component. If the tablet was coated, the coating would be another (third) Component.
    - A Drug Product must have at least one Component.

- <span style="text-decoration:underline;">Constituents</span> are the active and inactive ingredients used in the manufacture of the Drug Product
    - Constituent information is included with respect to the Drug Product and with respect to each relevant Component.

The additional example illustrations below of drug products are included as an aid to understanding the terms or semantics in the context of the PQ/CMC IG.

<table style="margin: 0px auto;"><tr><td><img src="image2.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold">Example 2: Capsule with 3 components: capsule shell, one type of beads, and a minitablet</p>

<table style="margin: 0px auto;"><tr><td><img src="image3.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold"> Example 3: Tablet with two coatings </p>

Drug Product content includes information such as: the dosage form, routes of administration, a narrative description of the product, a schematic, the type of container and container closure used for the dosage form, quality standard and release profile of the dose unit, and the amount of each constituent (both active and inactive ingredients) contained in the drug product.

Component content includes information such as: a component identifier, component type, and release profile of the component and the amount of each constituent (both active and inactive ingredients) contained in the component as well as the function of the constituent in the component.

### Implementer Instructions
- Each 32P1 XML bundle is for a single Drug Product and specific dosage form.
- Multiple dosage forms of a drug product must be submitted via distinct separate 32P1 bundles.
- For drug products that are co-packaged with additional items, e.g., a reconstitution diluent, the additional items must be provided in a separate 32P1 bundle.

### Representation in FHIR

The domain concepts of Description and Composition of the Drug Product are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Description and Composition of the Drug Product FHIR bundle profile. Concepts that are key to this domain include the following:

* Drug Product
    * [Drug Product Description](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-pqcmc-drug-product-description.html) (DrugProductDescription) profile on the [MedicinalProductDefinition](https://hl7.org/fhir/medicinalproductdefinition.html) Resource
* Container Closure
    * [Drug Product Container Closure](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-pqcmc-drugproduct-container-closure.html) (DrugProductContainerClosure) profile on the [MedicinalProductDefinition](https://hl7.org/fhir/medicinalproductdefinition.html) Resource
* Product Composition
    * [Manufactured Drug Product](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-pqcmc-product-part.html) (FinishedProduct) profile on the [ManufacturedItemDefinition](https://hl7.org/fhir/R5/manufactureditemdefinition.html) Resource
    * [Drug Product Component](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-pqcmc-component.html) (DrugProductComponent) profile on the [Ingredient](https://hl7.org/fhir/R5/ingredient.html) Resource
    * [Component Substance](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-pqcmc-component-substance.html) (ComponentSubstance) profile on the [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) Resource
* Related Organizations
    * [Basic Organization](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the<span style="text-decoration:underline;"> [Organization](http://hl7.org/fhir/R5/organization.html) Resource</span>
    </span>
Note: profile computable names (in parenthesis above) map to names in the Profile Map below.


### eCTD 3.2.P.1 Profile Map

<div>{%include ProdDesComp.svg%}</div>
Use the zoom feature in the browser to enlarge the profile map for reading.

### Usage Patterns

Not Applicable

### Examples

This image demonstrates a multilayer tablet displayed with narrative inserted in the composition text element.  It has two parts. The XML can be found on the Artifacts page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile. [bd0f0a7a-27ea-4884-801d-bd0546e80888](Bundle-bd0f0a7a-27ea-4884-801d-bd0546e80888.html)

<div><img src="32P102layers.png" /></div>