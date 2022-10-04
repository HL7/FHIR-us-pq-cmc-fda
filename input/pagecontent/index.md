## PharmaceuticalQualityImplementationGuide

WORK IN PROGESS

<span style="color:  #333333;;">US FDA intends to identify and standardize data elements and terminologies for information commonly used and submitted in support of drug product applications in eCTD Module 3. The impetus for this standardization effort was the provisions from the 2012 Food and Drug Administration Safety and Innovation Act (FDASIA) (Pub. L. 112-144), which authorized the Agency to require certain submissions to be in a specified electronic format. The development of a structured format for PQ/CMC data will enable consistency in the content and format of PQ/CMC data submitted, thus providing a harmonized language for submission content, allowing reviewers to query the data, and, in general, contributing to a more efficient and effective regulatory decision-making process by creating a standardized data dictionary.</span>

<br>
FHIR resources used in this IG include:
* ActivityDefinition
* Bundle
* Composition
* DiagnosticReport
* DocumentReference
* Ingredient
* Medication
* MedicinalProductDefinition
* Observation
* Organization
* PlanDefinition
* ResearchStudy
* Substance
* SubstanceDefinition	
* Comming Soon: ManufacturedItemDefinition

<span style="color:  #333333;;">At HL7, the PQ/CMC Project will create a single IG which will have MANY Profiles. HL7 allows balloting of an IG for specific Profiles. The Composition profiles will refer to other profiles which may or may not refer to other profiles.  An instance of a Composition profile will contain all instances of the cascade of referred profile, creating a complete document.  The Composition Profiles are </span>
<br>

* eCTD Substance General Information
* eCTD Substance Control of Materials Composition
* eCTD Substance Container Closure System Composition

* eCTD Product Description and Composition
* eCTD Batch Formula Composition
* eCTD Product Characterization of Impurities Composition
* eCTD Product Container Closure System Composition

* eCTD Specification Composition
* eCTD Batch Analyses Composition
* eCTD Stability Data Composition


### Credits

The development of this Implementation Guide is an initiative funded by the US FDA.

Primary IG authors:

* Catherine Hosage Norman (mailto: chn@module3solutions.com)
* Smita Hastak (mailto: shastak@samvit-solutions.com)
* Lisa-Marie Schick (mailto: lschick@samvit-solutions.com)  
* Bill Friggle (mailto: wfriggle@samvit-solutions.com)

Domain Experts and Program Management:

* Program Management – (list of names to be added soon)
* FDA PQ/CMC SMEs --- (list of names to be added soon)

The PQ/CMC Projects is Sponsored by the HL7 [Biomedical Research & Regulation](https://confluence.hl7.org/display/BRR/Biomedical+Research+and+Regulation) work group.
