**Overview**

The US Food and Drug Administration (FDA) intends to identify and standardize data elements and terminologies for information commonly used and submitted in support of the Agency’s review of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls (PQ/CMC) section of drug product applications. These data elements are being defined and mapped to FHIR resources in stages then published in this Implementation Guide for use by industry and vendors who support this process. For more information on the PQ/CMC Project and related activities outside of HL7, please visit the FDA PQ/CMC data standards page [here](https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-quality-chemistry-manufacturing-controls-pqcmc).  

**NOTE:** When formally announced by FDA, the version(s) of this Implementation Guide specified by FDA will define the instructions for preparation of FHIR-based Pharmaceutical Quality, Chemistry, Manufacturing & Controls data for submission to FDA.

### Background

Drug product application content, including PQ/CMC, is harmonized internationally by the International Council for Harmonisation of Technical Requirements for Pharmaceuticals for Human Use ([ICH](https://www.ich.org)). The content standard for drug product applications is the ICH Common Technical Document (CTD) guideline which also has an ICH Topic ID of M4 (Multidisciplinary Guideline 4). The PQ/CMC content within the M4 Topic is identified as the Quality content and the section of the M4 guideline specific to PQ-CMC content is M4Q. When revision numbers are included, the resulting identifier is M4Q(R1), M4Q(R2), etc. The M4 guideline associates a “module” framework with numbers so that Module 2.3 is the Quality Overall Summary (one of several summaries in Module 2) and Module 3 is the Quality Data section (see the [ICH CTD page](https://ich.org/page/ctd#2)). The M4Q CTD guideline describes the content of both CTD Modules 2.3 and 3. Note that ICH terms typically use a British English spelling.

ICH created an associated guideline to harmonize the electronic exchange of CTD content (e.g., sections or subsections in pdf, xml, etc.) which is called the electronic Common Technical Document ([eCTD](https://www.ich.org/page/multidisciplinary-guidelines#8-2)) and is identified as the ICH M8 Topic (Multidisciplinary Guideline 8). Within the ICH eCTD (M8) guideline, the format and technology for exchange is defined. The eCTD guideline provides the regulatory application exchange framework in which FHIR-based CTD content “document bundles” will be exchanged between industry and the FDA. **NOTE**: Details about how to configure an eCTD submission to use FHIR-based PQ/CMC document bundles are outside of the scope of this IG. The eCTD is designed to reflect CTD concepts and the two acronyms are often used interchangeably.

Figure 1 below shows the high-level data flow of ICH CTD Quality data (PQ/CMC) from a pharmaceutical company to the US FDA. 

<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1100px" src="figure1.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
  <figcaption style="text-align: center">Figure 1: High-level data flow for submission of CTD Module 3 and 2.3 Quality data in FHIR to the US FDA</figcaption>
</figure>

### Project Scope

The scope of FDA’s PQ/CMC project is to develop structured data standards for content of ICH CTD Modules 2.3 and 3 when the content is amenable to structuring. The data standards development process is a phased approach, and the subdomains of CMC are grouped into phases. Each subdomain roughly aligns with a particular CTD section. Figure 2 below shows the phases of FDA’s standards development effort. As the data standards are developed, FDA publishes the draft standards to the industry through the Federal Register Notice (FRN) process to solicit industry feedback and enhance the data standards.


<figure>
  <center><img style="padding-top:0;padding-bottom:30px;width: 60%; margin: auto;"  src="figure2.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/></center>
  <figcaption style="text-align: center">Figure 2: Data Standards Development Phases</figcaption>
</figure>

#### IG Scope

This PQ/CMC FHIR IG is eventually intended to represent all the US FDA’s PQ/CMC data developed across all phases.

- This FHIR IG is planned to follow an iterative approach, meaning that as new subdomains of the phases and sections of CTD M3 are structured and represented in FHIR, new FHIR profiles will be added to this IG to represent the content of those specific CTD M3 sections.

-  In support of an iterative PQ/CMC IG approach, the phases have been further grouped into implementable smaller groups called “Stages”. For each iteration of this IG, FDA plans to ballot and publish in stages. Each new stage will cover a particular set of subdomains/CTD sections of the larger PQ/CMC domain. For example, the first ballot, May 2024 ballot cycle, is referred to as Stage 1. This Stage 1 covers the following CTD sections:

    - Description and Composition of the Drug Product (eCTD 3.2.P.1)
    - General Substance Information (eCTD 3.2.S.1)
    - Control of Materials (eCTD 3.2.S.2.3)
    - Specification (eCTD 3.2.S.4.1; 3.2.P.4.1; 3.2.P.5.1)

- In the future, FDA will add Stage 2 subdomains to this IG and will take Stage 2 subdomains to HL7 ballot, and so on. Ballot dates for future stages have not yet been finalized.
- Please note that new versions of this IG may include changes to previous published stages.
- The FHIR profiles defined in this IG are aligned for use within eCTD v 4.0 or later and may not fit with eCTD v3 headings.
- The Stage 1 CTD sections and FHIR profiles are currently limited to the Solid Oral Dosage Form (SODF).
- All co-packaged products that include diluents are out of scope at this time.

#### Pharmaceutical Quality Projects in BR&R WG

At HL7, this project is referred to as Pharmaceutical Quality – Chemistry, Manufacturing and Controls (PQ-CMC) Submissions to FDA. BR&R WG maintains a Confluence page for this project [here](https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+-+Chemistry%2C+Manufacturing+and+Controls+%28PQ-CMC%29+Submissions+to+FDA) 

There is another project in HL7 BR&R that covers the domain of Pharmaceutical Quality. That project’s focus is on CMC data exchange between biopharmaceutical companies and their partners. It is often referred to as Pharmaceutical Quality (Industry). BR&R WG maintains a Confluence page for this Industry project [here](https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+%28PQ%29+-+Industry+Use+Case) 

### IG Overview

#### FHIR Resources and Profiles

The first version of the PQ/CMC IG is bound to FHIR R5. It consists of four FHIR bundle profiles that are scoped to the FDA PQ/CMC Phase 1, Stage 1 requirements and are aligned with sections of Module 3 of ICH CTD as indicated by the profile title.

The FHIR resources leveraged in all of Phase 1 are listed below and represented in Figure 3 below. The four Stage 1 FHIR bundle profiles are composed from nine FHIR Resources. These nine FHIR resources are identified in the list below with an "*" asterisk after the resource name.

Note: The first 2 FHIR resources – Bundle and Composition are organizational profiles used to package the content/domain resources.

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
14.   PackagedProductDefinition *

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="figure3.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
  <figcaption style="text-align: center">Figure 3: PQ/CMC Phase 1 Scope FHIR Resources</figcaption>
</figure>

{::options parse_block_html="true" /}

#### PQ/CMC FHIR Profiles

As mentioned above, the PQ/CMC project Phase 1 structured data requirements are eventually planned to be represented in the PQ/CMC FHIR IG.

The profiles are designed for use as defined in Module 3 of eCTD v 4.0. The table below contains a mapping of the FHIR Profiles to the Phase 1 requirements. The PQ/CMC FHIR profiles can be accessed through the "eCTD Profiles" menu in the main bar at the top of this page or via hyperlinks in the table below. Additional menu items and links will be added as new profiles are built out and balloted.


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
   <td>[Description and Composition of the Drug Product](https://hl7.org/fhir/us/pq-cmc-fda/2024May/eCTD32P10.html)
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
   <td>[General Information] (https://hl7.org/fhir/us/pq-cmc-fda/2024May/eCTD32S10.html)
   </td>
   <td>3.2.S.1.0
   </td>
  </tr>
  <tr>
   <td>6
   </td>
   <td>[Control of Materials] (https://hl7.org/fhir/us/pq-cmc-fda/2024May/eCTD32S23.html)
   </td>
   <td>3.2.S.2.3
   </td>
  </tr>
  <tr>
   <td>7
   </td>
   <td>Substance Characterisation
   </td>
   <td>3.2.S.3
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
   <td>[Specification] (https://hl7.org/fhir/us/pq-cmc-fda/2024May/eCTDSP4151.html)
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

The PQ/CMC team would like to acknowledge the contribution of the BR&R WG members who have participated in the Medication-related FHIR resource discussions and helped refine the resources.

#### IP Statements
{% include ip-statements.xhtml %} 

#### Dependencies
{% include dependency-table.xhtml %}

#### Globals
{% include globals-table.xhtml %}
