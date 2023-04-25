### Bundle Overview

 Nomenclature (name, manufacturer) Information on the nomenclature of the drug substance should be provided. For example:

*GSRS preferred name
*Recommended International Nonproprietary Name (INN)
*Compendial name if relevant
*Chemical name(s)
*Company or laboratory code
*Other non-proprietary name(s), e.g., national name
*Chemical Abstracts Service (CAS) registry number
*IUPAC Name
*ISBT 128

For a drug product containing more than one drug substance, the information requested for part “S” should be provided in its entirety for each drug substance

Structure (name, manufacturer) NCE: The structural formula, including relative and absolute stereochemistry, the molecular formula, and the relative molecular mass should be provided.

Biotech: The schematic amino acid sequence indicating glycosylation sites or other post[1]translational modifications and relative molecular mass should be provided, as appropriate.
 

### eCTD Heading 3.2.S.1.0

<div>{%include SubstanceGeneral.svg%}</div>

### Example 3.2.S.1.0 Bundle
<?xml version="1.0" encoding="UTF-8"?>

<Bundle xmlns="http://hl7.org/fhir">
  <id value="692a0fa0-cd2c-4ad8-bd6b-7879326103f3"/>
  <meta>
    <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/cmc-ectd-document-32s10"/>
  </meta>
  <type value="document"/>
  <timestamp value="2022-07-06T22:30:21Z"/>
  <entry>
    <fullUrl value="urn:uuid:b55b8d97-63c5-433c-95cf-812af58aa5fb"/>
    <resource>
      <Composition>
        <id value="b55b8d97-63c5-433c-95cf-812af58aa5fb"/>
        <meta>
          <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/ectd-composition-32s10"/>
        </meta>
        <text>
          <status value="generated"/><div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative: Composition</b><a name="b55b8d97-63c5-433c-95cf-812af58aa5fb"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource Composition &quot;b55b8d97-63c5-433c-95cf-812af58aa5fb&quot; </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-ectd-composition-32s10.html">eCTD Substance General Information</a></p></div><p><b>status</b>: final</p><p><b>type</b>: Substance General Information <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="CodeSystem-pqcmc-comp-section-types.html">Code system PQCMC Comp Section Types</a>#32S10)</span></p><p><b>date</b>: 2022-11-18</p><p><b>author</b>: <a href="#Organization_78f4b797-fbb1-4078-974d-9471bdae7ada">See above (Organization/78f4b797-fbb1-4078-974d-9471bdae7ada)</a></p><p><b>title</b>: EctdComposition32S10 Title</p></div>
        </text>
        <status value="final"/>
        <type>
          <coding>
            <system value="http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-comp-section-types"/>
            <code value="32S10"/>
            <display value="Substance General Information"/>
          </coding>
        </type>
        <date value="2022-11-18"/>
        <author>
          <reference value="Organization/78f4b797-fbb1-4078-974d-9471bdae7ada"/>
        </author>
        <title value="EctdComposition32S10 Title"/>
        <section>
          <title value="PQCMC Comp Section 32S11 Substance nomenclature"/>
          <code>
            <coding>
              <system value="http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-comp-section-types"/>
              <code value="32S11"/>
              <display value="Substance Nomenclature"/>
            </coding>
          </code>
          <entry>
            <reference value="SubstanceDefinition/942fcdc9-8ab9-4f52-be6d-af549117d462"/>
          </entry>
        </section>
        <section>
          <title value="PQCMC Comp Section 32S12 Substance Representational Structure"/>
          <code>
            <coding>
              <system value="http://hl7.org/fhir/us/pq-cmc/CodeSystem/pqcmc-comp-section-types"/>
              <code value="32S12"/>
              <display value="Substance Structure"/>
            </coding>
          </code>
          <entry>
            <reference value="SubstanceDefinition/4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"/>
          </entry>
        </section>
      </Composition>
    </resource>
  </entry>
  <entry>
    <fullUrl value="urn:uuid:942fcdc9-8ab9-4f52-be6d-af549117d462"/>
    <resource>
      <SubstanceDefinition>
        <id value="942fcdc9-8ab9-4f52-be6d-af549117d462"/>
        <meta>
          <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-drug-substance-nomenclature"/>
        </meta>
        <text>
          <status value="generated"/><div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative: SubstanceDefinition</b><a name="942fcdc9-8ab9-4f52-be6d-af549117d462"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource SubstanceDefinition &quot;942fcdc9-8ab9-4f52-be6d-af549117d462&quot; </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-pqcmc-drug-substance-nomenclature.html">Substance Nomenclature  on routine</a></p></div><p><b>classification</b>: Chemical <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (www.ema.europa.eu#1)</span></p><p><b>manufacturer</b>: <a href="#Organization_78f4b797-fbb1-4078-974d-9471bdae7ada">See above (Organization/78f4b797-fbb1-4078-974d-9471bdae7ada)</a></p><blockquote><p><b>structure</b></p><p><b>technique</b>: Substance Nomenclature Technique text <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="http://hl7.org/fhir/R5/codesystem-substance-structure-technique.html">Substance Structure Technique</a>#HPLC &quot;HPLC&quot;)</span></p><h3>Representations</h3><table class="grid"><tr><td>-</td><td><b>Type</b></td></tr><tr><td>*</td><td>MOLFILE <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="http://terminology.hl7.org/5.0.0/CodeSystem-v3-nciThesaurus.html">NCI Thesaurus</a>#C133910)</span></td></tr></table></blockquote><h3>Codes</h3><table class="grid"><tr><td>-</td><td><b>Code</b></td></tr><tr><td>*</td><td>DE08037SAB <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (gsrs.ncats.nih.gov#DE08037SAB)</span></td></tr></table><blockquote><p><b>name</b></p><p><b>name</b>: MAGNESIUM SULFATE, UNSPECIFIED FORM</p></blockquote><blockquote><p><b>name</b></p><p><b>name</b>: ABC-25-MAGSUF</p></blockquote><h3>Relationships</h3><table class="grid"><tr><td>-</td><td><b>SubstanceDefinition[x]</b></td><td><b>Type</b></td></tr><tr><td>*</td><td><a href="SubstanceDefinition-7cdbd2af-235c-40e2-934e-9e60598a4156.html">SubstanceDefinition/7cdbd2af-235c-40e2-934e-9e60598a4156</a></td><td>Salt to parent <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="http://terminology.hl7.org/5.0.0/CodeSystem-v3-nciThesaurus.html">NCI Thesaurus</a>##Salt)</span></td></tr></table></div>
        </text>
        <classification>
          <coding>
            <system value="https://www.ema.europa.eu"/>
            <code value="1"/>
            <display value="Chemical"/>
          </coding>
        </classification>
        <manufacturer>
          <reference value="Organization/78f4b797-fbb1-4078-974d-9471bdae7ada"/>
        </manufacturer>
        <structure>
          <technique>
            <coding>
              <system value="http://hl7.org/fhir/substance-structure-technique"/>
              <code value="HPLC"/>
              <display value="HPLC"/>
            </coding>
            <text value="Substance Nomenclature Technique text"/>
          </technique>
          <representation>
            <type>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C133910"/>
                <display value="MOLFILE"/>
              </coding>
            </type>
          </representation>
        </structure>
        <code>
          <code>
            <coding>
              <system value="https://gsrs.ncats.nih.gov"/>
              <code value="DE08037SAB"/>
            </coding>
          </code>
        </code>
        <name>
          <name value="MAGNESIUM SULFATE, UNSPECIFIED FORM"/>
        </name>
        <name>
          <name value="ABC-25-MAGSUF"/>
        </name>
        <relationship>
          <substanceDefinitionReference>
            <reference value="SubstanceDefinition/7cdbd2af-235c-40e2-934e-9e60598a4156"/>
          </substanceDefinitionReference>
          <type>
            <coding>
              <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
              <code value="#Salt"/>
              <display value="Salt to parent"/>
            </coding>
          </type>
        </relationship>
      </SubstanceDefinition>
    </resource>
  </entry>
  <entry>
    <fullUrl value="urn:uuid:4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"/>
    <resource>
      <SubstanceDefinition>
        <id value="4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"/>
        <meta>
          <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-drug-substance-molecular-structure"/>
        </meta>
        <text>
          <status value="generated"/><div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative: SubstanceDefinition</b><a name="4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource SubstanceDefinition &quot;4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1&quot; </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-pqcmc-drug-substance-molecular-structure.html">Drug Substance Molecular Structure</a></p></div><p><b>classification</b>: Chemical <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (www.ema.europa.eu#1)</span></p><p><b>manufacturer</b>: <a href="#Organization_78f4b797-fbb1-4078-974d-9471bdae7ada">See above (Organization/78f4b797-fbb1-4078-974d-9471bdae7ada)</a></p><blockquote><p><b>structure</b></p><p><b>molecularFormula</b>: C21H12</p><p><b>technique</b>: 1S/C21H12/c1-2-11-8-13-5-6-15-9-14-4-3-12-7-10(1)16-17(11)19(13)21(15)20(14)18(12)16/h1-6H,7-9H2 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="http://hl7.org/fhir/R5/codesystem-substance-structure-technique.html">Substance Structure Technique</a>#X-Ray &quot;X-Ray&quot;)</span></p><h3>Representations</h3><table class="grid"><tr><td>-</td><td><b>Type</b></td></tr><tr><td>*</td><td>InChI File (small molecule) <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="http://terminology.hl7.org/5.0.0/CodeSystem-v3-nciThesaurus.html">NCI Thesaurus</a>#C54683)</span></td></tr></table></blockquote><h3>Codes</h3><table class="grid"><tr><td>-</td><td><b>Code</b></td></tr><tr><td>*</td><td>TX2KR8MQM9 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (gsrs.ncats.nih.gov#TX2KR8MQM9)</span></td></tr></table><h3>Names</h3><table class="grid"><tr><td>-</td><td><b>Name</b></td></tr><tr><td>*</td><td>SUMANENE</td></tr></table></div>
        </text>
        <classification>
          <coding>
            <system value="https://www.ema.europa.eu"/>
            <code value="1"/>
            <display value="Chemical"/>
          </coding>
        </classification>
        <manufacturer>
          <reference value="Organization/78f4b797-fbb1-4078-974d-9471bdae7ada"/>
        </manufacturer>
        <structure>
          <molecularFormula value="C21H12"/>
          <technique>
            <coding>
              <system value="http://hl7.org/fhir/substance-structure-technique"/>
              <code value="X-Ray"/>
              <display value="X-Ray"/>
            </coding>
            <text value="1S/C21H12/c1-2-11-8-13-5-6-15-9-14-4-3-12-7-10(1)16-17(11)19(13)21(15)20(14)18(12)16/h1-6H,7-9H2"/>
          </technique>
          <representation>
            <type>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C54683"/>
                <display value="InChI File (small molecule)"/>
              </coding>
            </type>
          </representation>
        </structure>
        <code>
          <code>
            <coding>
              <system value="https://gsrs.ncats.nih.gov"/>
              <code value="TX2KR8MQM9"/>
              <display value="TX2KR8MQM9"/>
            </coding>
          </code>
        </code>
        <name>
          <name value="SUMANENE"/>
        </name>
      </SubstanceDefinition>
    </resource>
  </entry>
  <entry>
    <fullUrl value="urn:uuid:78f4b797-fbb1-4078-974d-9471bdae7ada"/>
    <resource>
      <Organization>
        <id value="78f4b797-fbb1-4078-974d-9471bdae7ada"/>
        <meta>
          <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/cmc-sponsor-organization"/>
        </meta>
        <text>
          <status value="generated"/><div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative: Organization</b><a name="78f4b797-fbb1-4078-974d-9471bdae7ada"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource Organization &quot;78f4b797-fbb1-4078-974d-9471bdae7ada&quot; </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-cmc-sponsor-organization.html">Sponsor Organization</a></p></div><p><b>identifier</b>: id: urn:uuid:3517361d-cb89-4163-adeb-1c57f6cdb98d</p><p><b>name</b>: ABC Sponsor organization</p><h3>Contacts</h3><table class="grid"><tr><td>-</td><td><b>Address</b></td></tr><tr><td>*</td><td>3452 Smithfield Avenue Princeton 12345 USA </td></tr></table></div>
        </text>
        <identifier>
          <system value="urn:ietf:rfc:3986"/>
          <value value="urn:uuid:3517361d-cb89-4163-adeb-1c57f6cdb98d"/>
        </identifier>
        <name value="ABC Sponsor organization"/>
        <contact>
          <address>
            <line value="3452 Smithfield Avenue"/>
            <city value="Princeton"/>
            <postalCode value="12345"/>
            <country value="USA"/>
          </address>
        </contact>
      </Organization>
    </resource>
  </entry>
  <entry>
    <fullUrl value="urn:uuid:DocumentReference/fe3f13c1-f0ac-4b40-8024-f4386e290dfc"/>
    <resource>
      <DocumentReference>
        <id value="fe3f13c1-f0ac-4b40-8024-f4386e290dfc"/>
        <meta>
          <profile value="http://hl7.org/fhir/us/pq-cmc/StructureDefinition/cmc-document-reference"/>
        </meta>
        <text>
          <status value="generated"/><div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative: DocumentReference</b><a name="fe3f13c1-f0ac-4b40-8024-f4386e290dfc"> </a></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource DocumentReference &quot;fe3f13c1-f0ac-4b40-8024-f4386e290dfc&quot; </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-cmc-document-reference.html">Base64DocumentReference</a></p></div><p><b>status</b>: current</p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class="grid"><tr><td>-</td><td><b>ContentType</b></td><td><b>Data</b></td><td><b>Title</b></td></tr><tr><td>*</td><td>text/plain</td><td>PHNhbXBsZT48L3NhbXBsZT4=</td><td>Base64DocumentReference Title</td></tr></table></blockquote></div>
        </text>
        <status value="current"/>
        <content>
          <attachment>
            <contentType value="text/plain"/>
            <data value="PHNhbXBsZT48L3NhbXBsZT4="/>
            <title value="Base64DocumentReference Title"/>
          </attachment>
        </content>
      </DocumentReference>
    </resource>
  </entry>
</Bundle>