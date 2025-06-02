### Domain Overview

The Stability Data bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.S.7.3 and 3.2.P.8.3 folder content to the FDA. The contents of this section include the results associated with the evaluation of the drug substance or drug product over time based on the stability study, including the pull date, the amount of th ebatch was stored in the climatic chamber, and identification of the facility where the evaluation occurred.  It captures:

- the study design (planned storage conditions, container/closure, time‑points, tests)
- the execution context (pull date, batch quantity placed in the chamber, testing facility)
- the results for each batch or grouped product under the study design

Stability studies are an essential part of pharmaceutical development, regulatory submission, and lifecycle management. Their purpose is to confirm that drug products and drug substances maintain their quality, efficacy, and safety throughout their intended shelf life under various environmental conditions.

Stability testing confirms that drug substances and finished products maintain quality, efficacy, and safety throughout their shelf life. Global guidance comes from the ICH Q1‑series—especially Q1A(R2), Q1B, Q1C, Q1D, and Q1E—covering standard, accelerated, in‑use, bracketing, matrixed, photostability, and cycled studies. The profiles in this model implement those expectations with FHIR R6 resources, enabling interoperability and automated validation.

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

These profiles should consider data requirements, relationships, validation, and user workflows. Understanding the scientific and regulatory context—such as the implications of bracketing, matrixing, and cycled testing—will help build applications that not only produce valid FHIR resources but also support real-world regulatory and scientific needs.  Each Stability Data bundle contains the results associated with a single maain stability study, which contains an evaluation of a multiple sub-studies on batches under multiple conditions of an active substance or a single batch of product. However, it is possible that the Stability Data bundle contains only one photo-stability study.  

Profiles are not used in isolation:

* StabilityStudy profile reference design plans.
* **DrugProductBatch / DrugSubstanceBatch**: Provide the manufacturing and packaging context for the material being tested.
* **StabilityGroups**: When matrixing or bracketing designs are used, ResultObservations may be associated with groupings of products or strengths rather than individual batches.
* StabilitySubStudy references CycledTestingPlanDefinition.

* **CycledTestingPlanDefinition**: This PlanDefinition-based profile specify actions and goals that define the testing sequence and objectives in cycled studies.
* ResultObservation depends on linking to DrugProductBatch or DrugSubstanceBatch for container clousre information.  The ResultObservation profile is detailed on [Batch Analyses (3.2.S.4.4 & 3.2.P.5.4)](eCTDSP4454.html).

### Implementer‑Focused Model Map

Profiles are not used in isolation; the diagram supplied in the PlantUML file shows every relationship.

| Category                | Profile or Extension                         | Role in the bundle                                                                 |
|------------------------|----------------------------------------------|------------------------------------------------------------------------------------|
| Study definition        | StabilityStudy                               | Top‑level study record; references StabilityStudyProtocol and one or more StabilitySubStudy instances. |
|                         | StabilityStudyProtocol                       | PlanDefinition template listing storage conditions, containers, time‑points, and tests. |
| Sub‑studies             | StabilitySubStudy                            | A single design variant (e.g., matrixed, cycled). Points to design evidence or plan. |
| Special‑study artefacts | CycledTestingPlanDefinition (PlanDefinition) | Stepwise procedure for cycled (freeze‑thaw, light–dark, etc.) studies.             |
| Results & reports       | StabilityStudyIntervalReport                 | Consolidates ResultObservation resources for one pull interval.                   |
| Product context         | DrugProductBatch / DrugSubstanceBatch (external) | Identify the material under test.                                                |
|                         | StabilityGroups                              | Logical grouping of products or strengths for matrixed & bracketing designs.      |
| Key extensions          | PQCMCStabilitySubStudyFocusAndObjective       | Adds focus / objective metadata to a sub‑study; may reference other artefacts.    |
|                         | PQCMCEvidenceProductReference                | Connects an Evidence profile to a specific DrugProductHandle.                     |
|                         | PQCMCStabilityGroupsMedicationMember         | Links a Medication or Substance to StabilityGroups.                              |
|                         | PullIntervalExtension                        | Declares scheduled or unscheduled pull intervals; binds to PqcmcIntervalDescriptionCodeTerminology. |

> **Note**: The StabilityStudyProtocol is refernced from the main study once and  referenced from every sub‑study. This avoids duplication and keeps bundles small.

### Sub‑Study Artefacts in Depth
Applications must support selection, definition, and linkage of these plans to specific StabilitySubStudy instances. Different profiles capture study design intentions.  The special study types are detailed here:

#### The CycledTestingPlanDefinition Profile

The **CycledTestingPlanDefinition** profile specializes the FHIR **PlanDefinition** resource to document and operationalize **cycled stability studies**. Cycled studies subject the product to **repeated environmental changes** such as freeze-thaw, high-humidity exposure, or temperature cycling to simulate real-world stress conditions.

##### Key Purposes:
1. **Define Cycle Details:**
   - Specifies **how many cycles** are performed.
   - Describes **the environmental conditions** for each cycle (e.g., -20°C for 24 hours, then 25°C/60% RH for 24 hours).
   - Provides **timing and sequencing** of actions.

2. **List Tests After Each Cycle:**
   - Defines the **specific tests** (e.g., potency, appearance, particulate matter) performed after each cycle or at the end of the cycling sequence.

3. **Link to Stability Study:**
   - Referenced from the **StabilityStudy** as the procedural definition for conducting cycled testing.

4. **Guide Execution or Interpretation:**
   - Enables automated or manual execution of the procedure by providing a structured, machine-readable definition.
   - Supports downstream **data interpretation** by documenting the intended procedure.

##### Example Usage:
- You design a **freeze-thaw study** involving **3 cycles** where the product is frozen at -20°C for 24 hours and then thawed at 25°C for 24 hours.
- You create a **CycledTestingPlanDefinition** instance that:
  - Details each freeze and thaw step.
  - Lists tests like **potency and appearance** to be performed in each cycle.
  - Links back to the parent **StabilityStudy**.

##### Importance:
- Provides clear **procedural documentation** for reproducibility.
- Supports **regulatory transparency** on how cycled tests were performed.
- Enables **automated execution or validation** by downstream systems.

#### **Complex Studies**

There is no profile for **Complex Studies** as they are a combination of any of features of these special study types. Classify the study as Complex when it uses a combination of Cycled, Bracketing or Matrixing in Testing. 

- Any combination of two or more of the other types, for example cycled testing that takes adantage of matrix testing.
- The required elements for any of the profiles used to report Complex studies will be required. For exmaple, a cycled matrixed testing scheme would require both CycledTestingPlanDefinition and MatrixedStudyEvidence.


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