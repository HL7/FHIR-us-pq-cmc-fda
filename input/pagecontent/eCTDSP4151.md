### Bundle Overview

The specification for the drug substance, the excipients and the drug product should be provided. 
Reference ICH guidances Q3B, Q6A, and Q6B. 
#### eCTD Heading 3.2.S.4.1, 3.2.P.4.1 and 3.2.P.5.1 Profile Map
<div>{%include Specification.svg%}</div>
### Acceptance Criteria as Goals
Both the acceptable qualitative or text value and the acceptable quantitative or numeric value for the result of the tests are expressed with goal as a target. The numeric values have mutiple structures to capture the detail of the acceptance criteria Original Text.
A single scpeification may not use all the possible acceptance criteria types so a realistic example would fail in the objective of elucidating all the perumtations.  The following XML snippets illustrate how to implement the various acceptance criteria types;
#### Representing Acceptance Criteria (Numeric EQ)
   
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
          
#### Representing Acceptance Criteria (Numeric LT)
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
            
#### Representing Acceptance Criteria (Numeric MT)
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
            

#### Representing Acceptance Criteria (Numeric NLT)
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

#### Representing Acceptance Criteria (Numeric NMT)
    
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
            

#### Representing Acceptance Criteria (Numeric Range)
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
    
#### Representing Acceptance Criteria (Text)
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
            
#### Representing Replicate Number (Integer)
When the number of replicates is specified in the test, enter it as an integer.  The integer has no unit and is simply a count.   
        An example original text: n=10

    <detailInteger value="10">
    </detailInteger>
 
### Special Cases for Method Representation

#### Representing Alternate Test Methods
Some specification
#### Representing Staged Tests
#### Representing Acceptance Criteria of Averaged Replicate Tests
#### Representing Methods with many test measures


### Example3.2.S.4.1, 3.2.P.4.1 and 3.2.P.5.1 Bundle