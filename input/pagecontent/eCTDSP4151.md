### Domain Overview

Specification means the quality standard (i.e., tests, analytical procedures, and acceptance criteria) provided in an approved application to confirm the quality of drug substances, drug products, intermediates, raw materials, reagents, components, in-process materials, container closure systems, and other materials used in the production of a drug substance or drug product. For the purpose of this definition, the term “acceptance criteria” means numerical limits, ranges, or other criteria for the tests described [21 CFR 314.3].

The Quality Specification bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.4.1, 3.2.P.4, and 3.2.P.5.1 folder content to the FDA. These sections provide evidence demonstrating that the material meets the standards appropriate for their intended use, where the material is an API (3.2.S.4.1), Excipient (3.2.P.4), or Drug Product (3.2.P.5.1).

### Implementer Instructions

* A Quality Specification has one or more Tests.
* Tests should be entered in the file in the order in which they should be displayed.
* Each Test has one or more Stages.
* Each Stage has one or more Acceptance Criteria.
* A Quality Specification is declared for either a Drug Product or an Ingredient (API) or an Excipient/Raw Material. The same subject refence is used for both excipients and raw material.
    * The Quality Specifications for all the raw materials for a Drug Substance are packaged together in a single bundle. Refer to [Substance Control of Materials](eCTD32S23.html) for Quality Specification for a Raw Material. 

### Representation in FHIR

The domain concepts of Quality Specification are represented in FHIR in this IG. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR Resources. Detail study of the profiles and each of the resources will be needed for developing a deeper understanding of this Quality Specification FHIR Bundle Profile. Concepts that are key to this domain include the following:

* Specification, Test, Acceptance Criteria
    * [Quality Specification](StructureDefinition-pqcmc-quality-specification.html) (QualitySpecification) profile on [PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) resource
* Drug Product
    * [Routine Drug Product](StructureDefinition-pqcmc-drug-product-handle.html) (DrugProductHandle) profile on [MedicinalProductDefinition](http://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* API 
    * [Substance Definition Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) resource
* Excipient/Raw Material 
    * [Excipient Drug Substance](StructureDefinition-pqcmc-excipient.html) (ExcipientRaw) profile [SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) resource 
* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the<span style="text-decoration:underline;"> [Organization](http://hl7.org/fhir/R5/organization.html) Resource</span>

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### eCTD Heading 3.2.S.4.1, 3.2.P.4 and 3.2.P.5.1 Profile Map
<div>{%include Specification.svg%}</div>

### Usage Patterns

#### Acceptance Criteria as Goals

Both the acceptable qualitative or text value and the acceptable quantitative or numeric value for the result of the tests are expressed with goal as a target. The numeric values have multiple structures to capture the detail of the acceptance criteria Original Text. A single specification may not use all the possible acceptance criteria types so a realistic example would fail in the objective of elucidating all the permutations. The following XML snippets illustrate how to implement the various acceptance criteria types.

##### Representing Acceptance Criteria (Numeric EQ)
   
A numeric EQ acceptance criteria may or may not use an = sign in the text. Often it is stated as a single value. An examples original text: ```0.05 %```. The absence of a comparator in a Quantity datatype indicates equality.

```xml
<target>
  <detailQuantity>
    <value value="0.05"/>
    <unit value="percent"/>
    <system value="http://unitsofmeasure.org"/>
    <code value="%"/>
  </detailQuantity>
</target>
```

##### Representing Acceptance Criteria (Numeric LT)
A numeric LT acceptance criteria may use LT in the text or the ```&lt;``` the escaped form of the character '<'. An example original text: ```&lt; 0.05 %```. 

```xml
<target>
  <detailQuantity>
    <value value="0.05"/>
    <comparator value="&lt;"/>
    <unit value="percent"/>
    <system value="http://unitsofmeasure.org"/>
    <code value="%"/>
  </detailQuantity>
</target>
```
            
##### Representing Acceptance Criteria (Numeric MT)
A numeric MT acceptance criteria may use MT in the text or the ```&gt;``` the escaped form of the character '>'. An example original text: ```&gt; 0.27 percent```.

```xml
<target>
  <detailQuantity>
    <value value="0.27"/>
    <comparator value="&gt;"/>
    <unit value="percent"/>
    <system value="http://unitsofmeasure.org"/>
    <code value="%"/>
  </detailQuantity>
</target>
```

##### Representing Acceptance Criteria (Numeric NLT)
The Not Less Than (NLT) is used when the maximum limit includes the limit value as acceptable. In this example, each unit is NLT Q + 5% the value must be calculated to be structured. According to the method, Q = 85. The structured acceptance criterion must be transformed into a single value (85 + 4.25 = 89.25). The maximum acceptable value is 89.25%. NLT is represented by the ```>=``` (greater than or equal to) comparator, which is encoded as ```&gt;=```.

```xml
<target>
  <detailQuantity>
    <value value="89.25"/>
    <comparator value="&gt;="/>
    <unit value="percent"/>
    <system value="http://unitsofmeasure.org"/>
    <code value="%"/>
  </detailQuantity>
</target>
```  

##### Representing Acceptance Criteria (Numeric NMT)
    
The Not More Than (NMT) is used when the minimum limit includes the limit value as acceptable. In this example, NMT 450 ppm at time of release, the phrase , “at time of release” is not included in the target. That information is captured in the Acceptance Criteria Usage as the coded value “Release”. NMT is represented by the ```<=``` (less than or equal to) comparator, which is encoded as ```&lt;=```.

```xml
<target>
  <detailQuantity>
    <value value="450"/>
    <comparator value="&lt;="/>
    <unit value="part per million"/>
    <system value="http://unitsofmeasure.org"/> 
    <code value="[ppm]"/>
  </detailQuantity>
</target>
```

##### Representing Acceptance Criteria (Numeric Range)

The Numeric Range is used when the method specifies an upper and lower limit. Numeric Range is represented by a modifier extension that contains a 'low' and 'high' Quantity. The limits can be inclusive or exclusive limit values. To structure this Acceptance Criteria, carefully read the original text. Words such as “to” and “between” usually mean exclusive of the limit values. Original text with the interpretation codes is not ambiguous. Consult the method text when in doubt. Examples of original text: “85.0% to 115.0% Label Claim” - use ```&gt;``` and ```&lt;```; “between 85.0% and 115.0% Label Claim” - use ```&gt;``` and ```&lt;``` and “NLT 85.0% and NMT 115.0% Label Claim” - use ```&gt;=``` and ```&lt;=```.  

```xml
<target>
  <modifierExtension url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-target-range">
    <extension url="low">
      <valueQuantity>
        <value value="85.0"/>
        <comparator value="&gt;="/>
        <unit value="percent"/>
        <system value="http://unitsofmeasure.org"/>
        <code value="%"/>
      </valueQuantity>
    </extension>
    <extension url="high">
      <valueQuantity>
        <value value="115.0"/>
        <comparator value="&lt;="/>
        <unit value="percent"/>
        <system value="http://unitsofmeasure.org"/>
        <code value="%"/>
      </valueQuantity>
    </extension>
  </modifierExtension>
</target>
```
    
##### Representing Acceptance Criteria (Text)
Acceptance Criteria (Text) is strictly for qualitative constraints. These will typically have a descriptive phrase. An example original text is, “Clear, colorless solution free of visible particulates”. Because it is not numeric, the relative interpretation codes do not apply.

```xml       
<target>
  <detailString value="Clear, colorless solution free of visible particulates"/>
</target>
```
##### Representing Replicate Number (Integer)
When the number of replicates is specified in the test, enter it as an integer.  The integer has no unit and is simply a count.   

An example original text: n=10
```xml
<target>
  <detailInteger value="10"/>
</target>
```
#### Report only Acceptance Criteria
If the analytic procedure only requires that the results be reported, use a text result

```xml
<goal id="b843d27a-3f07-4ea2-a670-05d16db3320a">
  <description>
    <text value="Record result"/>
  </description>
  <addresses>
    <coding>
      <system value="http://unitsofmeasure.org"/>
      <code value="C134030"/>
      <display value="Stability"/>
    </coding>
  </addresses>
  <target>
    <detailString value="As Reported"/>
  </target>
</goal>
```

#### Complex Acceptance Criteria
Acceptace Criteria are written in spoken languages and can be a combination of independent clauses with subordinate clauses.  When this occurs, the modeling in the goal backbone element requries multiple targets.  Break the Acceptance Criteria phrase into its parts.  Each part becomes a target. In the example below, "Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q - 15%, no unit is less than Q - 25%" becomes three targets: Average of 24 units, units less than Q - 15%, and units less than Q - 25%.  Each has a detailQuantity to express the acceptable amount. 

```xml
<goal id="1f5530b9-5d21-46ef-80f3-1ae6121c88f9">
  <description>
    <text value="Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q - 15%, no unit is less than Q - 25%"/>
  </description>
  <addresses>
    <coding>
      <system value="http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/cmc-ncit-dummy"/>
      <code value="C134029"/>
      <display value="Release"/>
    </coding>
  </addresses>
  <target>
    <measure>
      <text value="Average of 24 units">
    </measure>
    <detailQuantity>
      <value value="80"/>
      <comparator value="&gt;="/>
      <unit value="percent"/>
      <system value="http://unitsofmeasure.org"/>
      <code value="%"/>
    </detailQuantity>
  </target>
  <target>
    <measure>
      <text value="NMT 2 units less than Q - 15%"/>
    </measure>
    <detailQuantity>
      <value value="2"/>
      <comparator value="&lt;="/>
      <unit value="Amb a 1 units"/>
      <system value="http://unitsofmeasure.org"/>    
      <code value="[Amb'a'1'U]"/>
    </detailQuantity>
  </target>
  <target>
    <measure>
      <text value="no units less than Q - 25%"/>
    </measure>
    <detailQuantity>
      <value value="0"/>
      <unit value="Amb a 1 units"/>
      <system value="http://unitsofmeasure.org"/>
      <code value="[Amb'a'1'U]"/>
    </detailQuantity>
  </target>
</goal>
```

 
#### Special Cases for Method Representation

##### Representing Alternate Test Methods
Some specifications accept equivalent tests as in this example the Identity test can be performed with either Spectrophotometry or HPLC. The alternate relationship is expressed as a relatedAction.  Alternate tests can be in groups of more than two. The alternate test must have a linkId. Other tests within the same Alternate test group will point to each other's linkIDs through the relatedAction element relatedAction.targetId. This will be helpful when modifying a specification to add an alternate test without having to renumber subsequent tests.

Note: "..." is used to compress the XML so that the relevant sections can be seen more clearly.


    <action>

       <linkId value="2047a6b6-e3fc-4071-8989-526297579091"/>
       <prefix value="Single Stage"/>
       <title value="Spectrophotometry Identification"/>
       <code>
      ...
         <text value="Spectrophotometry"/>
       </code>
       <reason>
      ...
       </reason>
       <documentation>
      ...
       </documentation>
       <goalId value="32649771-1290-4386-9cf7-7a72274f22b4"/>
       <relatedAction>
         <targetId value="84d64dd8-b799-418a-a713-a854c4d3c2b9"/>
         <relationship value="concurrent"/>
       </relatedAction>
     </action>
     <action>
       <linkId value="84d64dd8-b799-418a-a713-a854c4d3c2b9"/>
       <prefix value="Single Stage"/>
       <title value="Identity - Ferric Chloride"/>
       <code>
      ...
         <text value="HPLC"/>
       </code>
       <reason>
      ...
       </reason>
       <documentation>
      ...
       </documentation>
       <goalId value="59a4ca76-858e-4d58-8e5f-88e75f51ec33"/>
       <relatedAction>
         <targetId value="2047a6b6-e3fc-4071-8989-526297579091"/>
         <relationship value="concurrent"/>
       </relatedAction>
     </action>
 
##### Representing Staged Tests
Staged tests are a sequence of steps.  Use the Action.Action element and identify the stages with the prefix element.  Feedback on the necessity of adding the relatedAction backbone element at Action.Action is requested. If the conditional nature of the stages must be expressed, then it will be added.

Note: "..." is used to compress the XML so that the relevant sections can be seen more clearly.


           <action>
             <linkId value="1fc4361a-52d9-46f1-acff-7969b10e8dfd"/>
             <title value="Dissolution - 30 minute"/>
      ...
             <reason>
               <extension url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-hierarchical-level-extension">
                 <valueInteger value="1"/>
               </extension>
               <coding>
                 <system value="http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/pqcmc-test-category-codes"/>
                 <code value="TC9"/>
                 <display value="Dissolution"/>
               </coding>
             </reason>
      ...
             <action>
               <linkId value="1fc4361a-52d9-46f1-acff-7969b10e8dfd"/>
               <prefix value="Stage 1"/>
               <goalId value="489bb798-477b-4d68-8189-ed58b388f25e"/>
               <goalId value="0f191b79-ea6c-4480-9bb2-2c5501fa461e"/>
             </action>
             <action>
               <linkId value="1fc4361a-52d9-46f1-acff-7969b10e8dfd"/>
               <prefix value="Stage 2"/>
               <goalId value="cbe267a3-bcbe-4ffc-bf2e-843760f50249"/>
               <goalId value="3b385840-ad9c-478f-8d94-e6610f2458f9"/>
             </action>
             <action>

##### Representing Acceptance Criteria of Averaged Replicate Tests
There are two scenarios for averages. The acceptance criteria of the average is the same as the individual test, in which case the same test can be encoded in the top level Action backbone element. Its title is “Single Stage” and there are one or many goalIDs. Or the acceptance criteria of the average is different than the individual test, in which case either use the Action for the average and Action.Action for the individual acceptance criteria or move down a level to Action.Action and Action.Action.Action. The profile was designed this way to provide flexibility to implementers. The acceptance criteria should indicate the number of replicates in the referenced analytic procedure.

##### Representing Methods with Many Test Measures
The Action backbone is profiled to three levels.  The first level represents the method (analytic procedure) concepts and a simple tests. The second level represents test groups and stages. In the simplest case is _Single Stage_ and two tests. A _Single Stage_ , one test is accomplished at the highest Action level. The third level represents sub-tests. The middle Action level can have Acceptance Criteria.  These are typically calculations on the values obtained from the sub-tests.  Methods using Cascade Impactors typically have Acceptance Criteria for the plates and group the plates and assign Acceptance Criteria to the groups.  The example below shows three Groups and their associated plates.  Both the Groups and their sub-test each have their own goalIDs that link to their respective Acceptance Criteria.  The word "Stage" for the sub-tests has no association with _Stage_ as mapped to the PlanDefinition resource.  In this case it referring to the stage of the cascade impactor modelling inhalation.

Note: "..." is used to compress the XML so that the relevant sections can be seen more clearly.

         <action>
             <prefix value="Single Stage"/>
             <title value="Cascade Impactor"/>
             <code>
               <coding>		...
             </code>
             <reason>
               <extension url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-hierarchical-level-extension">
                 <valueInteger value="1"/>
               </extension>
               <coding>
                 <system value="http://hl7.org/fhir/us/pq-cmc-fda/CodeSystem/pqcmc-test-category-codes"/>
                 <code value="TC15"/>
                 <display value="Particle Size Distribution"/>
               </coding>
             </reason>
             <documentation>
		...
             </documentation>
             <action>
               <title value="Group 1"/>
               <goalId value="d7afe834-a9a7-45ae-9213-52c8fd8505bd"/>
               <action>
                 <title value="Stem"/>
                 <goalId value="fc10d71c-86e9-4c52-a3df-9a5cde26f031"/>
               </action>
               <action>
                 <title value="Actuator"/>
                 <goalId value="ce759246-bbd4-4713-8836-6dbb10e5fefe"/>
               </action>
               <action>
                 <title value="Throat"/>
                 <goalId value="abf5db8b-8d7e-471e-8047-98afe93f07d4"/>
               </action>
             </action>
             <action>
               <title value="Group 2"/>
               <goalId value="a515beb5-dc2b-4c36-bf0a-f6b70582c354"/>
               <action>
                 <title value="Stage 0"/>
                 <goalId value="fbd96100-3881-493c-adaf-808fe08331a1"/>
               </action>
		...
               <action>
                 <title value="Stage 3"/>
                 <goalId value="569399c3-e5af-4449-a636-6ebe34174056"/>
               </action>
             </action>
             <action>
               <title value="Group 3"/>
               <goalId value="552eef1e-2918-4fa9-8603-3df2284454b9"/>
               <action>
                 <title value="Stage 4"/>
                 <goalId value="4adb336d-21cd-4792-98dd-e265532c533f"/>
               </action>
		...
               <action>
                 <title value="Filter"/>
                 <goalId value="6559f4e2-5134-4637-a587-421b4095a961"/>
               </action>
             </action>
           </action>


##### Representing Unidentified RRT Tests

The Action.Action.Action.prefix element is reserved for RRT specifications.  Enter "RRT" in the value for Action.Action.Action.prefix. The Action.Action.Action.title stores the actual RRT value. The goalID references the acceptance criteria.

Note: "..." is used to compress the XML so that the relevant sections can be seen more clearly.

    <action>
	<prefix value="Single Stage"/>
	<title value="Impurities"/>
    ...
        <action>
            <title value="Unidentified Impurities"/>
            <action>
                <prefix value="RRT"/>
                <title value="2.2"/>
                <goalId value="f832168b-d0a4-4637-91cd-183629494d59"/>
            </action>
            <action>
                <prefix value="RRT"/>
                <title value="2.4"/>
                <goalId value="cc06912d-0aca-4083-a7ce-bb57b4dfc4a6"/>
            </action>
            <action>
                <prefix value="RRT"/>
                <title value="3.41"/>
                <goalId value="5ff35fae-2843-4180-b509-b3c6254871f4"/>
            </action>
        </action>
    </action>

### Example 3.2.S.4.1, 3.2.P.4 and 3.2.P.5.1 Bundles

This example demonstrates a quality specification for a Drug Product. The first image displays the XML for 3.2.P.5.1 as it appears in a browser with the narrative inserted in the composition text element. The XML can be found on the Artifacts page. The XML file with the publisher narrative is on the artifacts page and in the Bundle profile. [SpecificationProductBundle](Bundle-SpecificationProductBundle.html)  

Additionally, there is an example specification to show the reference to a Drug Substance [SpecificationSubstanceBundle](Bundle-SpecificationSubstanceBundle.html). Its [narrative layout](#drug-substance-specification-example) is shown below the Drug Product specification.

The final example is for a excipient with an animal source for 3.2.P.4.  Drug Excipient [SpecificationExcipientBundle](Bundle-SpecificationExcipientBundle.html). Its [narrative layout](#drug-excipient-specification-example)
For more examples of specifications referencing excipients see: 
- [Control of Materials Example](Bundle-ControlMaterialsBundle.html)

#### Drug Product Specification Example

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="ProdSpec.png" />

</figure>

{::options parse_block_html="true" /}

#### Drug Substance Specification Example
  This is an example showing a drug substance as the subject of the specification.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="APIspec.png" />

</figure>

{::options parse_block_html="true" /}

#### Drug Excipient Specification Example
  This is an example showing a drug excipient as the subject of the specification.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="excipient.png" />

</figure>

{::options parse_block_html="true" /}