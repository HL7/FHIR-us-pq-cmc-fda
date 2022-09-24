PQ/CMC FHIR Implementation Guide is underdevelopement.  Minor releases will be posted for feedback. These release notes will be retained until the next major release which will be numbered 0.5.0 and and correspond to the project's 1.5 release.  See the Directory of published versions link does not work until there is a balloted publication on HL7.

### Changes and Updates for Version 0.1.4
The current development IG

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
