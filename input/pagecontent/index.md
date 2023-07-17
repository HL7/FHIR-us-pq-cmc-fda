## WORK IN PROGRESS

Known errors:  
- '(any number) profiles found for entry resource. More than one is not supported at this time.' The IG publisher does not distinguish between different profiles on the same Resource in one bundle.  The 3.2.S.1.0 and 3.2.P.1.0 bundles are technically correct. This error can be ignored in validation of the file. When this feauture is supported, a later version will be released. The feature is recognized as necessary for the publisher, but a release date is unscheduled.
- 'None of the codings provided are in the value set 'Country ValueSet'. GENC country codes not suported in SubtanceDefinition. Requires a change to the FHIR specification, therefore a Jira ticket submission. Igore this error.

## Background

The US Food and Drug Administration (FDA) intends to identify and standardize data elements and terminologies for information commonly used and submitted in support of drug product applications in eCTD Module 3.  Module 3 (M3) of ICH eCTD is commonly referred to as the Chemistry, Manufacturing and Controls (CMC) module.   At the FDA, this ICH eCTD M3 data standardization effort is referred to as the Pharmaceutical Quality/Chemistry, Manufacturing and Controls (PQ/CMC).  For more information on the PQ/CMC Project, please visit [https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc](https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc)

The impetus for this standardization effort was the provisions from the 2012 Food and Drug Administration Safety and Innovation Act (FDASIA) (Pub. L. 112-144), which authorized the Agency to require certain submissions to be in a specified electronic format. The development of a structured format for PQ/CMC data will enable consistency in the content and format of PQ/CMC data submitted, thus providing a harmonized language for submission content, allowing reviewers to query the data, and, in general, contributing to a more efficient and effective regulatory decision-making process by creating a standardized data dictionary.

The PQ/CMC Project is an evolving project and FDA is structuring the various sections of eCTD module 3 in a phased approach. Therefore, this FHIR IG which is representing the PQ/CMC data standards will also follow a phased approach. There will be this single PQ/CMC IG with many profiles.  This IG should be considered a rolling IG, meaning that as new sections of eCTD M3 are structured and represented in FHIR this IG will continue to grow with new FHIR Profiles that represent the content of those new eCTD M3 sections.  The FHIR Profiles defined in this IG are aligned with eCTD v 4.0.

The PQ/CMC Project is sponsored by the HL7 Biomedical Research and Regulation (BR&R) Work Group (WG).  At HL7, this project is referred to as Pharmaceutical Quality.  BR&R WG maintains a Confluence page for this project here [https://confluence.hl7.org/pages/viewpage.action?pageId=58656205](https://confluence.hl7.org/pages/viewpage.action?pageId=58656205)


## Status:

FDA plans to represent all the Phase 1 data elements and supporting terminology in FHIR Profiles defined here.  These data elements and controlled terminology have been published to the industry for comment through the Federal Register Notices (FRN).  These industry comments and suggestions have been incorporated in the data element standards, as applicable.  

Note: See FDA PQ/CMC website for the scope of Phase 1 of PQ/CMC. In the near future, as FDA develops new structured data elements and terminology for Phase 2 sections of eCTD Module 3, they will solicit industry feedback and then represent the requirements in FHIR. These new requirements will result in additional FHIR profiles that will be added to this IG. 


## IG Overview

### FHIR Resources and Profiles

Phase 1 version of the IG consists of approximately 11 FHIR Profiles. These 11 Profiles are scoped to Phase 1 requirements of the PQ/CMC Project and are aligned with various sections of Module 3 of ICH eCTD version 4.0.  This IG is bound to FHIR R5. The resources leveraged to represent PQ/CMC Phase 1 requirements are listed below and represented in Figure 1

Note: The first 2 FHIR Profiles – Bundle and Composition are organizational profiles used to package the content/domain resources.



1. Bundle
2. Composition
3. DiagnosticReport
4. Ingredient
5. Medication
6. MedicinalProductDefinition
7. Observation
8. Organization
9. PlanDefinition
10. ResearchStudy
11. Substance
12. SubstanceDefinition
13. ManufacturedItemDefinition

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="FHIRresources.jpg" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
  <figcaption>Figure 1:  FHIR Resources leveraged in PQ/CMC Phase 1 Scope</figcaption>
</figure>

{::options parse_block_html="true" /}

### PQ/CMC Phase 1 Profiles

As mentioned above, the Phase 1 structured data requirements of PQ/CMC project have been represented in FHIR and the Profiles have been designed at boundary of the leaf-level sections of eCTD v 4.0. The table below shows the FHIR Profiles in support of Phase 1 requirements.  These profiles can be accessed through the “eCTD Profiles” menu in the main bar at top of this page.

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
   <td>Product Characterization of Impurities
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


### Credits

The development of this Implementation Guide is an initiative funded by the US FDA.

* Primary IG authors: 
   * Catherine Hosage Norman (mailto: chn@module3solutions.com)
	* Smita Hastak (mailto: shastak@samvit-solutions.com)
	* Lisa-Marie Schick (mailto: lschick@samvit-solutions.com)
	* Bill Friggle (mailto: wfriggle@samvit-solutions.com)

* Domain Experts and Program Management:
	* Program Management – (list of names to be added soon)
	
* FDA PQ/CMC SMEs — (list of names to be added soon)

The PQ/CMC Projects is Sponsored by the HL7 Biomedical Research & Regulation work group.

### IP Statements
{% include ip-statements.xhtml %}

### Dependencies
{% include dependency-table.xhtml %}

### Globals
{% include globals-table.xhtml %}
