### Domain Overview
A Stability Study is a structured, formal investigation to continually evaluate the physical, chemical, biological, microbiological, biochemical, and immunochemical attributes of a drug substance or a drug product  as a function of time.  The **EctdCompositionSP7181** profile was designed to mirror the structure and purpose of the CTD’s Sections 3.2.S.7.1 and 3.2.P.8.1(“Stability Summary and Conclusions”), translating each part of that narrative-driven document into discrete, well-typed sections of a FHIR `Composition`. At its core, it ensures that an applicant’s stability summary—traditionally a single PDF or Word document—becomes a collection of linked, validated FHIR resources, each playing a clear regulatory role.  The summary is of all the data in the repective 3.2.S.7.3 and 3.2.P.8. sections.  That data may be provided in one or many bundles so this overivew should tell the story or how all the data relates.

The opening **Study Design** section functions as the scaffold for everything that follows. In a paper CTD, you’d often read a paragraph describing which batches of drug substance were manufactured, how they were packaged, and under what conditions they were stored (long-term, accelerated, intermediate, or bracketing/matrixing designs). By giving that narrative its own slice of `Composition.section`, the profile preserves that overview in a human-readable section text while also anchoring it in FHIR’s provenance model—so that downstream systems know exactly which manufacturing records and protocol definitions underpin the summary.

Immediately after, the **Test Parameters & Acceptance Criteria** section provides an overview of the tests and acceptance criteria.” In a traditional report you’d find a table listing “Assay by HPLC, 98.0–102.0 % LC,” “Impurity A ≤ 0.5 %,” “Water Content ≤ 1.5 %,” and so on. In the FHIR model this becomes a `PlanDefinition`—the `StabilitySpecSummary`—where each test is an action slice bound to standardized ValueSets for method, category, and units. Embedding it in the `Composition` means the narrative and the structured workflow stay in sync: readers see the acceptance criteria, and machines can automatically generate or validate test-execution that is provided in the stabiity data sections.

The **Tabulated Results** slices—one for each storage condition category (Long-term, Intermediate, Accelerated)—capture the actual measurements taken over time. By slicing on a code drawn from the PQ/CMC “Storage Condition Category” ValueSet, the profile makes each table optional: if no accelerated data exist, that slice simply isn’t present. Under the hood, each entry in those slices points to a `StabilityDataObservation`, whose components hold assay values, impurity percentages, moisture content, and all other parameters. This dual structure—narrative introduction plus FHIR-native Observations—lets regulatory reviewers both read the summary and, and the potential for a future of drill-downs into machine-readable data for automated trend analysis or electronic review.

The **Trend Analysis** section acknowledges that “numbers on a spreadsheet” can only go so far: reviewers often expect a concise interpretation of what the data mean. Here, the profile reserves a section text for a narrative interpretation (e.g., “Assay declined by < 1 % over 24 months…”) and then permits one or more graphic attachments via references to `Graphic` resources. Those figures—charts of potency vs. time, impurity growth curves, or regression plots—become first-class elements in the digital submission, yet are still embedded within the same Composition document.

Finally, the **Conclusion** and **Storage Statement** sections distill the regulatory prescriptions. The conclusion slice holds the overarching findings of expriry date and retest date.  For example: “all parameters remained within acceptance through two years, supporting a 24-month retest period”;   The conclusion can also contain a storage statement that succinctly tells manufacturing and QC teams where and how to keep bulk material (“Store at 2–8 °C, protect from moisture”). By modeling both as separate `Composition.section` slices, the profile keeps the regulatory logic transparent and allows downstream systems to extract instructions without difficult text-mining.

Overall, the **EctdCompositionSP7181** profile transforms the free-text, table-laden world of CTD stability summaries into a modular, interoperable FHIR document. Each slice of the `Composition` serves a distinct purpose—design description, method binding, result linkage, interpretive narrative, and action-oriented conclusion—yet together they compose a single “Stability Summary and Conclusions” resource that remains faithful to ICH and FDA guidance while unlocking new possibilities for automation and electronic review.

### Implementer Instructions

The ICH M4Q guideline specifies that **Sections 3.2.S.7.1 and 3.2.P.8.1** (“Stability Summary and Conclusions”) of the CTD must present a concise summary of the types of studies conducted, the protocols used (including forced-degradation and stress conditions), and the key results—culminating in conclusions on storage conditions and retest/shelf-life recommendations. ICH Q1A(R2) further defines the minimum data package for long-term, intermediate, and accelerated studies; ICH Q1D describes bracketing and matrixing designs; and ICH Q1E details statistical treatments (pooling, trend analysis, regression) needed to justify shelf life.

The FDA’s [M4 CTD-Quality Q&A “Location Issues”](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/m4-ctd-quality-questions-and-answers-location-issues) guidance clarifies that, in a US submission, a tabulated summary of the stability results from 3.2.S.7.3 and 3.2.P.8.3  are complete with graphic representations where appropriate, should be imported directly into 3.2.S.7.1 and 3.2.P.8.1, alongside the summary and conclusions. In practice, this means applicants must present both narrative conclusions and embedded tables or figures in a single, coherent “stability summary” document.

#### FHIR Mapping: EctdCompositionSP7181 & Related Profiles

To mirror **3.2.S.7.1 and 3.2.P.8.1** in a FHIR Implementation Guide, the `EctdCompositionSP7181` profile extends `Composition` to represent the entire Stability Summary and Conclusion document. It fixes `type` to the custom SectionType “SP7181” for “Stability Summary and Conclusion” and slices the document into logical sections—**Study Design**, **Test Parameters & Acceptance Criteria**, the storage-condition sections (**Long-term**, **Intermediate**, **Accelerated**), **Trend Analysis**, **Conclusion**, and **Storage Statement**. Each section can carry free-text narrative or reference structured resources.

The profile leverages:

- **`CodedOrganization`** (with `PqAddress`) for the sponsor or manufacturer.  
- **`SubstanceDefinitionHandle`** to link the tested drug substance.  
- **`StabilitySpecSummary`** (`PlanDefinition`) to structure test parameters and acceptance criteria. It defines each test method and acceptance criteria, slicing on `action.code` and binding to test-category 
- **`ResultSummary`** (`Observation`) slices for each batch/time-point result, binding to the `pq-timePoint-extension` (to capture time intervals) and storage-condition ValueSets.  
- **`GraphicReference`** (`DocumentReference`) and **`GraphicAttachment`** (`Attachment`) in the **Trend Analysis** slice to hold optional figures.

Supporting profiles include:

- **`DrugSubstanceBatch`** (extends `Substance`): models individual batches.  

By codifying the stability summary as a single `Composition` with discrete references to structured FHIR resources, the FSH-driven approach ensures that every element of the CTD stability summary—narrative text, tabulated results, statistical analyses, and graphics—is machine-readable yet remains human-interpretable.

### Rperesentation in FHIR

The domain concepts of Stability Summary are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Stability Summary FHIR bundle profile. Concepts that are key to this domain include the following:

* Stability Summary
  * [Stability Testing Summary](StructureDefinition-pqcmc-stability-spec-summary.html) (StabilitySpecSummary) profile on [PlanDefinition](https://hl7.org/fhir/R5/plandefinition.html) resource
* Drug Product
  * [Drug Product Handle](StructureDefinition-pqcmc-drug-product-handle.html) (DrugProductHandle) profile on [MedicinalProductDefinition](http://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* API 
  * [Substance Definition Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) resource
* Related Organizations
  * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.7.1 and 3.2.P.8.1 Profile Map

<div>{%include SStabilitySummaryNew.svg%}</div>

### Usage Patterns

Not presently defined. Content will be added in the future when FDA PQ/CMC FHIR IG starts supportinng other scenarios, for example new dosage forms such as liquids, etc.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.