## Background

The US Food and Drug Administration (FDA) intends to identify and standardize data elements and terminologies for information commonly used and submitted in support of drug product applications in Module 3 (M3) of ICH eCTD. M3 is commonly referred to as the Chemistry, Manufacturing and Controls (CMC) module. At the FDA, this ICH eCTD M3 data standardization effort is referred to as the Pharmaceutical Quality/Chemistry, Manufacturing and Controls (PQ/CMC). For more information on the PQ/CMC Project, please visit [https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc](https://www.fda.gov/industry/fda-data-standards-advisory-board/pharmaceutical-qualitychemistry-manufacturing-controls-pqcmc)

<figure>
  <img style="padding-top:0;padding-bottom:30px" width="400px" src="triangle.png" alt="FHIR Resources leveraged in PQ/CMC Phase 1 Scope"/>
</figure>

<p> </p>
The PQ/CMC Project is evolving and FDA is structuring sections of eCTD M3 in a phased approach.

<table style="margin: 0px auto;"><tr><td><img src="phases.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold"> FDA PQ/CMC Project Phases </p>


The PQ/CMC FHIR IG represents the PQ/CMC data standards. Therefore, implementation of this FHIR IG will follow a rolling approach; as new sections of eCTD M3 are structured and represented in FHIR, new FHIR profiles will be added to this IG to represent the content of those added eCTD M3 sections. The FHIR Profiles defined in this IG are aligned with eCTD v 4.0. 

The PQ/CMC Project is sponsored by the HL7 Biomedical Research and Regulation (BR&R) Work Group (WG). At HL7, this project is referred to as Pharmaceutical Quality. BR&R WG maintains a Confluence page for this project here [https://confluence.hl7.org/pages/viewpage.action?pageId=58656205](https://confluence.hl7.org/pages/viewpage.action?pageId=58656205)

## Status:

As part of the PQ/CMC project, the data elements and controlled terminology represented in the profiles contained in the PQ/CMC FHIR IG have been published to the industry for comment through Federal Register Notices (FRN). The industry comments and suggestions received have been incorporated in the standards and are represented here in the IG, as applicable.

Note: See FDA PQ/CMC website for more information about the Federal Register Notices (FRN). In the future, as FDA develops new structured data elements and terminology for additional eCTD M3 sections, they will solicit industry feedback, and then represent the requirements in FHIR. These new requirements will result in additional FHIR profiles that will be added to this IG.

## IG Overview

### FHIR Resources and Profiles

Version 0.1.17 of the PQ/CMC IG is bound to FHIR R5. It consists of 12 FHIR bundle profiles that are scoped to the FDA PQ/CMC Phase 1 requirements, and are aligned with sections of Module 3 of ICH eCTD version 4.0 as indicated by the profile name. These 12 FHIR bundle profiles are composed from 11 domain FHIR Profiles. The FHIR resources leveraged are listed below and represented in Figure 2.

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
  <figcaption>Figure 2:  FHIR Resources leveraged in PQ/CMC Phase 1 Scope</figcaption>
</figure>

{::options parse_block_html="true" /}

### PQ/CMC FHIR Profiles

As mentioned above, the PQ/CMC project Phase 1 structured data requirements are represented in the PQ/CMC FHIR IG.  These Profiles have been designed at the boundary of the leaf-level sections of Module 3 of eCTD v 4.0. The table below contains a mapping of the FHIR Profiles to the Phase 1 requirements. The PQ/CMC FHIR profiles can be accessed through the “eCTD Profiles” menu in the main bar at the top of this page.

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

* Program Management:
	* Scott Gordon (mailto: [pq-cmc@fda.hhs.gov](mailto:pq-cmc@fda.hhs.gov))
  
At HL7, The the PQ/CMC Projects is Sponsored sponsored by the HL7 Biomedical Research & Regulation (BR&R) work Work groupGroup.

### IP Statements
{% include ip-statements.xhtml %}

This IP is temporary based on required bindings in some resources. The country codes from https://nsgreg.nga.mil will be used after the technical corrections to R5 are released.  The examples use the country codes from https://nsgreg.nga.mil.
### Dependencies
{% include dependency-table.xhtml %}

### Globals
{% include globals-table.xhtml %}
