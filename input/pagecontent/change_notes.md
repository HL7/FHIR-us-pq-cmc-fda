PQ/CMC FHIR Implementation Guide is underdevelopement.  Minor releases will be posted for feedback. These release notes will be retained until the next major release which will be numbered 0.5.0 and and correspond to the project's 1.5 release.  See the Directory of published versions link does not work until there is a balloted publication on HL7.

### Changes and Updates for Version 0.1.12
The current development IG - !!R5 draft-final version!!

* Added vs for action cardinality in Specification and bound element


<ul>
Resolved 38 Errors from R5 draft-final version:
<li> The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis</li>
<li> No element found at path valueString for CardRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for FlagRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis</li>
<li> No element found at path component.valueString for CardRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for FlagRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis</li>
<li> The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis</li>
<li> No element found at path valueString for CardRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for FlagRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for CaretValueRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path valueString for CaretValueRule in ResultObservation in BatchAnalysis</li>
<li> The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis</li>
<li> No element found at path component.valueString for CardRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for FlagRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for CaretValueRule in ResultObservation in BatchAnalysis</li>
<li> No element found at path component.valueString for CaretValueRule in ResultObservation in BatchAnalysis</li>
<li> Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugProductmanufacturingBatch in DrugProductResources</li>
<li> No element found at path batch.extension[medication-batch] for CardRule in DrugProductBatch in DrugProductResources</li>
<li> No element found at path batch.extension[medication-batch] for FlagRule in DrugProductBatch in DrugProductResources</li>
<li> Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugProductmanufacturingBatch in DrugProductResources</li>
<li> Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugSubstancemanufacturingBatch in DrugSubstanceResources</li>
<li> Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugSubstancemanufacturingBatch in DrugSubstanceResources</li>
<li> No element found at path extension[api-batch] for CardRule in DrugSubstanceBatch in DrugSubstanceResources</li>
<li> No element found at path extension[api-batch] for FlagRule in DrugSubstanceBatch in DrugSubstanceResources</li>
<li> The element or path you referenced does not exist: component.property[PPiD].valueCodeableConcept.text in Example32p10Bundle</li>
<li> The element or path you referenced does not exist: component[1].property[PPiD].valueCodeableConcept.text in Example32p10Bundle</li>
<li> The element or path you referenced does not exist: component[1].property[Color].valueCodeableConcept.text in Example32p10Bundle</li>
<li> The element or path you referenced does not exist: component[2].property[PPiD].valueCodeableConcept.text in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
<li> Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle</li>
</ul>

<ul>
<li>#Terminologies added the value sets and aliases  </li>
<li>$CP = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-coating-purpose </li>
<li>$BATCHFORMPROP = http://hl7.org/fhir/us/pq-cmc/StructureDefinition/batch-formula-property-cs </li>
<li>$CAPCLASS = http://hl7.org/fhir/us/pq-cmc/codesystem/qcmc-capsule-classification-category </li>
<li>$INGREDNAMETYPE = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-product-ingredient-name-type </li>
<li>$PRODCHARS = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-product-characteristic</li>
<li>updated references to vlauesets</li>
<li>Changed profiles on DrugSubstance to SubstanceDefinition because the profile on profile was requiring too many optional elements</li>
<li>Updated plantUMLs: hyperlink to Substance Control</li>
<li>Updated plantUMLs: Parent refernece to SubstanceDefinition</li>
<li>Reviewed an updated broken links in all plantUMLs</li>
<li>Changed DrugProductwithImpurites to DrugProductwithImpurities in sushi and plantUML</li>
<li>14	eCTD Profiles dropdown	Substance Characterisation (3.2.S.30.)	should be Substance Characterisation (3.2.S.3)</li>
<li>15	Substance Characterisation [8]	page header is eCTD Substance Characterisation	should it be "Substance Characterisation?</li>
<li>edits to all profile pages to remove html p marks</li>
<li>edits to index page to correct numbering and indentation</li>
<li>edit Substance Impurities to set structure optional</li>

<ul>
Added the following examples:
<li>Instance</li>: 4f25eb50-6763-44c6-b4f4-def04382918e is an example of: MfgTestSiteOrganization</li>
<li>Instance</li>: 28629bd0-7744-4c57-abba-e138196f82fa is an example of: MfgTestSiteOrganization</li>
<li>Instance</li>: 9949f8af-99c9-4930-a766-752d7d65b1ab is an example of: MfgTestSiteOrganization</li>
<li>Instance</li>: d860b368-2de7-40e9-9f8a-1dd2b5c75ca6 is an example of: Component</li>Substance</li>
<li>Instance</li>: a8b37824-6be3-4519-9cbf-3651ef8f0af9 is an example of: DrugProductComponent</li>
<li>Instance</li>: 0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a is an example of: Component</li>Substance</li>
<li>Instance</li>: c737cca8-d8d7-42ba-8eea-cc4c13b2b279 is an example of: DrugProductComponent</li>
<li>Instance</li>: f201f024-e53c-43cd-bfc9-2b5cbb7f79da is an example of: Component</li>Substance</li>
<li>Instance</li>: 0b39649a-9e43-48f8-8c92-5bf289409714 is an example of: DrugProductComponent</li>
<li>Instance</li>: aa200c60-3cf4-47e0-9afc-a3693f0d0a08 is an example of: Component</li>Substance</li>
<li>Instance</li>: 646f1115-2aad-4f0f-b7bc-a690a3d30b5b is an example of: DrugProductComponent</li>
<li>Instance</li>: adfe47f8-afc6-4e38-8bc5-473b6d40fdc9 is an example of: Component</li>Substance</li>
<li>Instance</li>: 1f8abd13-b06a-4b28-b5de-4d5680be805d is an example of: DrugProductComponent</li>
<li>Instance</li>: 25a9214e-c913-4935-a794-3646793530ed is an example of: Component</li>Substance</li>
<li>Instance</li>: 1019ae87-0010-4cd0-b6e9-13e581009b43 is an example of: DrugProductComponent</li>
<li>Instance</li>: a200db80-d7bb-46fa-b6c1-049c2d1ed07b is an example of: Component</li>Substance</li>
<li>Instance</li>: e9042a05-de7e-4674-9a2d-0cac4a7144c1 is an example of: DrugProductComponent</li>
<li>Instance</li>: 7d9aadeb-096a-4685-b234-774aedb0bdd7 is an example of: Component</li>Substance</li>
<li>Instance</li>: 54d2699b-0efa-46e6-ac47-c92ff890b422 is an example of: DrugProductComponent</li>
<li>Instance</li>: e35cbed2-cc09-4e15-a1c2-a71c8989297e is an example of: Component</li>Substance</li>
<li>Instance</li>: 25de86cc-fbab-47d4-b410-c8e6bdf53ebb is an example of: DrugProductComponent</li>
<li>Instance</li>: 29c88a54-f014-4bd1-9a6a-2da0e033b8da is an example of: Component</li>Substance</li>
<li>Instance</li>: b69f8d81-2a78-48e5-b190-fbd916285af1 is an example of: DrugProductComponent</li>
<li>Instance</li>: 5863a14d-6589-484b-8ad4-939a050071b3 is an example of: Component</li>Substance</li>
<li>Instance</li>: 9b7c6fed-ca72-41bb-bc8e-6eff32662e40 is an example of: DrugProductComponent</li>
<li>Instance</li>: bd41540d-0799-4999-a020-4b8e478bd81a is an example of: Component</li>Substance</li>
<li>Instance</li>: 6c7187af-c9d8-4ca5-80b9-b3af9d444658 is an example of: DrugProductComponent</li>
<li>Instance</li>: 533904dc-c2ec-4974-9cf9-874e17fd9f3e is an example of: DrugProductDescription</li>
<li>Instance</li>: 0582135b-87a4-4076-8293-e61215f63374 is an example of: DrugProductContainerClosure</li>
<li>Instance</li>: 15d09c40-0d0c-4f6a-a6f6-585bd21b01f3 is an example of: FinishedProduct</li>
<li>Instance</li>: c494852b-41c0-4b50-880d-7c7a36fe4b6e is an example of: SponsorOrganization</li>
<li>Instance</li>: c0ed7a77-88c2-4afc-9ace-11bf19fba5ee is an example of: EctdComposition32P10</li>
<li>Instance</li>: 6929592c-228f-4e98-9ed7-ffe9d11f2d03 is an example of: CMCeCTDDocument32P10</li>
</ul>

### Changes and Updates for Version 0.1.11

<ul>
<li>added name parts to RoutineDrugProduct</li>
<li>Changes to Specification action.title.extension for rrt cardinaly set to 0..1 and support for mandatory useContext.code /li>
<li>Moved Aceptacnce Criteria Usage from Category to goal.addresses due to cardinality on goal.category</li>
<li>Error correction!! Set component.constituent.hasIngredient only Reference(DrugProductComponent) Was accidentally chnaged in Batch Formula rewrite.</li>
<li>Technical correction: corrected Id's of 7 profiles that have upper case letters</li>
<li>Added NamePartType Value set</li>
<li>Added values to values sets for code systems that will be replaced by NCI code.  Include Sushi statement not working as expected.</li>
<li>corrected assignment of  PqcmcProductCharacteristicCodes in Finished product</li>
</ul>
<ul>
Added the following examples:
<li>"A quality specification is for a drug product or drug substance (excipient, API or raw material)</li>
<li>A quality specification is for a drug substance </li>
<li>8e854cea-f491-471f-b5dc-910f20135658 InstanceOf: RoutineDrugProduct</li>
</ul>

### Changes and Updates for Version 0.1.10
<ul>
<li>Added Uniprot</li>
<li>Version 0.1.9 failed to build on build site. This version is being released to trigger the publisher on the build site. /li>
</ul>

### Changes and Updates for Version 0.1.9

<ul>
<li>added name parts to all Drug Product profiles.  Used HL7 terminology for parts http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2.  Should add text intro on which of these codes is expected.  Note: PQ/CMC has non-propietary mandatory and propeitary optional.  This is the opposite of SPL.</li>
<li>The cardinaltiy of ActivityDefiniton changed for Ingredient from * to 1.  This nessitated a rewrite of everything related to 32P32: main profiles, composition profile and bundle</li>
<li>edit PlantUml Diagram for 32P32</li>
<li>Added content percent to MID</li>
<li>Move names and definitions from property types to values for all in Manufactured Drug Product</li>
<li>Added total type elements for 32P1 for acition requested from Clearnace review.</li>
<li>remove reference to DrugProductDescription from Profile: DrugProductComponent </li>
<li>Ensure uml daigrams refresh on CI build site</li>
</ul>

<ul>
Added the following examples:
<li>Example of ExcipientRaw profile </li>
<li>Example RoutineSubstanceDefinition </li>
<li>Example of MfgTestSiteOrganization profile on Organization</li>
</ul>

### Changes and Updates for Version 0.1.8
<ul>
<li>Changed Folder to Heading</li>
<li>Corrected errata on 0.1.7 error page </li>
<li>Added page for stability summary</li>
<li>Created plantuml for stability summary</li>
</ul>
Added the following profiles:
<ul>
<li>Profile: EctdCompositionSP7181</li>
<li>CMCeCTDDocumentSP4151</li>
<li>CMCeCTDDocumentSP7383</li>
<li>CMCeCTDDocumentSP4454</li>
<li>CMCeCTDDocument32P32</li>
<li>CMCeCTDDocument32P55</li>
<li>CMCeCTDDocument32P70</li>
<li>CMCeCTDDocument32P10</li>
<li>CMCeCTDDocument32S60</li>
<li>CMCeCTDDocument32S10</li>
<li>CMCeCTDDocument32S23</li>
<li>CMCeCTDDocument32S30</li>
</ul>

### Changes and Updates for Version 0.1.7
<ul>
<li>changed bundle headers in ribbon</li>
<li>added 0 to 32S3 in diagram, removed units added Chemical Structure Data File Type Terminology </li>
<li>Two-tiered test category code list </li>
<li>Updated Specification and Observation profiles to reflect the test sub category in slice</li>
<li>Complete reconstruction on 32P30 to include the parts.  Incldues elements, ectd, bundle and diagram</li>
<li>Corrections for 32S23 </li>
<li>Corrections for 32S10 </li>
<li>New profile for stability summary </li>
<li>Substance Characterization change against multiple proflles </li>
</ul>

### Changes and Updates for Version 0.1.6

<ul>
<li>Added IP Statements, Dependencies and Globals to index page.  Now required for IG</li>
<li>Corrected molecular formula and molecular weight in proviles</li>
<li>Impurities now zero or many in composisiton </li>
<li>Added profile for 3.2.S.3.0 Characterisation Bundle</li>
<li>Added substanceType </li>
</ul>

### Changes and Updates for Version 0.1.5
<ul>
<li>terminology experimental</li>
<li>OID reference correction</li>
<li>Corrections to package-list.json</li>
<li>traced qa.html errors. Non-correctable entered as JIRA tickets.</li>
<li>added new terminologies as codes. Not in NCIt</li>
<li>added slices to subtance name and type</li>
<li>added MID for product Part concept</li>
<li>added Biopolymer Sequence</li>
<li>added eCTD Document 32S30 Bundle</li>
<li>added Analytical Instrument Data File Narrative Text</li>
<li>updated examples for substance name changes</li>
</ul>
### Changes and Updates for Version 0.1.4

<ul>
    <li>corrected the file shown in Substance General Information</li>
    <li>corrected arrow to Characterization of Impurities sponsor in diagram</li>
    <li>corrected general instructions page</li>
    <li>correct pq-product-batch-ingredient-extension (overagePercent and overageJustification) cardinaltiy set to 0..1</li>
<li>moved labels and description of batch size to extension</li>
<li>Descripton does not exist in operatiaon.  Changed to additional-information entension in Batch Formula</li>
<li>Created batch formula bundle profile</li>
<li>Added Batch Formula example in bundle</li>
<li>corrected parent SubstanceDefinition in diagram for Batch Formula</li>
<li>Changed BatchFormulaIngredient to BatchIngredientReference</li>
<li>debugged build errors not in sushi run</li>
<li>commented out subject in Specification. MPD and SD not in R4B.  Need to uncomment when build supports R5</li>
<li>Added text to download page and text on stylesheets</li>
<li>Added text on Narrative Generation on General Instruction page </li>
<li>Conversion to V5 in IG build</li>
<li>Organzation change of address to contact</li>
<li>PlanDefinition: Added ratio interger and string to goal.target. Removed codable concept.</li>
<li>added cmc-substance-relationship invariant to DrugSubtance.relationship.type.text and  DrugSubtance.reference</li>
<li>added diagram for Substance Characterization</li>
<li>edited drug product impurity diagram</li>
<li>added Characterization Bundle Page to menu</li>
<li>Removed batch container closure extension -  uncommmented Medication manufacturingBatch extension parts</li>
<li>ingredient strenght text R5 support change</li>
<li>subjectCanonical uncommented in PlanDefinition with R5 support</li>
<li>Detangled substance and product diagrams. Added menu item for Product impurites</li>
<li>Removed profile from activityDefiniton.  No longer a required element in the resource</li>
<li>Changed subjectCanonical to subjectReference in PlanDefinition. Change in version of PlanDefinition </li>
<li>corrected id to uids in all examples</li>
<li>entered concentration text in examples</li>
<li>added depiction to ContainerClosureExtension to handle images as attachments</li>
<li>changed example of 23P10 to make image in container closure an attachment</li>
<li>updated svg files to reflect changes</li>
<li>updated 17 DrugProductIngredient examples with substance.strength.textConcentrationt R5 support change</li>
<li>fixed overage extension examples</li>
<li>changed address to in contact.address in all examples - R5</li>
<li>Added three bundle examples </li>
</ul>
### Changes and Updates for Version 0.1.3

<ul>
    <li>Added back the Excipient profile. Refactored for specification excipients. </li>
    <li>Removed instance = true from Medication and Substance based profiles </li>
    <li>Added diagrams for nine eCTD bundles</li>
    <li>added table of contents to ribbon menu</li>
<li>created 23S10 bundle profile</li>
<li>Added example for 23S10 bundle profile and all required resource examples</li>
<li>Added 10 subtances for batch formula and mfg sites</li>
<li>added diagram for substance characterization</li>
<li>added element names and definitions for to DrugSubstanceImpurities for the substance impurity case</li>
<li>added invariat for substance relationship</li>
</ul>


### Changes and Updates for Version 0.1.2
The current development IG

<ul>
    <li>Deleted the Exceipient profile It was redundant with ComponentSubstance profile. </li>
    <li>Added examples </li>
    <li>Added diagrams </li>
    <li>removed instance from DrugProductBatch</li>
</ul>

### Changes and Updates for Version 0.1.1
The current development IG

<ul>
    <li>Updated ribbon menu including the addition of this page. </li>
    <li>Profile: MfgTestSiteOrganization.  Moved type to identifier.type. Type will be used in the future for mannufacturing function. </li>
    <li>Profile: Drug Substance Explictly sliced name. Necessary for addition of business rule. Updated mapping of representation.  Removed UNII from identifier.</li>
    <li>Profile: Drug Substance Manufacturing Batch.  Added Retest Date Classification. Updated mapping of representation</li>
    <li>Profile: Substance Impurities remove reference to ComponentSubstance. Updated mapping of representation.  Removed UNII from identifier.</li>
    <li>Profile: Drug Product Description. Removed duplication of container closure extension. Fixed names. </li>
    <li>Profile: PqAddress.  Added to country instruction and created valueset for country codes. Added invariant to use value set </li>
    <li>Profile: PolymorphicForm: Updated mapping of representation. Removed UNII from identifier.</li>
    <li>Updated graphic reference and the file type</li>
    <li>Removed extensions for presentation and concentration text.  Still broken in Sushi.  Commmented out.  </li>
    <li>Added legend for graph on Home page  </li>
    <li>Addded text and graphic for Product Description and Composition of the Drug Product </li>
    <li>Added exaample for Product Description and Composition of the Drug Product </li>
    <li>Added business rules by enforing cardinality or nested cardinality </li>
    <li>Added business rules as Invariants </li>	
<ul>
<li> Invariant:  cmc-name-preferred	Description: :Name.preferred: at most one = true:</li>
<li> Invariant: cmc-when-unii-required	Description: :A UNII is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'.</li>
<li> Invariant:  cmc-name-isbt	Description: :Name.type ISBT 128 requried for blood products.</li>
<li> Invariant: cmc-ingredient-functions	Description: :If Drug Product Component Function Category is Active Ingredient or Adjuvant THEN Drug Product Component Function will be NA.</li>
<li> If Drug Product Component Function Category is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list.</li>
<li> Invariant: cmc-substance-structure-graphic-required	Description: :A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'.</li>
<li> Invariant: cmc-representation-or-document	Description: :A structure has either a representation or document and supporting types.</li>
<li> Invariant: cmc-structure-required	Description: :A structure is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'.</li>
<li> Invariant: cmc-source-material	Description: :IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable.</li>
<li> Invariant: cmc-strength-type-cases	Description: :When Strength Type =Activity - IF UOM is UCUM Arbitrary Unit [arb'U], need to describe the Units in Strength Text data element
IF Strength Type = Mass THEN Strength Numeric and Strength UOM are Mandatory
IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements. Strength Textual and StrengthUOM will be Mandatory and Operator will be Optional.</li>
<li> Invariant: cmc-arbitrary-unit	Description: :If the UOM is UCUM Arbitrary Unit [arb'U], you need to describe the units in the Strength Text data element.</li>
<li> Invariant:  CMP-identifer	Description: :A document must have an identifier with a system and a value.</li>
<li> Invariant:  CMP-date	Description: :A document must have a date.</li>
<li> Invariant:  CMP-first_resource	Description: :A document must have a Composition as the first resource.</li>
 </ul>
<li>Vocabulary title correctiions to match FRN -- many were Init cap corrections.  Removed: Chemical Structure Datafile Origin, Co-packaged Indicator, Product Related Impurity Category, and Drug substance Product Indicator  </li>
<li>added EVMPD Substance Classification terminology </li>
<li>added Substance Classification element</li>
<li>Corrected cardinality of cross-reference in DrugProductDescription </li>
<li>Added new profile for eCTD 3.2.P.1</li>
<li>Cross-reference set to default cardinality</li>
<li>move sponsor type from organizaton to organization.identifer</li>
<li>corrected additional information extension use</li>
<li>Deleted Exciepient profile.  The same as ComponentSubstance used in product composition.</li>
<li>Made code UNII in ComponentSubstance profile</li>
<li>corrected SubstanceDefinition.structure.representation.format cardinality</li> 
<li>corrected EctdComposition32P10 with addition MedicationDefinition profile for Container Closure </li> 
</ul>
<p> </p>
