### Background

The US Food and Drug Administration (FDA) intends to identify and standardize data elements and terminologies for information commonly used and submitted in support of drug product applications in Module 3 (M3) of ICH eCTD. M3 is commonly referred to as the Chemistry, Manufacturing and Controls (CMC) module. At the FDA, this ICH eCTD M3 data standardization effort is referred to as the Pharmaceutical Quality/Chemistry, Manufacturing and Controls (PQ/CMC). For more information on the PQ/CMC Project, please visit [https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc](https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc)

Figure 1 below shows the high-level data flow of Module 3 and 2.3 of ICH CTD CMC/Quality data from a pharmaceutical company to the US FDA.  This FHIR IG is scoped to Module 3 and 2.3.

<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1100px" src="figure1.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
  <figcaption style="text-align: center">Figure 1: High-level data flow for submission of CTD Module 3 and 2.3 Quality data in FHIR to the US FDA</figcaption>
</figure>

### Project Scope

The scope of FDA’s PQ/CMC project is to develop structured data standards for Module 3 and 2.3 when the content is amenable to structuring.  The data standards development process is a phased approach, and the subdomains of CMC are grouped into Phases. Each subdomain the two phases roughly aligns with a particular CTD section.  Figure 2 below shows the Phases of FDA’s standards development effort.  As the data standards are developed, FDA publishes the draft standards to the industry through the Federal Register Notice (FRN) process to solicit industry feedback and enhance the data standards.


<figure>
  <center><img style="padding-top:0;padding-bottom:30px;width: 60%; margin: auto;"  src="figure2.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/></center>
  <figcaption style="text-align: center">Figure 2: Data Standards development Phases</figcaption>
</figure>

#### IG Scope

This PQ/CMC FHIR IG is eventually intended to represent all the US FDA’s PQ/CMC data standards developed across all Phases.

- Overall, this FHIR IG is planned to follow an iterative approach, meaning that as new subdomains of the Phases & sections of eCTD M3 are structured and represented in FHIR, new FHIR profiles will be added to this IG to represent the content of those specific eCTD M3 sections.

-  In support of an iterative PQ/CMC IG approach, the Phases have been further grouped into implementable smaller groups called “Stages”.  For each iteration of this IG, FDA plans to ballot and publish in Stages.  Each new Stage will cover a particular set of subdomains/eCTD sections of the larger PQ/CMC domain.   For example, this first ballot is planned for HL7 **May 2024 ballot cycle** and is referred to as Stage 1.  This Stage 1 covers the following CTD sections:

    - Description and Composition of the Drug Product (eCTD 3.2.P.1)
    - General Substance Information (eCTD 3.2.S.1)
    - Control of Materials (eCTD 3.2.S.2.3)
    - Specification (eCTD 3.2.S.4.1; 3.2.P.4.1; 3.2.P.5.1)

-  In the future, FDA will add Stage 2 subdomains to this IG and will take Stage 2 subdomains to HL7 ballot, and so on.  Ballot dates for future Stages have not yet been finalized.

-  The FHIR Profiles defined in this IG are aligned with eCTD v 4.0.

-  The Stage 1 eCTD sections and FHIR Profiles are currently limited to the Solid Oral Dosage Form (SODF).
-  All co-packaged products that include Diluents are out of scope at this time.

**NOTE:** _When formally announced by FDA, the version(s) of this Implementation Guide specified by FDA will define the instructions for FHIR-based submissions of Pharmaceutical Quality, Chemistry, Manufacturing & Controls data to FDA._

#### HL7 Biomedical Research & Regulation (BR&R) Work Group 

The PQ/CMC Project is sponsored by the HL7 Biomedical Research and Regulation (BR&R) Work Group (WG). At HL7, this project is referred to as Pharmaceutical Quality. BR&R WG maintains a Confluence page for this project is here [https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+%28PQ%29+-+Regulatory+Use+Case](https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+%28PQ%29+-+Regulatory+Use+Case)

There is another project in HL7 BR&R that covers the same domain of Pharmaceutical Quality.  That project’s focus is on data exchanges of CMC data that is internal to biopharmaceutical companies.  It is often referred to as Pharmaceutical Quality (Industry).  BR&R WG Confluence page for this Industry project is here [https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+%28PQ%29+-+Industry+Use+Case](https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+%28PQ%29+-+Industry+Use+Case)


### IG Overview

#### FHIR Resources and Profiles

Version 1.0.0 of the PQ/CMC IG is bound to FHIR R5. It consists of four FHIR bundle profiles that are scoped to the FDA PQ/CMC Phase 1, Stage 1 requirements and are aligned with sections of Module 3 of ICH eCTD version 4.0 as indicated by the profile name. Phase 1, Stage 1 is based on these four FHIR bundle profiles are composed from eight Resources in FHIR followed by a asterisk. The FHIR resources leveraged in all of Phase 1 are listed below and represented in Figure 3 below.

Note: The first 2 FHIR Resources – Bundle and Composition are organizational profiles used to package the content/domain resources. 

1.       Bundle *
2.       Composition *
3.       DiagnosticReport
4.       Ingredient *
5.       Medication
6.       MedicinalProductDefinition *
7.       Observation
8.       Organization *
9.       PlanDefinition *
10.   ResearchStudy
11.   Substance
12.   SubstanceDefinition *
13.   ManufacturedItemDefinition *

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="figure3.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
  <figcaption style="text-align: center">Figure 3: PQ/CMC Phase 1 Scope FHIR Resources</figcaption>
</figure>

{::options parse_block_html="true" /}

#### PQ/CMC FHIR Profiles

As mentioned above, the PQ/CMC project Phase 1 structured data requirements are represented in the PQ/CMC FHIR IG. These Profiles have been designed at the boundary of the leaf-level sections of Module 3 of eCTD v 4.0. The table below contains a mapping of the FHIR Profiles to the Phase 1 requirements. The PQ/CMC FHIR profiles can be accessed through the “eCTD Profiles” menu in the main bar at the top of this page.

<table>
  <tr>
   <td><strong>No.</strong>
   </td>
   <td><strong>PQ/CMC FHIR Profile Name</strong>
   </td>
   <td><strong>eCTD Module 3 Section</strong>
   </td>
  </tr>
  <tr>
   <td>1
   </td>
   <td>Product Description and Composition of the Drug Product
   </td>
   <td>3.2.P.1.0
   </td>
  </tr>
  <tr>
   <td>2
   </td>
   <td>Product Batch Formula
   </td>
   <td>3.2.P.3.2
   </td>
  </tr>
  <tr>
   <td>3
   </td>
   <td>Product Characterisation of Impurities
   </td>
   <td>3.2.P.5.5
   </td>
  </tr>
  <tr>
   <td>4
   </td>
   <td>Product Container Closure
   </td>
   <td>3.2.P.7.0
   </td>
  </tr>
  <tr>
   <td>5
   </td>
   <td>Substance General Information
   </td>
   <td>3.2.S.1.0
   </td>
  </tr>
  <tr>
   <td>6
   </td>
   <td>Substance Control of Materials
   </td>
   <td>3.2.S.2.3
   </td>
  </tr>
  <tr>
   <td>7
   </td>
   <td>Substance Characterisation
   </td>
   <td>3.2.S.3.0
   </td>
  </tr>
  <tr>
   <td>8
   </td>
   <td>Substance Container Closure System
   </td>
   <td>3.2.S.6.0
   </td>
  </tr>
  <tr>
   <td>9
   </td>
   <td>Specification
   </td>
   <td>3.2.S.4.1; 3.2.P.4.1; 3.2.P.5.1
   </td>
  </tr>
  <tr>
   <td>10
   </td>
   <td>Batch Analyses
   </td>
   <td>3.2.S.4.4; 3.2.P.5.4
   </td>
  </tr>
  <tr>
   <td>11
   </td>
   <td>Stability Summary
   </td>
   <td>3.2.S.7.1; 3.2.P.8.1
   </td>
  </tr>
  <tr>
   <td>12
   </td>
   <td>Stability Data
   </td>
   <td>3.2.S.7.3; 3.2.P.8.3
   </td>
  </tr>
</table>


#### Credits

The development of this Implementation Guide is an initiative funded by the US FDA.

- Primary IG authors: 
    - Catherine Hosage Norman (mailto: chn@module3solutions.com)
    - Smita Hastak (mailto: shastak@samvit-solutions.com)
    - Lisa-Marie Schick (mailto: lschick@samvit-solutions.com)
    - Bill Friggle (mailto: wfriggle@samvit-solutions.com)
    - Christopher Norman (mailto: chris@module3solutions.com)

- Program Management:
	- Scott Gordon (mailto: [pq-cmc@fda.hhs.gov](mailto:pq-cmc@fda.hhs.gov))
  - Josiah Tindor (IBM PM)
  
At HL7, The the PQ/CMC Projects is Sponsored sponsored by the HL7 Biomedical Research & Regulation (BR&R) work Work groupGroup.

#### IP Statements
{% include ip-statements.xhtml %} 

#### Dependencies
{% include dependency-table.xhtml %}

#### Globals
{% include globals-table.xhtml %}
