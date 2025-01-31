### Domain Overview

The Product Batch Formula bundle profile provides a mechanism for the industry to submit Module 3 CTD 3.2.P.3.2 folder content to the FDA. The contents of this section include the amount of material in a specific type of batch, in total and broken down by the components and constituents that constitute the drug product. Please refer to the Domain Overview Section 7.1 of the [Description and Composition of Drug Product (3.2.P.3.1)] (eCTD32P10.html) for explanation of Components and Constituents.

### Implementer Instructions

* Each 32P32 bundle is for a single drug product.
* All batch formulas for a drug product are contained in a single bundle.

### Representation in FHIR

* Drug Product
    * [Batch Formula Drug Product Identification](StructureDefinition-pqcmc-batch-formula-product.html) (BatchFormulaMedicinalProduct) profile on [MedicinalProductDefinition](https://hl7.org/fhir/R5/medicinalproductdefinition.html) resource
* Batch Formula
    * [Drug Product Batch Formula](StructureDefinition-pqcmc-product-batch-formula.html) (BatchFormula) profile on [ManufacturedItemDefinition](https://hl7.org/fhir/R5/manufactureditemdefinition.html) resource
* Batch Formula Constituent
    * [Drug Product Batch Formula Ingredient](StructureDefinition-pqcmc-dp-ingredient.html) (DrugProductIngredient) profile on [Ingredient](https://hl7.org/fhir/R5/ingredient.html) resource
    * [Drug Substance Handle](StructureDefinition-pqcmc-routine-drug-substance.html) (SubstanceDefinitionHandle) profile on [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource
    * [Excipient Drug Substance](StructureDefinition-pqcmc-excipient.html) (ExcipientRaw) profile on [SubstanceDefinition](https://hl7.org/fhir/R5/substancedefinition.html) resource
* Related Organizations
    * [Basic Organization](StructureDefinition-cmc-organization.html) (CodedOrganization) profile on the [Organization](http://hl7.org/fhir/R5/organization.html) resource

Note: profile computable names (in parenthesis above) map to names in the Profile Map below.

### CTD 3.2.P.3.2 Profile Map

<div>{%include BatchForm.svg%}</div>

### Usage Patterns
#### Single vs. Multiple component in a Batch Formula
The batch formula structure varies at ManufacturedItemDefinition.component. Two XML snippets shown here represent different types of drug products with distinct structures for their ingredients.  The first snippet represents a drug product that is a **solution** with a set of **ingredients** specified as **constituents**. This applies to a single layer tablet also. The second snippet represents a **layered pill** drug product with multiple **layers** and **constituents** within each layer.

* **Single Set of Ingredients**: The component element describes a solution, where the main ingredient is provided as a total amount (53.2 kilograms). Each constituent element inside this component lists individual ingredients that contribute to the overall composition, with both **absolute amounts** (in grams, kilograms) and **percentages** for each.
* **No Layering Information**: There is no reference to layers in this product. Instead, it simply lists the amounts of ingredients and their percentages, like:
    * Ingredient 1: 25.42g (0.0477%).
    * Ingredient 2: 20.5g (0.0385%).
    * And so on.
* **Ingredient References**: Each constituent includes a hasIngredient element with a reference to an external identifier (UUID), indicating the ingredient’s identity.

**First XML Snippet: Solution**

   	      <component>
          <type>
            <coding>
              <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
              <code value="C42986"/>
              <display value="Solution"/>
            </coding>
          </type>
          <amount>
            <value value="53.2"/>
            <unit value="kilogram"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="kg"/>
          </amount>
          <amount>
            <value value="100"/>
            <unit value="percent"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="%"/>
          </amount>
          <constituent>
            <amount>
              <value value="25.42"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="0.0477"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:1c1a2a23-1fd7-4487-9682-49877f9f9f77"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="20.5"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="0.0385"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:12cce82f-8595-4860-b7ca-06c9ec0327f2"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="5"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="0.0094"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:45eb4f05-83d9-4819-bb60-96c7c5ce2b76"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
           ...
          </constituent>
          <property>
            <type>
              <text value="Product Part Identifier"/>
            </type>
            <valueCodeableConcept>
              <text value="solution"/>
            </valueCodeableConcept>
          </property>
        </component>


* **Multiple Layers**: The component elements describe two layers: the "Purple Layer" and "LayerB". Each layer is represented as a distinct component and includes details about its total amount (in grams and percentage). Each layer also has a set of constituent ingredients, much like the first XML, but with additional complexity:
    * **Layer-Specific Ingredients**: Each constituent within the layer has an associated location element that specifies whether the ingredient is part of the **Active Core**, **Intragranular**, or **Extragranular** part of the layer. This shows the structure of ingredients within each layer.
    * **Product Part Identifier**: The property element indicates the layer's name or identity, such as "Purple Layer" or "Example1Drug_LayerB."
    * **Layer Percentages**: The percentages of each ingredient are still listed, but they are specific to each layer, with ingredients clearly marked for their respective layers.

**Second XML Snippet: Layered Pill Drug Product**

        <component>                        <!--FIRST COMPONENT  -->
          <type>
            <coding>
              <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
              <code value="C66831"/>
              <display value="Layer"/>
            </coding>
          </type>
          <amount>
            <value value="925.97"/>
            <unit value="gram"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="g"/>
          </amount>
          <amount>
            <value value="38.55"/>
            <unit value="percent"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="%"/>
          </amount>
          <constituent>
            <amount>
              <value value="400"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="43.1"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203881"/>
                <display value="Active core/granulate"/>
              </coding>
              <text value="Purple Layer"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:d4713a90-38d1-49e5-a977-78c63e518562"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="524.01"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="56.59"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203883"/>
                <display value="Intragranular"/>
              </coding>
              <text value="Purple Layer"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:9973ba9a-b257-425a-8fb9-6dcfe379ca08"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="203.71"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="22"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203882"/>
                <display value="Extragranular"/>
              </coding>
              <text value="Purple Layer"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:4e394a0c-4b25-492e-aac7-0faf121ffc4f"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="305.57"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="33"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203882"/>
                <display value="Extragranular"/>
              </coding>
              <text value="Purple Layer"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:95648837-ec81-42d9-970c-eac390f2f604"/>
              </reference>
            </hasIngredient>
          </constituent>
          <property>
            <type>
              <text value="Product Part Identifier"/>
            </type>
            <valueCodeableConcept>
              <text value="Purple Layer"/>
            </valueCodeableConcept>
          </property>
        </component>
        <component>                         <!--SECOND COMPONENT  -->
          <type>
            <coding>
              <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
              <code value="C66831"/>
              <display value="Layer"/>
            </coding>
          </type>
          <amount>
            <value value="1476.03"/>
            <unit value="gram"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="g"/>
          </amount>
          <amount>
            <value value="61.45"/>
            <unit value="percent"/>
            <system value="http://unitsofmeasure.org"/>
            <code value="%"/>
          </amount>
          <constituent>
            <amount>
              <value value="600.01"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="40.65"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203881"/>
                <display value="Active core/granulate"/>
              </coding>
              <text value="Example1Drug_LayerB"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:fbd464cc-2511-4a3a-b058-3cec4fffd14f"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="876.02"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="59.35"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203883"/>
                <display value="Intragranular"/>
              </coding>
              <text value="Example1Drug_LayerB"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:9973ba9a-b257-425a-8fb9-6dcfe379ca08"/>
              </reference>
            </hasIngredient>
          </constituent>
          <constituent>
            <amount>
              <value value="369.01"/>
              <unit value="gram"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="g"/>
            </amount>
            <amount>
              <value value="25"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203882"/>
                <display value="Extragranular"/>
              </coding>
              <text value="Example1Drug_LayerB"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:95648837-ec81-42d9-970c-eac390f2f604"/>
              </reference>
            </hasIngredient>
          </constituent>
          <property>
            <type>
              <text value="Product Part Identifier"/>
            </type>
            <valueCodeableConcept>
              <text value="Example1Drug_LayerB"/>
            </valueCodeableConcept>
          </property>
        </component>

**Key Differences in Structure:**

1. **Layered Composition**: The second snippet uses multiple component elements to represent **distinct layers** of a pill, with ingredients organized within those layers. In contrast, the first snippet represents a **single ingredient set** without such layering.
2. **Location Information**: The second snippet includes location elements within each constituent to specify the part of the layer the ingredient is associated with (Active Core, Intragranular, Extragranular), while the first snippet does not have this level of detail.
3. **Additional Layer Metadata**: The second snippet contains more specific metadata about each layer (e.g., "Purple Layer," "LayerB") through the property element and location fields. The first snippet focuses only on ingredients and their quantities without referencing any layers.
4. **Ingredient Breakdown**: Both snippets list ingredients with their respective amounts and percentages. However, the second snippet organizes ingredients into a layered structure, while the first treats all ingredients as part of a singular mixture.

In summary, the second XML snippet represents a more complex, layered pill structure with additional metadata about the location and identity of each layer and its constituents. The first snippet is a simpler structure, representing a solution with ingredients described at a higher level of abstraction.

#### The Product Batch Ingredient Extension

This extension is used to capture the overage amount  and reason. Overage refers to an intentional extra quantity of an active ingredient or excipient added to a drug product batch, beyond the amount required to achieve the labeled dosage. The overage compensates for potential losses during manufacturing, such as ingredient degradation, evaporation, or losses in processing. It is essentially a "buffer" to ensure that the final product meets the required strength or concentration.

**Reasons for Overages**

There are several reasons why overages are used in drug manufacturing, including:

1. **Ingredient Losses During Manufacturing**: Some active pharmaceutical ingredients (APIs) may be lost during processing due to volatility, instability, or other factors like powder dusting, filtration losses, etc.
2. **Ingredient Degradation**: Certain APIs may degrade over time (e.g., due to temperature or light), so a small overage is added to ensure the potency of the drug remains within the required specification at the time of use.
3. **Manufacturing Variability**: Due to variations in equipment, environment, or human error, there could be losses during mixing, filling, or packaging. The overage ensures that the final batch has the correct concentration.
4. **Stability**: Some drug products may lose potency during storage, especially if exposed to environmental factors (like humidity or temperature). Adding overage accounts for any potential loss in activity over time.
5. **Regulatory Requirements**: Regulatory agencies may require overages for certain types of drugs, particularly where precise dosing is critical (e.g., injectables, oral solids). It is often included in the batch formula based on regulatory guidance or historical data.

**Example of Overages in a Drug Product Batch Record**

As an example of a tablet manufacturing batch record for a drug product where the active ingredient (e.g., "Acetaminophen") is required to be 500 mg per tablet. To account for potential losses and ensure potency, an overage of 2% is added.

**Batch Formula Overage Example:**

* **Target Dose per Tablet**: 500 mg
* **Overage**: 2% of 500 mg = 10 mg

Thus, the batch formula for the **Acetaminophen** tablet would include **510 mg** of the active ingredient per tablet to ensure that after manufacturing losses, each tablet contains the correct 500 mg of the active ingredient.

Here’s how this would be reflected in the ManufacturedItemDefinition.component.constituent:

             <constituent>
            <extension url="http://hl7.org/fhir/us/pq-cmc-fda/StructureDefinition/pq-overage-extension">
              <extension url="percent">
                <valueDecimal value="0.02"/>
              </extension>
              <extension url="justification">
                <valueMarkdown value="Manufacturing losses, degradation over time"/>
              </extension>
            </extension>
            <amount>
              <value value="510"/>
              <unit value="milligram"/>  
              <system value="http://unitsofmeasure.org"/>
              <code value="mg"/>
            </amount>
            <amount>
              <value value="35"/>
              <unit value="percent"/>
              <system value="http://unitsofmeasure.org"/>
              <code value="%"/>
            </amount>
            <location>
              <coding>
                <system value="http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl"/>
                <code value="C203882"/>
                <display value="Extragranular"/>
              </coding>
              <text value="ER Layer"/>
            </location>
            <hasIngredient>
              <reference>
                <reference value="urn:uuid:85642235-ec81-42d9-970c-eac390f2f604"/>   <!--REFERENCE TO ACETAMINOPHEN  -->
              </reference>
            </hasIngredient>
          </constituent>

In this example:

* The **active ingredient** is **Acetaminophen**.
* The **dosage strength** is 500 mg, but **510 mg** is added to account for the **2% overage**.
* The reason for the overage is listed as **"Manufacturing losses, degradation over time"**.

### Examples

This example demonstrates the batch formula for a commercial batch of a drug product. This image displays the narrative as inserted in the composition text element generated by the narrative transform. The XML can be found on the Artifacts page. The XML file with the publisher narrative is on the artifacts page and in the Bundle profile. [49d3b79e-b436-a242-93ba-b706b4364ab2](Bundle-49d3b79e-b436-a242-93ba-b706b4364ab2.html)

Another batch formula example is  [a242b79e-b706-49d3-93ba-b4364ab2baa3](Bundle-a242b79e-b706-49d3-93ba-b4364ab2baa3.html)


{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="1200px" src="BatchFormula.png" />

</figure>

{::options parse_block_html="true" /}