### Version = 2.0.0
Publication Date: 2025-04-TBD
url: http://hl7.org/fhir/us/pq-cmc-fda/STU2
Based on FHIR version : 5.0.0

#### Additions:
The 2025 January Ballot, Version 2.0.0-ballot of the HL7 FHIR Implementation Guide (IG) for Pharmaceutical Quality - Chemistry, Manufacturing, and Controls (PQ-CMC) Submissions to the FDA introduces several Bundle profiles to structure and standardize the submission data. Each Bundle profile serves a specific purpose in organizing related information:​

**1. Substance Characterization Bundle**: This Bundle captures detailed information about the drug substance, including its identity, physicochemical properties, and manufacturing process. It ensures that all relevant data about the substance are cohesively presented, facilitating comprehensive evaluation.​

**2. Product Batch Formula Bundle**: This Bundle details the composition of a specific batch of the drug product, including quantities of each component and any variations from the standard formula. It provides a clear representation of the batch's formulation, supporting consistency and quality assessments.​

**3. Product Characterization of Impurities Bundle**: This Bundle focuses on identifying and quantifying impurities present in the drug product. It includes information on impurity profiles, potential sources, and control strategies, ensuring that impurity data are systematically organized for regulatory review.​

These Bundles collectively enhance the IG's capability to standardize PQ-CMC submissions, promoting structured data exchange between industry stakeholders and the FDA.

#### Changes:

The ballot-related comments resulted in changes to this specification, which are listed below:

**Tracker Status**: **(Change Category)** **Summary** **[Jira Issue](#)** **[Link to Updated Content](#)**
1. **Applied:** (Correction) Update Narrative Transform for 32P32 [FHIR-49251](http://jira.hl7.org/browse/FHIR-49251) [See Changes Here](https://build.fhir.org/ig/HL7/FHIR-us-pq-cmc-fda/eCTD32P32.html)
2. **Applied:** (Correction) Update code and display in Batch Formula to align with ICH [FHIR-49294](http://jira.hl7.org/browse/FHIR-49294) [See Changes Here](StructureDefinition-ectd-composition-32p32.html)
3. **Applied:** (Correction) Update CTD code and display in Product Characterisation of Impurities to align with ICH [FHIR-49295](http://jira.hl7.org/browse/FHIR-49295) [See Changes Here](StructureDefinition-ectd-composition-32p55.html)
4. **Applied:** (Clarification) Arrow missing in the CTD 3.2.S.3 Profile Map [FHIR-49298](http://jira.hl7.org/browse/FHIR-49298) [See Changes Here](eCTD32S3.html#ctd-32s3-profile-map)
5. **Applied:** (Clarification) Add 2 more acknowledgements in the Credits section on the Home page [FHIR-49328](http://jira.hl7.org/browse/FHIR-49328) [See Changes Here](index.html)
6. **Applied:** (Clarification) Add a clarification sentence in Batch Formula profile to mention single layer tablets use also. [FHIR-49330](http://jira.hl7.org/browse/FHIR-49330) [See Changes Here](eCTD32P32.html)
7. **Applied:** (Clarification) In Batch Formula profile Domain Overview provide an explanation for terms of Components and Constituents by referring to the 32P1 [FHIR-49331](http://jira.hl7.org/browse/FHIR-49331) [See Changes Here](eCTD32P32.html)
8. **Applied:** (Correction) Change name of CTD Section 3.2.S.3.1 in Substance Characterisation [FHIR-49352](http://jira.hl7.org/browse/FHIR-49352) [See Changes Here](eCTD32S3.html)
9. **Applied:** (Clarification) Remove example images from General Instructions [FHIR-49420](http://jira.hl7.org/browse/FHIR-49420) [See Changes Here](instruction.html)
10. **Applied:** (Clarification) In Artifacts page under Example section, replace the OID names with human readable terms and standardize the names [FHIR-49421](http://jira.hl7.org/browse/FHIR-49421) [See Changes Here](artifacts.html)
11. **Applied:** (Correction) Change Notes/Log incomplete [FHIR-49574](http://jira.hl7.org/browse/FHIR-49574) [See Changes Here](change_notes.html)
12. **Applied:** (Clarification) Update text on Home page under section 1.3 IG Overview [FHIR-49594](http://jira.hl7.org/browse/FHIR-49594) [See Changes Here](index.html)
13. **Applied:** (Clarification) Update ALL Profile Map diagrams in the IG. Change the label from "Reference" to "Page". [FHIR-49596](http://jira.hl7.org/browse/FHIR-49596) [See Changes Here](eCTD32S3.html)
14. **Applied:** (Clarification) Change unit of "1*" to other unit in example [FHIR-49621](http://jira.hl7.org/browse/FHIR-49621) [See Changes Here](Bundle-BatchFormulaBundle.html)
15. **Applied:** (Correction) Overage extension modified with name changes, and invariant [FHIR-49622](http://jira.hl7.org/browse/FHIR-49622) [See Changes Here](StructureDefinition-pq-overage-extension.html)  
16. **Applied:** (Correction) Update Home page - Section 1.2.1 IG Scope [FHIR-49285](http://jira.hl7.org/browse/FHIR-49285) [See Changes Here](index.html)
17. **Applied:** (Correction) Labels in the Narrative Transform too FHIR oriented [FHIR-49574](http://jira.hl7.org/browse/FHIR-49574) [See Changes Here](downloads.html)

### Version = 1.0.0
Publication Date: 2024-12-11
url: http://hl7.org/fhir/us/pq-cmc-fda/STU1
Based on FHIR version : 5.0.0
Changes:
The first official published version of this IG published as FHIR STU1.