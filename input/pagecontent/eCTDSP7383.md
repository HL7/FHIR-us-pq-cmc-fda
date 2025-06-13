### Domain Overview

Stability testing is the discipline that establishes how long a drug substance or finished dosage form can be stored while still meeting its quality specifications. The global baseline comes from ICH Q1A(R2), which mandates a core data package—long-term, intermediate, and accelerated studies—for every new-drug or marketing authorization application. These studies expose the product to well-controlled temperature and humidity conditions over time, generating quantitative evidence that supports an initial shelf-life or retest period. In the United States, 21 CFR 211.166 elevates this requirement to law, obliging manufacturers to maintain a “written, scientifically sound” stability program as part of current Good Manufacturing Practice (CGMP).

Complementary ICH guidances refine how those studies may be optimized and interpreted. ICH Q1D introduces bracketing and matrixing, two reduced-design strategies that let companies test only the extremes of a product range or a systematic subset of time-points without compromising regulatory confidence. Once the data are collected, ICH Q1E governs their statistical treatment—pooling batches, trending results, and performing regression analyses—to justify the final labeled shelf life. Together, these documents create a harmonized, risk-based framework that tells developers exactly what to study, how to study it, and how to translate raw measurements into the expiration dates and storage statements that appear on every package.

Stability testing confirms that drug substances and finished products maintain quality, efficacy, and safety throughout their shelf life. Global guidance comes from the ICH Q1‑series—especially Q1A(R2), Q1B, Q1C, Q1D, and Q1E—covering standard, accelerated, in‑use, bracketing, matrixed, photostability, and cycled studies. The profiles in this model implement those expectations with FHIR R6 resources, enabling interoperability and automated validation.

The Stability Data bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.7.3 and 3.2.P.8.3 folder content to the FDA. The contents of this section include the results associated with the evaluation of the drug substance or drug product over time based on the stability study, including the pull date, the amount of th ebatch was stored in the climatic chamber, and identification of the facility where the evaluation occurred.  It captures:

- the study design (planned storage conditions, container/closure, time‑points, tests)
- the execution context (pull date, date batch quantity placed in the chamber, testing facility)
- the results for each batch or grouped product under the study design

Stability studies are an essential part of pharmaceutical development, regulatory submission, and lifecycle management. Their purpose is to confirm that drug products and drug substances maintain their quality, efficacy, and safety throughout their intended shelf life under various environmental conditions.

### ICH Background on Stability Study Types

| Study type          | ICH reference | Purpose                                                                                              |
|---------------------|---------------|------------------------------------------------------------------------------------------------------|
| Standard / Accelerated | Q1A(R2)       | Confirm stability at recommended conditions and predict shelf life through elevated T/RH exposure.    |
| Bracketing           | Q1D           | Test only the extremes of a design factor (e.g., highest / lowest strength) and infer the intermediates. |
| Matrixing            | Q1D           | Test a subset of combinations (e.g., time‑points × containers) and justify coverage of the untested set. |
| Cycled               | Q1E, Q1A(R2)  | Subject product to environmental cycles (e.g., freeze–thaw) that mimic real‑world handling.           |
| In‑use               | Q1A(R2)       | Assess stability from first opening / reconstitution through the end‑of‑use period.                   |

#### ICH Background on Stability Study Types

ICH Q1A (R2) defines the overall framework for stability testing, including the need to evaluate chemical, physical, biological, and microbiological properties over time. ICH Q1D and Q1E provide more detailed guidance on special study designs such as bracketing and matrixing.

#### Standard and Accelerated Studies

Standard long-term studies typically assess stability under recommended storage conditions for the intended shelf life. Accelerated studies expose the product to higher temperature and humidity to predict longer-term stability.

#### Bracketing Studies

ICH Q1D defines **bracketing** as the design of a stability schedule in which only the extremes of certain design factors (e.g., strength, container size) are tested. The assumption is that stability of intermediate levels is represented by the tested extremes. Bracketing requires scientific or statistical justification and is generally appropriate when the extremes are expected to behave similarly to the intermediates.

#### Matrixing Studies

Also covered by ICH Q1D, **matrixing** involves testing only a subset of the total number of possible samples at each time point. This reduces the testing burden while still providing sufficient information to support shelf-life claims. Matrixing requires a risk-based justification that considers product knowledge, manufacturing consistency, and stability data.

##### Cycled and In-Use Studies

ICH Q1E and Q1A recognize the need for **cycled studies**, such as freeze-thaw or light-dark cycling, and in-use testing to simulate real-world handling conditions. **In-use studies** assess stability during the period after opening or reconstitution. These studies typically define cycles or use conditions and evaluate their impact on product quality.

### Implementer Instructions

#### Root: **EctdCompositionSP7383**  
The root of the stability-data model is the **EctdCompositionSP7383** profile, a Composition resource constrained to represent the eCTD Module 3.2.S/P “Stability Data” section. This Composition is sliced into two main sections—one for drug-substance stability and one for drug-product stability—each of which holds `entry` references to one or more **StabilityStudy** instances. In practice, you instantiate a single EctdCompositionSP7383 and then bundle under its sections all of the StabilityStudy resources (one per study) that you intend to submit.

#### **StabilityStudy** (ResearchStudy)  
Each **StabilityStudy** (modeled as a ResearchStudy) captures the overarching metadata for a particular run of stability testing, such as “Study 1234 – Long-term & Accelerated.” Key elements include a unique identifier, a human-readable title, and a `protocol` reference to the detailed plan. Critically, each StabilityStudy is classified—using a coded element constrained by a custom terminology—to one of the ICH-defined study types: Standard (long-term/intermediate/accelerated, per ICH Q1A(R2)), Photostability (light-exposure conditions, per ICH Q1B), Cycled (sequential cycles of differing conditions), Bracketing (extreme-condition endpoints, per ICH Q1D), or Matrixing (a subset of combinations, also per ICH Q1D).

#### **StabilityStudyProtocol** (PlanDefinition)  
The detailed design of each study is captured in the **StabilityStudyProtocol** profile, a PlanDefinition. This protocol enumerates the planned storage conditions, sampling timepoints, and test methods as a series of `action` elements—e.g. long-term 25 °C/60 % RH at 0, 3, 6, 12 months; accelerated 40 °C/75 % RH at 0, 1, 3 months; or defined light-exposure cycles for photostability. By referencing this PlanDefinition, each StabilityStudy clearly binds to its intended experimental design, ensuring consistency between what was planned and what was executed.

#### **StabilitySubStudy** (ResearchStudy)  
To represent the actual arms or “cells” within a study—whether that be different temperature/humidity conditions or successive freeze/thaw cycles—the **StabilitySubStudy** profile (another ResearchStudy) slices the parent study into discrete sub-studies. Each SubStudy points back to its parent via `partOf` and carries attributes for `condition` (storage parameters, category such as long-term vs. accelerated, orientation), `period` for its start and end dates, and a `result` reference to its measured data. For a Standard study, three SubStudies (one each for long-term, intermediate, accelerated) are common; for a Cycled study, you might have one SubStudy per cycle; for Photostability, a single SubStudy captures the light-exposure cell.

#### **StabilityStudyIntervalReport** (DiagnosticReport)  
The measured results at each sampling interval are encapsulated by the **StabilityStudyIntervalReport** profile on DiagnosticReport. Each IntervalReport carries a `PullIntervalExtension` to indicate the timepoint (e.g. “3 months”), a `qualitySpecification` extension to capture the test method specification, and links to Observation resources for each analyte result. This separation of data from design preserves a clean boundary: PlanDefinition for intent, ResearchStudy for study metadata, and DiagnosticReport for data.

#### **StabilityGroups** (Group)  
For reduced-design studies (Bracketing and Matrixing per ICH Q1D), a **StabilityGroups** profile (on Group) provides a logical grouping of the relevant SubStudy instances. A StabilityGroups resource names the grouping (e.g. “Bracketing – High & Low Temperatures”), enumerates its design type, and lists the member SubStudies. In a Bracketing scenario you would have two SubStudies (high- and low-extremes) and one Group that brings them together, whereas in Matrixing you might select a subset of condition combinations and group those SubStudies accordingly.

#### Summary  
In summary, an eCTD stability submission involves: creating one `EctdCompositionSP7383` Composition; adding multiple **StabilityStudy** instances (each with a classifier for Standard, Photostability, Cycled, Bracketing, or Matrixing); attaching each study’s **StabilityStudyProtocol**; breaking each study into **StabilitySubStudy** arms; capturing results in **StabilityStudyIntervalReport** resources; and—where needed—assembling reduced-design SubStudies into **StabilityGroups**. This layered architecture aligns precisely with ICH Q1A(R2), Q1B, and Q1D definitions, ensuring regulatory-compliant submission and clear traceability from study intent through execution to results.  
 
#### **Complex Studies**

There is no profile for **Complex Studies** as they are a combination of any of features of these special study types. Classify the study as Complex when it uses a combination of Cycled, Bracketing or Matrixing in Testing. 

- Any combination of two or more of the other types, for example cycled testing that takes adantage of matrix testing.
- The required elements for any of the profiles used to report Complex studies will be required. For exmaple, a cycled matrixed testing scheme would require both CycledTestingPlanDefinition and MatrixedStudyEvidence.

#### **Requiements Summary**
| Study type      | ICH ref   | Protocol actions                                                | Sub-studies                                         | Interval reports                        | Grouping                                    |
|-----------------|-----------|-----------------------------------------------------------------|------------------------------------------------------|-----------------------------------------|---------------------------------------------|
| **Standard**    | Q1A(R2)   | Actions for long-term, intermediate, accelerated timepoints     | 3 sub-studies: one per storageCategory slice         | 1–n IntervalReports per sub-study       | n/a                                         |
| **Photostability** | Q1B     | Actions specifying ICH Q1B light-exposure conditions             | 1 sub-study for photostability cell                  | IntervalReports at required intervals   | n/a                                         |
| **Cycled**      | –         | Actions defining each cycle (e.g. freeze-thaw cycles)           | 1 sub-study per cycle, each with its own period      | Reports per cycle                       | optional via StabilityGroups                |
| **Bracketing**  | Q1D       | May reuse Standard protocol actions but only extremes           | 2 sub-studies (high & low extremes)                  | Reports for each extreme                | Group both in a StabilityGroups instance    |
| **Matrixing**   | Q1D       | Protocol actions as defined in Q1D for selecting subset         | Sub-studies for each selected cell in the matrix     | Reports per cell                        | Group all selected in StabilityGroups       |


### Representation in FHIR

The domain concepts of Stability Data are represented in FHIR in this IG section. Below is a high-level FHIR resource mapping to guide the understanding of how the domain concepts are represented using profiles on FHIR resources. Detail study of the profiles and each of the resources will be needed to develop a deeper understanding of this Stability Data FHIR bundle profile. Concepts that are key to this domain include the following:

* Stability Study
  * [Stability Study](StructureDefinition-pq-stability-study.html) (StabilityStudy) profile on the [ResearchStudy](https://hl7.org/fhir/R5/researchstudy.html) resource
  * [Stability Sub-Study](StructureDefinition-pq-stability-sub-study.html) (StabilitySubStudy) profile on the [ResearchStudy](https://hl7.org/fhir/R5/researchstudy.html) resource

  * [Stability Study Interval Report](StructureDefinition-pqcmc-stability-study-interval-report.html) (StabilityStudyIntervalReport) profile on the 
  [DiagnosticReport](https://hl7.org/fhir/R5/diagnosticreport.html) resource
  * PlanDefinition
  * [StabilityStudyProtocol](StructureDefinition-pq-stability-study-protocol.html) (StabilityStudyProtocol) profile on the[PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) resource
  * [CycledTestingPlanDefinition](StructureDefinition-cycled-testing-plan.html) (CycledTestingPlanDefinition) profile on the[PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) resource
* roup
  * [StabilityGroups](StructureDefinition-stability-groups.html) (StabilityGroups) profile on the [Group](http://hl7.org/fhir/R5/group.html) resource
*Evidence
  * [Drug Product Manufactured Instance](StructureDefinition-pqcmc-drug-product-instance.html) (DrugProductBatch) profile on the [Medication](https://hl7.org/fhir/R5/medication.html) resource
* Substance Batch
* Substance
  * [Drug Substance Manufactured Batch](StructureDefinition-pqcmc-drug-substance-batch.html) (DrugSubstanceBatch) profile on the [Substance](https://hl7.org/fhir/R5/substance.html) resource
* Observations
  * [Result Observation](StructureDefinition-pq-result-observation.html) (ResultObservation) profile on the [Observation](https://hl7.org/fhir/R5/observation.html) resource
* Related Organizations
* Drug Product
    * [Drug Product Handle](StructureDefinition-pqcmc-drug-product-handle.html) (DrugProductHandle) profile on [MedicinalProductDefinition](http://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* API 
    * [Substance Definition Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](http://hl7.org/fhir/R5/substancedefinition.html) resource
* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the<span style="text-decoration:underline;"> [Organization](http://hl7.org/fhir/R5/organization.html) Resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.S.7.3 and 3.2.P.8.3 Profile Map

<div width="1200px">{%include Stability.svg%}</div>

### Usage Patterns

Not presently defined.  Will complete after examples are done.

### Examples

This image demonstrates a TBD. The XML can be found on the [Artifacts](artifacts.html) page and does not contain the narrative in the image, rather it contains the narrative generated for all examples by the IG publisher program. It is on the artifacts page and in the Bundle profile.