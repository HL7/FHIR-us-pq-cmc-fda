### Domain Overview

Specification means the quality standard (i.e., tests, analytical procedures, and acceptance criteria) provided in an approved application to confirm the quality of drug substances, drug products, intermediates, raw materials, reagents, components, in-process materials, container closure systems, and other materials used in the production of a drug substance or drug product. For the purpose of this definition, the term “acceptance criteria” means numerical limits, ranges, or other criteria for the tests described [21 CFR 314.3].

### Implementer Instructions

- A Quality Specification has one or more Tests.
- Each Test has one or more Stages.
-  Each Stage has one or more Acceptance Criteria.
- A Quality Specification is stated for either a Drug Product or an Ingredient (API) or an Excipient/Raw Material.

### Representation in FHIR

The domain concepts of _Quality Specification_ are represented in FHIR in this IG. Below is a high-level FHIR resource mapping to guide understanding of how the domain concepts are represented in the FHIR Resources. Detail study of the profile and each of the resources will be needed for developing a deeper understanding of this _Quality Specification_ FHIR Profile. Concepts that are key to this domain include the following:

- Specification, Test, Acceptance Criteria –[ PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) Resource
- Drug Product – Drug Product Profile on[ MedicinalProductDefinition](http://hl7.org/fhir/R5/medicinalproductdefinition.html) Resource
- API –[ SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) Resource
- Excipient/Raw Material –[ SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) Resource

### eCTD Heading 3.2.S.4.1, 3.2.P.4.1 and 3.2.P.5.1 Profile Map
<div>{%include Specification.svg%}</div>

### Usage Patterns

#### Acceptance Criteria as Goals
Both the acceptable qualitative or text value and the acceptable quantitative or numeric value for the result of the tests are expressed with goal as a target. The numeric values have mutiple structures to capture the detail of the acceptance criteria Original Text.
A single scpeification may not use all the possible acceptance criteria types so a realistic example would fail in the objective of elucidating all the perumtations.  The following XML snippets illustrate how to implement the various acceptance criteria types;
##### Representing Acceptance Criteria (Numeric EQ)
   
Acceptance-Criteria-Numeric-EQ may on may not have an = sign. Often it is stated as a single value.  An examples orignal text: 0.05 %
          
       <detailQuantity>
        <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
            <valueCodeableConcept>
             <coding>
              <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
              <code value="C48793"/>
              <display value="EQ"/>
             </coding>
            </valueCodeableConcept>
        </extension>
        <value value="0.05"/>
        <unit value="%"/>
        <code value="%"/>
       </detailQuantity>
          
##### Representing Acceptance Criteria (Numeric LT)
A numeric LT acceptance criteria, may use LT in the text or a &amp;lt; symbol. An example orignal text: &amp;lt; 0.05 % 
           
            <detailQuantity>
                <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                    <valueCodeableConcept>
                        <coding>
                            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                            <code value="C61585"/>
                            <display value="LT (less than)"/>
                        </coding>
                    </valueCodeableConcept>
                </extension>
                <value value="0.05"/>
                <unit value="%"/>
                <code value="%"/>
            </detailQuantity>
            
##### Representing Acceptance Criteria (Numeric MT)
A numeric MT acceptance criteria, may use MT in the text or a &amp;gt; symbol. An example orignal text: &amp;gt; 0.27 percent
            
            <detailQuantity>
                <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                    <valueCodeableConcept>
                        <coding>
                            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                            <code value="C61584"/>
                            <display value="MT (more than)"/>
                        </coding>
                    </valueCodeableConcept>
                </extension>
                <value value="0.27"/>
                <unit value="%"/>
                <code value="%"/>
            </detailQuantity>
            

##### Representing Acceptance Criteria (Numeric NLT)
The Not Less Than (NLT) is used when the maximum limit includes the limit value as acceptable.  In this example, each unit is NLT Q + 5% the value must be calculated to be structured.  According to the method, Q = 85.   The structured acceptance criterion must be transformed into a single value (85 + 4.25 = 89.25).  The maximum accptable value is 89.25%.
    
            <detailQuantity>
                <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                    <valueCodeableConcept>
                        <coding>
                            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                            <code value="C61583"/>
                            <display value="NLT (not less than)"/>
                        </coding>
                    </valueCodeableConcept>
                </extension>
                <value value="89.25"/>
                <unit value="%"/>
                <code value="%"/>
            </detailQuantity>          

##### Representing Acceptance Criteria (Numeric NMT)
    
The Not More Than (NMT) is used when the minimum limit includes the limit value as acceptable.  In this example, NMT 450 ppm at time of release, the phrase , "at time of release" is not inclueded in the target. The information is caputured in the Aceptacnce Criteria Usage as the coded value "Release".
            
            <detailQuantity>
                <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                    <valueCodeableConcept>
                        <coding>
                            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                            <code value="C61586"/>
                            <display value="NMT (not more than)"/>
                        </coding>
                    </valueCodeableConcept>
                </extension>
                <value value="450"/>
                <unit value="[ppm]"/>
                <code value="[ppm]"/>
            </detailQuantity>
            

##### Representing Acceptance Criteria (Numeric Range)
The Numeric Range is used when method specifies an upper and lower limit. The limits can be inclusive or exclusive limit values.  The structure this Acceptance Criteria, carefully read the original text.  Words such as "to" and "between" usually mean exclusive of the limit values.  Original text with the interpretation codes is not ambiguous.  Consult the method text when in doubt.   Example original texts: "85.0% to 115.0% Label Claim" - use MT and LT; “between 85.0% and 115.0% Label Claim" - use MT and LT; and “NLT 85.0% and NMT 115.0% Label Claim" - use NLT and NMT;     
    
    <detailRange>
        <low>
            <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                <valueCodeableConcept>
                    <coding>
                        <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                        <code value="C61583"/>
                        <display value="NLT (not less than)"/>
                    </coding>
                </valueCodeableConcept>
            </extension>
            <value value="85"/>
            <unit value="%"/>
            <code value="%"/>
        </low>
        <high>
            <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                <valueCodeableConcept>
                    <coding>
                        <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                        <code value="C61586"/>
                        <display value="NMT (not more than)"/>
                    </coding>
                </valueCodeableConcept>
            </extension>
            <value value="115"/>
            <unit value="%"/>
            <code value="%"/>
        </high>
    </detailRange>
    
##### Representing Acceptance Criteria (Text)
Acceptance Criteria (Text) is strictly for qualitative constraints. These will typically have a descriptive phrase. An example orignal text is, "Clear, colorless solution free of visible particulates".  Because is it not numeric, the relative intreprestation codes not not apply.  Always code the pq-interpretation-code-extension as "Not Applicable". 
             
            <detailString>
                <extension url="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pq-interpretation-code-extension">
                    <valueCodeableConcept>
                        <coding>
                            <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                            <code value="C48660"/>
                            <display value="Not Applicable"/>
                        </coding>
                    </valueCodeableConcept>
                </extension>
            </detailString>
            
##### Representing Replicate Number (Integer)
When the number of replicates is specified in the test, enter it as an integer.  The integer has no unit and is simply a count.   
        An example original text: n=10

    <detailInteger value="10">
    </detailInteger>
 
#### Special Cases for Method Representation

##### Representing Alternate Test Methods
Some specification
##### Representing Staged Tests
##### Representing Acceptance Criteria of Averaged Replicate Tests
##### Representing Methods with many test measures


### Example 3.2.S.4.1, 3.2.P.4.1 and 3.2.P.5.1 Bundle

This example demonstrates a quality specification for a Drug Product.  The narrative transformation has been applied. The XML can be found on the Artifacts page. TBD.  Additionally, there are single test examples to show the references to drug substances and excipients respectively.  TBD

{::options parse_block_html="false" /}

<div xmlns="http://www.w3.org/1999/xhtml" id="narrative"><html xmlns="http://www.w3.org/1999/xhtml"><head/><body><header><p>Sponsor: test site A, new york, ny</p><hr/></header><style>td {padding-left:1em;padding-bottom: 0.5em;}div.polymorph{padding-left:1em;}div#narrative{margin-left: 8px;}header p{color: black;padding-left: 1em;font-size: small;}table.specificationTable,table.specificationTable th,table.specificationTable td{border: 1px solid black;border-collapse: collapse;padding: 0.5em;}</style><h2>3.2.P.5.1 Quality Specification for Buffered Asprin</h2><table style="margin-bottom: 1em"><tbody><tr><th colspan="2">Product Details</th></tr><tr><td>Non-Proprietary Name:</td><td>OXAZEPAM 30mg, PROPRANOLOL HYDROCHLORIDE 60mg</td></tr><tr><td>Dose Form:</td><td>CAPSULE</td></tr><tr><td>Route of Administration:</td><td>ORAL</td></tr></tbody></table><table style="margin-bottom: 1em"><tbody><tr><th colspan="2">Specification Details</th></tr><tr><td>Version:</td><td>1.0</td></tr><tr><td>Version Date:</td><td>2022-12-08</td></tr><tr><td>Approval Status:</td><td>Not Approved</td></tr><tr><td>Type:</td><td>Drug Product</td></tr></tbody></table><table class="specificationTable"><tbody><tr><th>Category</th><th>Test Name</th><th>Acceptance Criteria (Usage *)</th><th>Analytical Procedure</th><th>Procedure Name</th><th>Type</th><th>Comments</th></tr><tr><td>Identification</td><td>Spectrophotometry Identification</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Average of 10 between 2-3 pH</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Spectrophotometry</td><td>USP &lt;197&gt;</td><td>Compendial</td><td/></tr><tr><td>Identification</td><td>Identity - Ferric Chloride</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Maxima only at the same wavelengths compared to reference standard</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>HPLC</td><td>EX-TEST-01</td><td>Proprietary</td><td/></tr><tr><td>Loss on Drying</td><td>Loss on Drying</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">&lt;= 0.5 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Visual</td><td>USP &lt;731&gt;</td><td>Compendial</td><td/></tr><tr><td>Organoleptic<br/>Color of solution</td><td>Readily Carbonizable Sub</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Color of solution is clear</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Visual</td><td>USP &lt;271&gt;</td><td>Compendial</td><td/></tr><tr><td>Residue on Ignition</td><td>Residue on ignition (Ash)</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">&lt;= 0.05 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Visual</td><td>USP &lt;281&gt;</td><td>Compendial</td><td/></tr><tr><td>Foreign and Particulate Matter</td><td>Substances insoluble in sodium carbonate TS</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">No Particulate Matter detected</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Visual</td><td>EX-TEST-02</td><td>Proprietary</td><td/></tr><tr><td>Impurity<br/>Specified identified impurity</td><td>Impurities - Chloride (Cl)</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">&lt;= 0.014 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>FTIR</td><td>USP &lt;221&gt;</td><td>Compendial</td><td/></tr><tr><td>Impurity<br/>Specified identified impurity</td><td>Impurities - Sulfate (SO4)</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">&lt;= 0.04 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>FTIR</td><td>USP &lt;221&gt;</td><td>Compendial</td><td/></tr><tr><td>Impurity<br/>elemental impurity</td><td>Elemental Impurities - Limits</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">&lt;= 0.001 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>UV</td><td>USP &lt;231&gt;</td><td>Compendial</td><td/></tr><tr><td>Impurity<br/>Impurities/Degradation Products/Related Substances</td><td>Limit of Free Salicylic Acid</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Color intenssity of feriric ammonium sulfate TS is not less that than salicylic acid (0.1%) solution</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Titration</td><td>EX-TEST-03</td><td>Proprietary</td><td/></tr><tr><td>Impurity<br/>residual solvent</td><td>Organic Volatile Impurities</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Ethanol &lt; 0.2%</div><div style="flex-shrink:0">(R S)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Ethyl Ether &lt; 0.1%</div><div style="flex-shrink:0">(R)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">1—propanol &lt; 0.15%</div><div style="flex-shrink:0">(R)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Total &lt; 0.5%</div><div style="flex-shrink:0">(R)</div></div></li></ul></td><td>Visual</td><td>USP &lt;467&gt;</td><td>Compendial</td><td/></tr><tr><td>Assay<br/>active ingredient</td><td>Assay Dry Basis</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li><div style="display:flex"><div style="flex: 9; margin-right:1em">99.5 - 100.5 %</div><div style="flex-shrink:0">(R S)</div></div></li></ul></td><td>Visual</td><td>EX-TEST-04</td><td>Proprietary</td><td/></tr><tr><td>Dissolution</td><td>Dissolution - 30 minute</td><td><ul style="list-style-type: none;margin:0;padding:0;"><li>Stage 1<ul><li><div style="display:flex"><div style="flex: 9; margin-right:1em">n=6</div><div style="flex-shrink:0">(R)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Each unit is NLT Q + 5%</div><div style="flex-shrink:0">(R)</div></div></li></ul></li><li>Stage 2<ul><li><div style="display:flex"><div style="flex: 9; margin-right:1em">n=6</div><div style="flex-shrink:0">(R)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Average of 12 units (S1 + S2) is equal to or greater than Q and no unit is less than Q – 15%</div><div style="flex-shrink:0">(R)</div></div></li></ul></li><li>Stage 3<ul><li><div style="display:flex"><div style="flex: 9; margin-right:1em">Average of 24 units (S1 + S2 + S3) is equal to or greater than Q, not more than 2 units are less than Q – 15%, no unit is less than Q – 25%</div><div style="flex-shrink:0">(R)</div></div></li><li><div style="display:flex"><div style="flex: 9; margin-right:1em">n=12</div><div style="flex-shrink:0">(R)</div></div></li></ul></li></ul></td><td>Visual</td><td>EX-TEST-05</td><td>Proprietary</td><td/></tr></tbody></table><p class="footer">* R = Release, S = Stability</p></body></html></div>

{::options parse_block_html="true" /}