### Bundle Overview

<p> The Description and Composition of the Drug Product is a complete replacment for all relevant content.  Submit a separeate bundle if there is more than one dosage form for the drug product. A description of the drug product and its composition should be provided. 
</p><p>
The information provided should include a narative description the product, its dosage form and a description of accompanying reconstitution diluent(s).  The type of container and closure used for the dosage form and accompanying reconstitution diluent, if applicable should be provided.  The container for the diluent if applicable should be contained in the diluent bundle. Provide all required codes for the containter and clousre.
</p><p>
For a drug product supplied with reconstitution diluent(s), the information on the diluent(s) should be provided in a separate part “P” section. Accordingly, the information on the diluent(s) should be provided in a separate FHIR bundle file to be included.  
</p><p>
Composition is usually provided as a list of all components of the dosage form, and their amount on a perunit basis (including overages, if any) the function of the components, and a reference to their quality standards (e.g., compendial monographs or manufacturer’s specifications) per M4Q(R1).  Each of these components will be an Ingredient resource conforming to the requirements of the DrugProductCompoent profile. The diagram in section 2.2 illustates the profiles required in this bundle. Section 2.3 provides an example Description and Composition bundle.
</p><p>
Overfill information (Justification for overfill belongs in the  eCTD32P32 FHIR bundle).
Reference ICH guidances Q6A and Q6B.
</p>
### eCTD Folder 3.2.P.1.0 Profile Map
<div>{%include ProdDesComp.svg%}</div>
### Example 3.2.P.1.0 Bundle

