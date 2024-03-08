PQ/CMC FHIR Implementation Guide is underdevelopement.  Minor releases will be posted for feedback. These release notes will be retained until the next major release which will be numbered 0.5.0 and and correspond to the project's 1.5 release.  See the Directory of published versions link does not work until there is a balloted publication on HL7.

### Changes and Updates for Version 0.1.22
The current development IG -   Pre-ballot
Note: This list will be cleared for the ballot version

- Corrections from FHIR IG Bugs.xlsx 
- changes to yaml file for realm change and title

### Changes and Updates for Version 0.1.21

- path name correction in package list json file
- corrections from review of 0.1.20
- Added example of 2.3.P.4.

### Changes and Updates for Version 0.1.20
- Sliced MID.function on value sets
- Changes from the Excel file
- Split of stage 1
- Realm code change

### Changes and Updates for Version 0.1.19

- Updated downloads page
- Updated narrative transform sripts for changes made to release 0.1.18.  Minimization of JavaScript files for optimal usage in a browsers.
- Updated instructions for narrative transform use
- Included new zip for narrative transform

### Changes and Updates for Version 0.1.18

- Temporary Code system created and in its own file until a terminology server is up
- Alias and example updates for temporary code system
- Fixed codes, constituent function slicing on text
- IG Version extension moved from meta to identifier
- NCIt as local codesystem - includes those waiting for approval

### Changes and Updates for Version 0.1.17

- Edits to examples
- Updates to pull down pages
- Invariant to enforce compostion contained in a bundle
- Styled XML files converted to images
- Mapping of Country Code to GENC
- Edits from proof reader of Version 0.1.16 content

### Changes and Updates for Version 0.1.16

- Examples
- FRN element names, cardinality and definition changes
- Updates to PlantUML diagrams
- Updates to pull down pages
- Invariants added
- Style applied to XML files
- Temporary replacement of GENC and NCIT
- Corrections throughtout
- Varriations on tests in specifications added to domain page
- Documentation added for using the narrative generation application. 

### Changes and Updates for Version 0.1.15
Stage 1A - PoP edition

- Enhanced content examples for 3.2.S.1.0 nad 3.2.P.1.0.  Errors addressed. Change requests provided to Zulip.
- Testing and edits to invariants
- Additional invariants for Action in Specification
- relaxed constraint cmc-representation-or-document
- added missing nomenclatures
- split function and function category
- removed slice for numerator and denominator on components and constituents in FinishedProduct.  
- Added location codes and kept text for actual location name to support the notion of 1* in the extant denominator
- Updated Specification examples to current profiles.  NOT VALIDATED
- blocked narrative generation in: 
    - DocumentReference/9e08d53c-fb60-42ea-a19a-71a1af3dcc83,
    - DocumentReference/fd006e04-8764-4d83-b6ee-bbf8f35847e0
    - DocumentReference/ff0e6432-2f8b-43cc-a3b3-462981a2d929
    - SubstanceDefinition/0e036d9c-acb2-4f51-abcb-664f56c57191
    - Organization/3a8f866b-4cb1-44c7-b6d0-126e2d9b39b6
- Rebuilt warnings ignore file.  Specification related messages not addressed
- corrected slicing on 32S10 composition
- corrected slicing on all bundles
- added  role = to  Ingredient profile.  Required by Resource  
- added missing nomenclatures to SubstanceDefinition resources
- created extension ConstituentPercent for Finished Product constituents
- updated SubstanceGeneral.plantuml

### Changes and Updates for Version 0.1.14

- Removed recusive on backbone in MID.  Not supported in FHIR  Added coded value to PPID to idenify parent/child status
- nomenclature changes to substance and product
- changes to container clousure.  Added descrition and depiction
- many small changes throughout IG
- removed examples if there were errors
- Specification modified for reference error - pending publisher release of fix
- Update of all PlantUML diagrams to reflect changes to bundles link corrections and formating for PlantUML version change in publisher
- ribbon updated for stages
- Specfication page updated with new text

### Changes and Updates for Version 0.1.13

Triage all Warnings (214) Resolved 38.  Others either US Common Core or Terminology not supported by server

Errors: 118, Warnings: 220, Info: 3, Broken Links: 10 (19:46.380)
Errors: 114, Warnings: 182, Info: 3, Broken Links: 5 (21:38.333)

-  Added vs for action cardinality in Specification and bound element
-  Corrected duplicate title for instances
-  Added related action requirements to Quality Specification profile
-  Created profile for all permutations of goals 
-  created ignoreWarnings file
-  added goal examples to specification webpage
-  corrected 20 errors in Batch Analysis profiles due to illimination of valueMarkdown in results
-  added nodes for bundle references in all diagrams; changed reference to composition profile for all diagrams.
-  added context element to structure defintions for all extensions.  Not previously enforced by publisher
-  created FHIR-us-pq-cmc.xml for https://github.com/HL7/JIRA-Spec-Artifacts/tree/master/xml
-  corrected intrepretation codes in DiagnosticReport
-  corrected UCUM codes. Remmoved warning messages from IgnoreWanrnings.
-  added location, grade to batchformula 
-  moved pq-product-batch-ingredient-extension to component.constituent
-  added slices Weight, VolumeToVolume,  WeightToVolume and  WeightToWeight to component.constituent.amount in batch formula
-  added batch utilization to Batch Formula
-  changed from UCUM to NCIT for units
-  corrected examples for all changes from R5 release
-  added titles and descriptions to all examples to support the Artifacts table of examples

Added the following examples:
- A quality specification is for a drug product
- Example Sponsor
- Manufacturing Test Site (test site A)
- Drug Substance Structures - Nitazoxanide
- Drug Substance Nomenclature - Nitazoxanide
- Example Composistion for 32S10
- Exmaple Bundle for 32S10

### Changes and Updates for Version 0.1.12
 !!R5 draft-final version testing!!


Resolved 38 Errors from R5 draft-final version:
-   The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis
-   No element found at path valueString for CardRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path valueString for FlagRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis
-   The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis
-   No element found at path component.valueString for CardRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path component.valueString for FlagRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path component.valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis
-   No element found at path component.valueString for CaretValueRule in MultipleReplicatesResultObservation in BatchAnalysis
-   The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis
-   No element found at path valueString for CardRule in ResultObservation in BatchAnalysis
-   No element found at path valueString for FlagRule in ResultObservation in BatchAnalysis
-   No element found at path valueString for CaretValueRule in ResultObservation in BatchAnalysis
-   No element found at path valueString for CaretValueRule in ResultObservation in BatchAnalysis
-   The type "string" does not match any of the allowed types: Quantity or CodeableConcept or markdown or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) or Canonical() in BatchAnalysis
-   No element found at path component.valueString for CardRule in ResultObservation in BatchAnalysis
-   No element found at path component.valueString for FlagRule in ResultObservation in BatchAnalysis
-   No element found at path component.valueString for CaretValueRule in ResultObservation in BatchAnalysis
-   No element found at path component.valueString for CaretValueRule in ResultObservation in BatchAnalysis
-   Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugProductmanufacturingBatch in DrugProductResources
-   No element found at path batch.extension[medication-batch] for CardRule in DrugProductBatch in DrugProductResources
-   No element found at path batch.extension[medication-batch] for FlagRule in DrugProductBatch in DrugProductResources
-   Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugProductmanufacturingBatch in DrugProductResources
-   Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugSubstancemanufacturingBatch in DrugSubstanceResources
-   Parent http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch not found for DrugSubstancemanufacturingBatch in DrugSubstanceResources
-   No element found at path extension[api-batch] for CardRule in DrugSubstanceBatch in DrugSubstanceResources
-   No element found at path extension[api-batch] for FlagRule in DrugSubstanceBatch in DrugSubstanceResources
-   The element or path you referenced does not exist: component.property[PPiD].valueCodeableConcept.text in Example32p10Bundle
-   The element or path you referenced does not exist: component[1].property[PPiD].valueCodeableConcept.text in Example32p10Bundle
-   The element or path you referenced does not exist: component[1].property[Color].valueCodeableConcept.text in Example32p10Bundle
-   The element or path you referenced does not exist: component[2].property[PPiD].valueCodeableConcept.text in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x] has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle
-   Element ManufacturedItemDefinition.component.property:PPiD.value[x]:valueMarkdown has minimum cardinality 1 but occurs 0 time(s). in Example32p10Bundle


-  #Terminologies added the value sets and aliases  
-  $CP = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-coating-purpose 
-  $BATCHFORMPROP = http://hl7.org/fhir/us/pq-cmc/StructureDefinition/batch-formula-property-cs 
-  $CAPCLASS = http://hl7.org/fhir/us/pq-cmc/codesystem/qcmc-capsule-classification-category 
-  $INGREDNAMETYPE = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-product-ingredient-name-type 
-  $PRODCHARS = http://hl7.org/fhir/us/pq-cmc/codesystem/pqcmc-product-characteristic
-  updated references to vlauesets
-  Changed profiles on DrugSubstance to SubstanceDefinition because the profile on profile was requiring too many optional elements
-  Updated plantUMLs: hyperlink to Substance Control
-  Updated plantUMLs: Parent refernece to SubstanceDefinition
-  Reviewed an updated broken links in all plantUMLs
-  Changed DrugProductwithImpurites to DrugProductwithImpurities in sushi and plantUML
-  14	eCTD Profiles dropdown	Substance Characterisation (3.2.S.30.)	should be Substance Characterisation (3.2.S.3)
-  15	Substance Characterisation [8]	page header is eCTD Substance Characterisation	should it be "Substance Characterisation?
-  edits to all profile pages to remove html p marks
-  edits to index page to correct numbering and indentation
-  edit Substance Impurities to set structure optional


Added the following examples:
-  Instance: 4f25eb50-6763-44c6-b4f4-def04382918e is an example of: MfgTestSiteOrganization
-  Instance: 28629bd0-7744-4c57-abba-e138196f82fa is an example of: MfgTestSiteOrganization
-  Instance: 9949f8af-99c9-4930-a766-752d7d65b1ab is an example of: MfgTestSiteOrganization
-  Instance: d860b368-2de7-40e9-9f8a-1dd2b5c75ca6 is an example of: ComponentSubstance
-  Instance: a8b37824-6be3-4519-9cbf-3651ef8f0af9 is an example of: DrugProductComponent
-  Instance: 0c5bfc1f-c1e3-4e41-ac36-2cdc7e89ee7a is an example of: ComponentSubstance
-  Instance: c737cca8-d8d7-42ba-8eea-cc4c13b2b279 is an example of: DrugProductComponent
-  Instance: f201f024-e53c-43cd-bfc9-2b5cbb7f79da is an example of: ComponentSubstance
-  Instance: 0b39649a-9e43-48f8-8c92-5bf289409714 is an example of: DrugProductComponent
-  Instance: aa200c60-3cf4-47e0-9afc-a3693f0d0a08 is an example of: ComponentSubstance
-  Instance: 646f1115-2aad-4f0f-b7bc-a690a3d30b5b is an example of: DrugProductComponent
-  Instance: adfe47f8-afc6-4e38-8bc5-473b6d40fdc9 is an example of: ComponentSubstance
-  Instance: 1f8abd13-b06a-4b28-b5de-4d5680be805d is an example of: DrugProductComponent
-  Instance: 25a9214e-c913-4935-a794-3646793530ed is an example of: ComponentSubstance
-  Instance: 1019ae87-0010-4cd0-b6e9-13e581009b43 is an example of: DrugProductComponent
-  Instance: a200db80-d7bb-46fa-b6c1-049c2d1ed07b is an example of: ComponentSubstance
-  Instance: e9042a05-de7e-4674-9a2d-0cac4a7144c1 is an example of: DrugProductComponent
-  Instance: 7d9aadeb-096a-4685-b234-774aedb0bdd7 is an example of: ComponentSubstance
-  Instance: 54d2699b-0efa-46e6-ac47-c92ff890b422 is an example of: DrugProductComponent
-  Instance: e35cbed2-cc09-4e15-a1c2-a71c8989297e is an example of: ComponentSubstance
-  Instance: 25de86cc-fbab-47d4-b410-c8e6bdf53ebb is an example of: DrugProductComponent
-  Instance: 29c88a54-f014-4bd1-9a6a-2da0e033b8da is an example of: ComponentSubstance
-  Instance: b69f8d81-2a78-48e5-b190-fbd916285af1 is an example of: DrugProductComponent
-  Instance: 5863a14d-6589-484b-8ad4-939a050071b3 is an example of: ComponentSubstance
-  Instance: 9b7c6fed-ca72-41bb-bc8e-6eff32662e40 is an example of: DrugProductComponent
-  Instance: bd41540d-0799-4999-a020-4b8e478bd81a is an example of: ComponentSubstance
-  Instance: 6c7187af-c9d8-4ca5-80b9-b3af9d444658 is an example of: DrugProductComponent
-  Instance: 533904dc-c2ec-4974-9cf9-874e17fd9f3e is an example of: DrugProductDescription
-  Instance: 0582135b-87a4-4076-8293-e61215f63374 is an example of: DrugProductContainerClosure
-  Instance: 15d09c40-0d0c-4f6a-a6f6-585bd21b01f3 is an example of: FinishedProduct
-  Instance: c494852b-41c0-4b50-880d-7c7a36fe4b6e is an example of: SponsorOrganization
-  Instance: c0ed7a77-88c2-4afc-9ace-11bf19fba5ee is an example of: EctdComposition32P10
-  Instance: 6929592c-228f-4e98-9ed7-ffe9d11f2d03 is an example of: CMCeCTDDocument32P10

### Changes and Updates for Version 0.1.11


-  added name parts to RoutineDrugProduct
-  Changes to Specification action.title.extension for rrt cardinaly set to 0..1 and support for mandatory useContext.code /li>
-  Moved Aceptacnce Criteria Usage from Category to goal.addresses due to cardinality on goal.category
-  Error correction!! Set component.constituent.hasIngredient only Reference(DrugProductComponent) Was accidentally chnaged in Batch Formula rewrite.
-  Technical correction: corrected Id's of 7 profiles that have upper case letters
-  Added NamePartType Value set
-  Added values to values sets for code systems that will be replaced by NCI code.  Include Sushi statement not working as expected.
-  corrected assignment of  PqcmcProductCharacteristicCodes in Finished product

Added the following examples:
-  "A quality specification is for a drug product or drug substance (excipient, API or raw material)
-  A quality specification is for a drug substance 
-  8e854cea-f491-471f-b5dc-910f20135658 InstanceOf: RoutineDrugProduct

### Changes and Updates for Version 0.1.10

-  Added Uniprot
-  Version 0.1.9 failed to build on build site. This version is being released to trigger the publisher on the build site. /li>

### Changes and Updates for Version 0.1.9


-  added name parts to all Drug Product profiles.  Used HL7 terminology for parts http://terminology.hl7.org/CodeSystem/v3-EntityNamePartQualifierR2.  Should add text intro on which of these codes is expected.  Note: PQ/CMC has non-propietary mandatory and propeitary optional.  This is the opposite of SPL.
-  The cardinaltiy of ActivityDefiniton changed for Ingredient from -  to 1.  This nessitated a rewrite of everything related to 32P32: main profiles, composition profile and bundle
-  edit PlantUml Diagram for 32P32
-  Added content percent to MID
-  Move names and definitions from property types to values for all in Manufactured Drug Product
-  Added total type elements for 32P1 for acition requested from Clearnace review.
-  remove reference to DrugProductDescription from Profile: DrugProductComponent 
-  Ensure uml daigrams refresh on CI build site


Added the following examples:
-  Example of ExcipientRaw profile 
-  Example RoutineSubstanceDefinition 
-  Example of MfgTestSiteOrganization profile on Organization

### Changes and Updates for Version 0.1.8

-  Changed Folder to Heading
-  Corrected errata on 0.1.7 error page 
-  Added page for stability summary
-  Created plantuml for stability summary
Added the following profiles:

-  Profile: EctdCompositionSP7181
-  CMCeCTDDocumentSP4151
-  CMCeCTDDocumentSP7383
-  CMCeCTDDocumentSP4454
-  CMCeCTDDocument32P32
-  CMCeCTDDocument32P55
-  CMCeCTDDocument32P70
-  CMCeCTDDocument32P10
-  CMCeCTDDocument32S60
-  CMCeCTDDocument32S10
-  CMCeCTDDocument32S23
-  CMCeCTDDocument32S30

### Changes and Updates for Version 0.1.7

-  changed bundle headers in ribbon
-  added 0 to 32S3 in diagram, removed units added Chemical Structure Data File Type Terminology 
-  Two-tiered test category code list 
-  Updated Specification and Observation profiles to reflect the test sub category in slice
-  Complete reconstruction on 32P30 to include the parts.  Incldues elements, ectd, bundle and diagram
-  Corrections for 32S23 
-  Corrections for 32S10 
-  New profile for stability summary 
-  Substance Characterization change against multiple proflles 

### Changes and Updates for Version 0.1.6


-  Added IP Statements, Dependencies and Globals to index page.  Now required for IG
-  Corrected molecular formula and molecular weight in proviles
-  Impurities now zero or many in composisiton 
-  Added profile for 3.2.S.3.0 Characterisation Bundle
-  Added substanceType 

### Changes and Updates for Version 0.1.5

-  terminology experimental
-  OID reference correction
-  Corrections to package-list.json
-  traced qa.html errors. Non-correctable entered as JIRA tickets.
-  added new terminologies as codes. Not in NCIt
-  added slices to subtance name and type
-  added MID for product Part concept
-  added Biopolymer Sequence
-  added eCTD Document 32S30 Bundle
-  added Analytical Instrument Data File Narrative Text
-  updated examples for substance name changes
### Changes and Updates for Version 0.1.4


    -  corrected the file shown in Substance General Information
    -  corrected arrow to Characterization of Impurities sponsor in diagram
    -  corrected general instructions page
    -  correct pq-product-batch-ingredient-extension (overagePercent and overageJustification) cardinaltiy set to 0..1
-  moved labels and description of batch size to extension
-  Descripton does not exist in operatiaon.  Changed to additional-information entension in Batch Formula
-  Created batch formula bundle profile
-  Added Batch Formula example in bundle
-  corrected parent SubstanceDefinition in diagram for Batch Formula
-  Changed BatchFormulaIngredient to BatchIngredientReference
-  debugged build errors not in sushi run
-  commented out subject in Specification. MPD and SD not in R4B.  Need to uncomment when build supports R5
-  Added text to download page and text on stylesheets
-  Added text on Narrative Generation on General Instruction page 
-  Conversion to V5 in IG build
-  Organzation change of address to contact
-  PlanDefinition: Added ratio interger and string to goal.target. Removed codable concept.
-  added cmc-substance-relationship invariant to DrugSubtance.relationship.type.text and  DrugSubtance.reference
-  added diagram for Substance Characterization
-  edited drug product impurity diagram
-  added Characterization Bundle Page to menu
-  Removed batch container closure extension -  uncommmented Medication manufacturingBatch extension parts
-  ingredient strenght text R5 support change
-  subjectCanonical uncommented in PlanDefinition with R5 support
-  Detangled substance and product diagrams. Added menu item for Product impurites
-  Removed profile from activityDefiniton.  No longer a required element in the resource
-  Changed subjectCanonical to subjectReference in PlanDefinition. Change in version of PlanDefinition 
-  corrected id to uids in all examples
-  entered concentration text in examples
-  added depiction to ContainerClosureExtension to handle images as attachments
-  changed example of 23P10 to make image in container closure an attachment
-  updated svg files to reflect changes
-  updated 17 DrugProductIngredient examples with substance.strength.textConcentrationt R5 support change
-  fixed overage extension examples
-  changed address to in contact.address in all examples - R5
-  Added three bundle examples 
### Changes and Updates for Version 0.1.3


    -  Added back the Excipient profile. Refactored for specification excipients. 
    -  Removed instance = true from Medication and Substance based profiles 
    -  Added diagrams for nine eCTD bundles
    -  added table of contents to ribbon menu
-  created 23S10 bundle profile
-  Added example for 23S10 bundle profile and all required resource examples
-  Added 10 subtances for batch formula and mfg sites
-  added diagram for substance characterization
-  added element names and definitions for to DrugSubstanceImpurities for the substance impurity case
-  added invariat for substance relationship


### Changes and Updates for Version 0.1.2
The current development IG


    -  Deleted the Exceipient profile It was redundant with ComponentSubstance profile. 
    -  Added examples 
    -  Added diagrams 
    -  removed instance from DrugProductBatch

### Changes and Updates for Version 0.1.1
The current development IG


    -  Updated ribbon menu including the addition of this page. 
    -  Profile: MfgTestSiteOrganization.  Moved type to identifier.type. Type will be used in the future for mannufacturing function. 
    -  Profile: Drug Substance Explictly sliced name. Necessary for addition of business rule. Updated mapping of representation.  Removed UNII from identifier.
    -  Profile: Drug Substance Manufacturing Batch.  Added Retest Date Classification. Updated mapping of representation
    -  Profile: Substance Impurities remove reference to ComponentSubstance. Updated mapping of representation.  Removed UNII from identifier.
    -  Profile: Drug Product Description. Removed duplication of container closure extension. Fixed names. 
    -  Profile: PqAddress.  Added to country instruction and created valueset for country codes. Added invariant to use value set 
    -  Profile: PolymorphicForm: Updated mapping of representation. Removed UNII from identifier.
    -  Updated graphic reference and the file type
    -  Removed extensions for presentation and concentration text.  Still broken in Sushi.  Commmented out.  
    -  Added legend for graph on Home page  
    -  Addded text and graphic for Product Description and Composition of the Drug Product 
    -  Added exaample for Product Description and Composition of the Drug Product 
    -  Added business rules by enforing cardinality or nested cardinality 
    -  Added business rules as Invariants 	

-   Invariant:  cmc-name-preferred	Description: :Name.preferred: at most one = true:
-   Invariant: cmc-when-unii-required	Description: :A UNII is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'.
-   Invariant:  cmc-name-isbt	Description: :Name.type ISBT 128 requried for blood products.
-   Invariant: cmc-ingredient-functions	Description: :If Drug Product Component Function Category is Active Ingredient or Adjuvant THEN Drug Product Component Function will be NA.
-   If Drug Product Component Function Category is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list.
-   Invariant: cmc-substance-structure-graphic-required	Description: :A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'.
-   Invariant: cmc-representation-or-document	Description: :A structure has either a representation or document and supporting types.
-   Invariant: cmc-structure-required	Description: :A structure is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'.
-   Invariant: cmc-source-material	Description: :IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable.
-   Invariant: cmc-strength-type-cases	Description: :When Strength Type =Activity - IF UOM is UCUM Arbitrary Unit [arb'U], need to describe the Units in Strength Text data element
IF Strength Type = Mass THEN Strength Numeric and Strength UOM are Mandatory
IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements. Strength Textual and StrengthUOM will be Mandatory and Operator will be Optional.
-   Invariant: cmc-arbitrary-unit	Description: :If the UOM is UCUM Arbitrary Unit [arb'U], you need to describe the units in the Strength Text data element.
-   Invariant:  CMP-identifer	Description: :A document must have an identifier with a system and a value.
-   Invariant:  CMP-date	Description: :A document must have a date.
-   Invariant:  CMP-first_resource	Description: :A document must have a Composition as the first resource.
 -  Vocabulary title correctiions to match FRN -- many were Init cap corrections.  Removed: Chemical Structure Datafile Origin, Co-packaged Indicator, Product Related Impurity Category, and Drug substance Product Indicator  
-  added EVMPD Substance Classification terminology 
-  added Substance Classification element
-  Corrected cardinality of cross-reference in DrugProductDescription 
-  Added new profile for eCTD 3.2.P.1
-  Cross-reference set to default cardinality
-  move sponsor type from organizaton to organization.identifer
-  corrected additional information extension use
-  Deleted Exciepient profile.  The same as ComponentSubstance used in product composition.
-  Made code UNII in ComponentSubstance profile
-  corrected SubstanceDefinition.structure.representation.format cardinality 
-  corrected EctdComposition32P10 with addition MedicationDefinition profile for Container Closure  
<p> </p>
