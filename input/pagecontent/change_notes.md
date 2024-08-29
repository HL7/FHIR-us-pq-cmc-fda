PQ/CMC FHIR Implementation Guide is under development.  Minor releases will be posted for feedback. These release notes will be retained until the next major release.  See the Directory of published versions link does not work until there is a balloted publication on HL7.

### Changes and Updates for Version 1.1.5
The current development IG - Sept connectathon plus Stage 2
- Included Excipient Drug Substance in the Profile Map (at the same level as Substance Definition Handle).
- Changed section 1.3 to section 1.2.2 and adjusted the section numbering that followed — for example, "IG Overview" is now section 1.3.
- Removed the two asterisks so that the section title is "Pharmaceutical Quality Projects in BR&R WG".
- Fixed the typo x10.
- Changed C18634 display to "Animal-derived indirectly".
- Changed "Bundle Reference" block in the diagram to show and link to "StructureDefinition-cmc-ectd-document-32p32.html".
- This value set name was a duplicate although it pointed to a different value set. Both seemed to have overlapping content although one was identified by SME requirements with terms registered at NCI and the other was technical in nature identifying the 3 different CTD sections used for Quality Specification information. PROPOSED: change this VS name to "eCTD specification sections terminology".
- Fixed composition.section.type to be 1..1 in all the stage 2 compositions.
- Rename ValueSet: PQCMC Product Characteristic Codes.
- Included Excipient Drug Substance in the Profile Map (at the same level as Substance Definition Handle).
- Added new Batch Formula example with parts
- Updated example Batch formula with parts example
- Updated transform

### Changes and Updates for Version 1.1.5
- Updates to Home page and copywrite for NCIt

### Changes and Updates for Version 1.1.4
- Text type ballot changes
- Bundle Map diagram updates
- Stage 2 changes from Excel file
- Transforms for Stage 2
- Updates to Stage 1 transforms
- Images updates and size change for Jira tickets
- Updates to Quality Specification page for xml snippets

### Changes and Updates for Version 1.1.3
- Bundle slicing
- 32P55
- organization
- Changes for ballot issues that would affect parsing

### Changes and Updates for Version 1.1.2

- Organization.fsh: ballot comments
- amount on Batch formula component
- Substance impurity characterization changes
- Invariants: Charaterization to Characterisation
- Added Sterile product indicator
- Attachment as a Profile - support of Ballot
- aliases.fsh: most changes from FMG ballot approval
- eCTDComposition.fsh 32S30 to 32s3
- qualitySpecification.fsh specification detailQuantity using comparator

### Changes and Updates for Version 1.1.1

- Fixed typo > "Note: Codes that exist in NCIt at time of ballot begin with ‘C’."
- Fixed Missing closing parenthesis > ...(likely either NCIt or HL7’s UTG code systems)
- Changed the Display Values to use the PQ/CMC PTs - see spreadsheet "PQCMC-Ballot-Comment-Details-ExcipientFunctionDisplayValues.xlsx"
- Corrected the display value to use the PQ/CMC PT - "Animal-derived indirectly"
- Change the display value to use the PQ/CMC PT - "Storage at -20 degrees C (+/-) 5 degrees C."
- droped "space" typo in word "Refer", "Refer to Validating"
- Changed text to "Scripts to insert narratives in XML bundle files as described in section 2: Narrative Generation."
- Changed text to "The fields needed to represent Quality Specifications for APIs,"
- Changed tex to, "... whose specifications are for Aspirin."
- Removed text referencing the concept map. It does not exist.
- Changed subject of the Specification in the examples for 32S41
- SP4151 example use Composition code uses a specification code 
- CommonOrganization..fsh at PqAddress 3 letter Country code enforced 
- DrugProductResources..fsh at Batch Formula MID changes
- DrugSubstanceResources..fsh at characterisation must have something
- Invariants..fsh at SP4151 Composition code uses a specification code
- TempCodeSystems..fsh at Updated with change since with ballot
- Terminologies..fsh at SP4151 Composition code uses a specification code
- UtilityProfiles..fsh at Ingore.txt and resolution of warrings
- aliases..fsh at most changes from FMG ballot approval
- eCTDComposition..fsh at SP4151 Composition code uses a specification code
- qualitySpecification..fsh at move approval status from useContext to type
- updated 32S1 plantUML diagram 
- changed ribbon for Stage 2 
- Added in stage 2 profiles 
- Added example of a  DrugProductwithImpurities 

### Changes and Updates for Version 1.1.0

- removed EMA and GENC from diagrams
- updated terminology in stage 2 profiles
- imported all changes from ballot May 2024

