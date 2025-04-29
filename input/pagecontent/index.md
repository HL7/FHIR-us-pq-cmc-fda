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

This PQ/CMC FHIR IG is eventually intended to represent all the US FDA’s PQ/CMC data standard developed across all phases.

- This FHIR IG is planned to follow an iterative approach, meaning that as new subdomains of the phases and sections of CTD M3 are structured and represented in FHIR, new FHIR profiles will be added to this IG to represent the content of those specific CTD M3 sections.

-  In support of an iterative PQ/CMC IG approach, the phases have been further grouped into implementable smaller groups called “Stages”. For each iteration of this IG, FDA plans to ballot and publish in stages. Each new stage will cover a particular set of subdomains/CTD sections of the larger PQ/CMC domain. The various CTD sections covered under each Stage can be seen under the 'eCTD Stage xx' menu on main menu ribbon on top of this page.

- The domain friendly data element names that were published in the FDA Federal Register Notices (FRN) can be found in the 'Description & Constraints' column within each Profile.
- Please note that new versions of this IG may include changes to previous published stages.
- The FHIR profiles defined in this IG are aligned for use within eCTD v 4.0 or later and may not fit with eCTD v3 headings.
- The PQ/CMC FHIR IG is currently limited to the Solid Oral Dosage Form (SODF).

#### Pharmaceutical Quality Projects in BR&R WG

At HL7, this project is referred to as Pharmaceutical Quality - Chemistry, Manufacturing and Controls (PQ-CMC) Submissions to FDA. BR&R WG maintains a Confluence page for this project [here](https://confluence.hl7.org/display/BRR/Pharmaceutical+Quality+-+Chemistry%2C+Manufacturing+and+Controls+%28PQ-CMC%29+Submissions+to+FDA) 

There is another project in HL7 BR&R that covers the domain of Pharmaceutical Quality. That project’s focus is on CMC data exchange between biopharmaceutical companies and their partners. It is often referred to as Pharmaceutical Quality (Industry). BR&R WG maintains a Confluence page for this Industry project [here](https://confluence.hl7.org/spaces/BRR/pages/161072930/Pharmaceutical+Quality+-+Industry+PQI+Use+Case)


### IG Overview

#### FHIR Resources and Profiles

The PQ/CMC FHIR Implementation Guide is being developed iteratively and new subdomains of CMC are added to the IG as the profiles are developed and ready for HL7 Connectathon and Ballot. The first edition of this IG was bound to the FHIR R5 specification. The binding will be updated as new FHIR specifications are released by HL7.

The profiles in this IG are aligned with ICH CTD Module 3 section titles. The FHIR profiles can be accessed through the "eCTD Profiles" menus in the main bar at the top of this page. As new content is added to this IG, new profiles will be added and existing profiles will be enhanced. The initial editions of the IG are focused on Solid Oral Dosage Form (SODF). Support for Liquids and Large Molecules will be added in the future.

The diagram below shows the choreography of FHIR Resources that are leveraged in the initial editions of this IG. The choreography will be updated as the IG scope is expanded.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="figure3.png" alt="FHIR Resources leveraged in PQ/CMC "/>
  <figcaption style="text-align: center">Figure 3: PQ/CMC FHIR Resources</figcaption>
</figure>

{::options parse_block_html="true" /}

Note: The ResearchStudy resource will be leveraged for Stability-	related profiles in the near futurePQ/CMC FHIR Resource Grid
#### IG Profiles.  

The grid below shows which FHIR Resources are being leveraged in the various PQ/CMC FHIR .

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="ProfileGrid.png" alt="FHIR Resources leveraged per Bundle profiles"/>
  <figcaption style="text-align: center">Figure 4: PQ/CMC FHIR Resources per Bundle Profile</figcaption>
</figure>

{::options parse_block_html="true" /}

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
  
At HL7, the PQ/CMC Project is sponsored by the HL7 Biomedical Research & Regulation (BR&R) Work-Group..

The PQ/CMC team would like to acknowledge the following teams for their contribution to this PQ/CMC FHIR IG:

The FDA Drug Quality Reviewers from CDER, CBER and CVM for their domain expertise in the development of the PQ/CMC data standards and supporting controlled terminology.  All the domain content in this IG reflects the FDA PQ/CMC data standards work.  

The HL7 Biomedical Research & Regulation (BR&R) WG members who have participated in the Medication Definition related FHIR resource discussions to help refine these resources as well as review the PQ/CMC FHIR IG and provide useful feedback. 

The National Cancer Institute's Enterprise Vocabulary Service (NCI EVS) team for their support in registering the PQ/CMC terminology in the NCI Thesaurus (NCIt).

#### IP Statements
{% include ip-statements.xhtml %} 

#### Dependencies
{% include dependency-table.xhtml %}

#### Globals
{% include globals-table.xhtml %}
