### Domain Overview

The Description and Composition of the Drug Product bundle profile provides a mechanism for the industry to submit Module 3 of CTD 3.2.P.1 folder content to the FDA. The contents of this section include a description of the drug product, its container closure, and its components and constituents. At this time, the profile is scoped to support only products that have a solid oral dose form; other dose forms will be supported in future iterations of the profile.

The Food and Drug Administration (FDA) requires registered drug establishments to provide a current list of all drugs manufactured, prepared, propagated, compounded, or processed by it for commercial distribution. Drug products are identified and reported using a unique, three-segment number, called the National Drug Code (NDC), which is a universal product identifier for human drugs. It identifies the labeler, product, and trade package size. The second segment of the NDC, the product code, identifies a specific strength, dosage form, and formulation for a particular firm. The decision was made to align the definition of a PQ/CMC drug product with the product code (or second segment) of the NDC. Therefore, each 32P10 bundle is for a specific strength and dose form. For those drug products that are available in multiple strengths and/or dose forms, a separate 32P10 bundle must be submitted for each distinct combination.

For the purposes of the PQ/CMC IG, the Example 1 below of a two-layer Tablet provides description of the terms used to explain the 2-layer tablet.

<table ><tr><td><img src="image1.png" /></td></tr></table>

<p style="font-weight: bold"> Example 1: A 2 layer tablet with 1 purple layer and 1 white layer </p>

- A <span style="text-decoration:underline;">Drug Product</span> is the dose unit, i.e., the whole tablet.
- <span style="text-decoration:underline;">Components</span> are the “parts” of the Drug Product, i.e., each of the two layers in the tablet is considered a Component. If the tablet was coated, the coating would be another (third) Component.
    - A Drug Product must have at least one Component.
    - NOTE:  In the FDA Federal Register Notice (FRN), a Component is referred to as the Product Part.  The PQ/CMC FHIR IG uses the HL7 resource term and hence the word Component.    

- <span style="text-decoration:underline;">Constituents</span> are the active and inactive ingredients used in the manufacture of the Drug Product
    - Constituent information is included with respect to the Drug Product and with respect to each relevant Component. Each Constituent may be included in one or more Components of the Drug Product.

    - NOTE:  In the FDA Federal Register Notice (FRN), a Constituent is referred to as the Ingredient.  The PQ/CMC FHIR IG uses the HL7 resource term and hence the word Constituent.
    
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
    * [Drug Product Description](StructureDefinition-pqcmc-drug-product-description.html) (DrugProductDescription) profile on the [MedicinalProductDefinition](https://hl7.org/fhir/medicinalproductdefinition.html) Resource
    * [Co-Packaged Product](DrugProductHandle) profile on the [MedicinalProductDefinition](StructureDefinition-pqcmc-drug-product-handle.html) resource
* Container Closure
    * [Drug Product Container Closure](StructureDefinition-ContainerClosure.html) (ContainerClosure) profile on the [PackagedProductDefinition](https://hl7.org/fhir/packagedproductdefinition.html) Resource
* Product Composition
    * [Manufactured Drug Product](StructureDefinition-pqcmc-product-part.html) (FinishedProduct) profile on the [ManufacturedItemDefinition](https://hl7.org/fhir/R5/manufactureditemdefinition.html) Resource
    * [Drug Product Component](StructureDefinition-pqcmc-component.html) (DrugProductComponent) profile on the [Ingredient](https://hl7.org/fhir/R5/ingredient.html) Resource
    * [Component Substance](StructureDefinition-pqcmc-component-substance.html) (ComponentSubstance) profile on the [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) Resource
* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the<span style="text-decoration:underline;"> [Organization](http://hl7.org/fhir/R5/organization.html) Resource</span>
   
Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### eCTD 3.2.P.1 Profile Map

<div>{%include ProdDesComp.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supporting other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a multilayer tablet displayed with narrative inserted in the composition text element.  It has two parts. The XML can be found on the Artifacts page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile. [DescriptionCompositionBundle](Bundle-DescriptionCompositionBundle.html)

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="32P102layers.png" />

</figure>

{::options parse_block_html="true" /}