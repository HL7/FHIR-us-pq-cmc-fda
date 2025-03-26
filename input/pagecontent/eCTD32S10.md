### Domain Overview

The General Information bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.1 folder content to the FDA. This is a higher level CTD folder.  At present this folder’s scope is the drug substance 3.2.S.1.1 - Nomenclature and 3.2.S.1.2 - Structure.  Some of the content of these sections are described below –
- 3.2.S.1.1 - Nomenclature (e.g., GSRS Preferred Name, INN, USAN, etc.)
- 3.2.S.1.2 - Structure
    - In the case of a New Chemical Entity (NCE), the structural formula, including relative and absolute stereochemistry, the molecular formula, and the relative molecular mass should be provided.
    -  For Biotech products, the schematic amino acid sequence indicating glycosylation sites or other post-translational modifications and relative molecular mass should be provided, as appropriate.
- Note: 3.2.S.1.3 is NOT in scope of this bundle profile at this time.

### Implementer Instructions

- For a drug product containing more than one active drug substance, the _CMC eCTD 32S10 Document_ should be provided in its entirety for each drug substance.
    -  _CMC eCTD 32S10 Document_ - profile on [Bundle](http://hl7.org/fhir/R5/bundle.html) Resource (representing the FHIR XML content as a collection of content in a single “document” and which should be repeated for each active substance). There will be one document profile for each S section in module 3.   

### Representation in FHIR

The domain concepts of Substance Nomenclature and Structure are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Substance General Information FHIR Profile. Concepts that are key to this domain include the following:

* Drug Substance Nomenclature
    * [Substance General Information](StructureDefinition-pqcmc-drug-substance-nomenclature-structure.html) (DrugSubstanceNomenclatureStructure) profile on the [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource
    * [Polymorphic Form](StructureDefinition-pqcmc-polymorphic-form.html) (PolymorphicForm) profile on the [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource

* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the<span style="text-decoration:underline;"> [Organization](http://hl7.org/fhir/R5/organization.html) Resource</span>

Note: profile computable names (in parenthesis above) map to names in the Profile Map below. 

### CTD 3.2.S.1 Profile Map

<div>{%include SubstanceGeneral.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supporting other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a Drug Substance with a polymorph displayed with narrative inserted in the composition text element.  The XML can be found on the Artifacts page. The XML file with the publisher narrative is on the artifacts page and in the Bundle profile. [GeneralInformationBundle](Bundle-GeneralInformationBundle.html)

The file includes a SDF file as an attachment.  After processing with the narrative tranform available on the [Downloads page](downloads.html), clink on the file link at the bottom.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="32S10Lev.png" />

</figure>

{::options parse_block_html="true" /}

