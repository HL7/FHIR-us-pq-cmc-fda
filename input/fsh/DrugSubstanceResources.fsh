Extension: StrengthOperatorExtension
Id: pq-strength-operator-extension
Title: "Strength Operator"
Description: "A mathematical symbol that denotes equality or inequality between two values."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PqcmcStrengthOperatorTerminology (required)

Extension: StrengthTypeExtension
Id: pq-strength-type-extension
Title: "Strength Type (for API)"
Description: "A physical (content) of activity measurement of the strength of the active ingredint.."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from PqcmcStrengthTypeTerminology (required)

Extension: ContentPercentExtension
Id: pq-content-percent-extension
Title: "Content (%)"
Description: "The percentage of the component in the drug product."
* value[x] 0..1 MS
* value[x] only decimal

Extension: ProductBatchIngredientExtension
Id: pq-product-batch-ingredient-extension
Title: "Product Batch Ingredient Extension"
Description: "Extension for measurement properties for ingredients in the batch formla.."
* extension contains
  overagePercent 0..1 MS and
  overageJustification 0..1 MS
* extension[overagePercent].value[x] only decimal
* extension[overagePercent].value[x] ^short = "Overage Percent"
* extension[overagePercent].value[x] ^definition = """Overage is the percent of a drug substance in excess of the label claim to compensate for the loss, such as manufacturing or other.
Note: This is not for stability loss, and generally not permitted.
Example: 3% overage of drug that has a label claim of 10mg of active (API) - the formulation would have 10.3 mg. A batch formula for 100 kg would contain 103 kg of API.
"""
* extension[overageJustification].value[x] only markdown
* extension[overageJustification].value[x] ^short = "Overage Justification"
* extension[overageJustification].value[x] ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product [Source: SME Defined]"

Profile: DrugSubstance
Parent: SubstanceDefinition
Id: pqcmc-DrugSubstance
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterization."
* . obeys cmc-structure-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* classification 0..1 MS
* classification from EVMPDSubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances  at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* molecularWeight ^definition = "The average mass of a molecule of a compound compared to ¹/₁₂ the mass of carbon 12 and calculated as the sum of the atomic weights of the constituent atoms. [Source: Merriam Webster]"
* molecularWeight.amount 1..1 MS
* molecularWeight.amount.value 1..1 MS
* molecularWeight.amount.unit 1..1 MS
* molecularWeight.amount.unit ^short = "Molecular Weight UOM"
* molecularWeight.amount.unit ^definition = """The labeled unit of measure for the molecular weight. [Source: Adapted for NCI EVS C117055]
 """
* molecularWeight.amount.code 1..1 MS
* molecularWeight.amount.code from  PqcmcUnitsMeasureTerminology

* structure 0..1 MS
* structure obeys cmc-substance-structure-graphic-required
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Anlaysis Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance.  Required for Small Molecules.  [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code 0..1 MS
* code obeys cmc-when-unii-required
* code.code 0..1 MS
* code.code ^short = "UNII"
* code.code ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
//BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
//BR: isbt Applicable to blood products.
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice based on value pattern"
* name contains
    sub 0..1 MS and
    brand 0..1 MS and
    comn 0..1 MS and
    gsrs 0..1 MS and
    cas 0..1 MS and
    inn 0..1 MS and
    usan 0..1 MS and
    iupac 0..1 MS and
    isbt 0..1 MS and
    comp 0..1 MS
* name[sub].name  MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type  MS
* name[sub].type  = PqcmcProductIngredientNameType#138 "Generic"

* name[brand].name  MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type  MS
* name[brand].type  = PqcmcProductIngredientNameType#137 "Brand" 

* name[comn].name  MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type  MS
* name[comn].type  = PqcmcProductIngredientNameType#139 "Common"

* name[gsrs].name  MS
* name[gsrs].name ^short = "GSRS Accepted"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type  MS
* name[gsrs].type  = PqcmcProductIngredientNameType#141 "GSRS Accepted"

* name[cas].name  MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
 """
* name[cas].type MS
* name[cas].type  = PqcmcProductIngredientNameType#CAS "CAS Number"

* name[inn].name  MS
* name[inn].name ^short = "INN"
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/]
Example: Paracetamol
"""
* name[inn].type MS
* name[inn].type  = PqcmcProductIngredientNameType#INN "INN"

* name[usan].name  MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined]
Example: acetaminophen
 """
* name[usan].type  = PqcmcProductIngredientNameType#USAN "USAN"

* name[iupac].name MS
* name[iupac].name ^short = "IUPAC Name"
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined]
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type  MS
* name[iupac].type  = PqcmcProductIngredientNameType#IUPAC "IUPAC"

* name[isbt].name  MS
* name[isbt].name ^short = "ISBT 128"
* name[isbt].name ^definition = """ISBT 128: It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
 """
* name[isbt].type  = PqcmcProductIngredientNameType#ISBT "ISBT 128"

* name[comp].name  MS
* name[comp].name ^short = "Company Code"
* name[comp].name ^definition = """Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type = PqcmcProductIngredientNameType#Company "Company ID/Code"

* name.preferred 0..1 MS
* name.preferred ^short = "???True when the name type is Substance Name???"
* name.preferred obeys cmc-name-preferred
* relationship 0..* MS
* relationship obeys cmc-substance-relationship
* relationship.substanceDefinitionReference only Reference(ImpuritySubstance or PolymorphicForm or ComponentSubstance)
* relationship.type.text
* relationship.type.text ^short = "Values: 'Polymorph', 'Raw Material', and 'Impurity'"
//* Is a rule set required so that if reference is PolymorphicForm text is "Polymorph",e if ComponentSubstance then text is "Raw Material" DrugSubstanceImpurity then text is "Impurity"

Profile: ImpuritySubstance
Parent: SubstanceDefinition
Id: pqcmc-DrugSubstanceImpurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity."
* . obeys cmc-structure-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* classification 1..* MS
* classification ^short = "Impurity Classification"
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined]
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables.
"""
* classification from PqcmcImpurityClassificationTerminology
* structure 0..1 MS
* structure obeys cmc-representation-or-document
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Drug Substance Impurity Method Type| Drug Product Impurity Method Type"
* structure.representation.type.text ^definition = "The technique used to elucidate the structure or characterization of the impurity. [Source: SME Defined]"
* structure.representation.type from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Impurity Analysis Graphic | Impurity Analytical Instrument Data File | Impurity Chemical Structure Data File"
* structure.representation.representation ^definition = """Impurity Chemical Structure Data File: A machine readable representation of the structure of the chemical. [Source: SME Defined]
Examples: Structured Data File (SDF), MDL MOLFILE, IUPAC Chemical Identifier (InChI) file.

Impurity Analytical Instrument Data File: The transport format for data exchange. [Source: SME Defined]
Example: JCAMP, ADX, ADF.

Impurity Chemical Structure Data File: A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
"""
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Impurity Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the impurity. [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code 0..1 MS
* code obeys cmc-when-unii-required
* code.code 0..1 MS
* code.code ^short = "UNII"
* code.code ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice based on value pattern"
* name contains
    sub 0..1 MS and
    comn 0..1 MS and
    gsrs 0..1 MS 
* name[sub].name  MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type  MS
* name[sub].type  = PqcmcProductIngredientNameType#138 "Generic"

* name[comn].name  MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type  MS
* name[comn].type  = PqcmcProductIngredientNameType#139 "Common"

* name[gsrs].name  MS
* name[gsrs].name ^short = "GSRS Accepted"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type  MS
* name[gsrs].type  = PqcmcProductIngredientNameType#141 "GSRS Accepted"

Profile: PolymorphicForm
Parent: SubstanceDefinition
Id: pqcmc-PolymorphicForm
Title: "Polymorphic Form"
Description: "Alternate structure present in the drug substance"

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"	
* structure 0..1 MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterization Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS
* structure.representation 1..* MS
* structure.representation obeys cmc-representation-or-document
* structure.representation.type 0..1 MS
* structure.representation.type ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined]
Examples: SMILES, MOLFILE, HELM, etc.
"""
* structure.representation.type from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.representation 0..1 MS
* structure.representation.representation ^short = "Drug Substance Structural Representation"
* structure.representation.representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
Examples: SDF, MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
 """
* structure.representation.document 0..1 MS
* structure.representation.document only Reference(Base64DocumentReference)
* name.name  MS
* name.name ^short = "Polymorphic Form Identification"
* name.name ^definition = """The designation of the polymorphs present in the drug substance. [Source: SME Defined]
Example: Polymorph A
"""

Profile: ComponentSubstance
Parent: SubstanceDefinition
Id: pqcmc-ComponentSubstance
Title: "Component Substance"
Description: "Any raw material intended for use in the manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."
* identifier 0..1
* identifier ^short = "optional user designated identifier"	
* grade 1..1
* grade ^short = "Quality Standard"
* grade  ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade from PqcmcQualityBenchmarkTerminology
* manufacturer 0..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* structure MS
* structure obeys cmc-representation-or-document
* structure.representation 1..*
* structure.representation.representation 0..1 MS
* structure.representation.format 0..1
* structure.representation.format.text
* structure.representation.document 0..1 MS
* structure.representation.document ^short = "Substance Structure Graphic"
* structure.representation.document ^definition = "A pictorial representation of the structure of the drug substance.  Required for Small Molecules.  [Source: SME Defined]"
* structure.representation.document only Reference(Base64DocumentReference)
* code 0..1 MS
* code obeys cmc-when-unii-required
* code.code 0..1 MS
* code.code ^short = "UNII"
* code.code ^definition =  """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice based on value pattern"
* name contains
    sub 0..1 MS and
    brand 0..1 MS and
    comn 0..1 MS and
    gsrs 0..1 MS 
* name[sub].name  MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined]
Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory.
"""
* name[sub].type  MS
* name[sub].type  = PqcmcProductIngredientNameType#138 "Generic"

* name[brand].name  MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """TDB [Source: SME Defined]
"""
* name[brand].type  MS
* name[brand].type  = PqcmcProductIngredientNameType#137 "Brand" 

* name[comn].name  MS
* name[comn].name ^short = "Common"
* name[comn].name ^definition = """TDB [Source: SME Defined]
"""
* name[comn].type  MS
* name[comn].type  = PqcmcProductIngredientNameType#139 "Common"

* name[gsrs].name  MS
* name[gsrs].name ^short = "GSRS Accepted"
* name[gsrs].name ^definition = """TDB [Source: SME Defined]
"""
* name[gsrs].type  MS
* name[gsrs].type  = PqcmcProductIngredientNameType#141 "GSRS Accepted"

* sourceMaterial 1..1 MS
* sourceMaterial.type 0..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 0..1 MS
* sourceMaterial.genus.coding 0..0
* sourceMaterial.genus.text 1..1
* sourceMaterial.genus.text ^short = "Source Organism"
* sourceMaterial.genus.text ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species 0..1 MS
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species.coding 0..0
* sourceMaterial.species.text 1..1
* sourceMaterial.part 0..1 MS
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part ^definition = """A fragment of the source organism. [Source: SME Defined]
Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal """
* sourceMaterial.part.coding 0..0
* sourceMaterial.part.text 1..1
* sourceMaterial.countryOfOrigin 0..1 MS
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 0..0
* sourceMaterial.countryOfOrigin.coding from genc-country-codes
* sourceMaterial.countryOfOrigin.text 1..1 MS

Profile: DrugProductComponent
Parent: Ingredient
Id: pqcmc-Component
Title: "Drug Product Component"
Description: "The amount details about the drug product components to define the product composition in a product unit. Use composition."

* .extension contains pq-additional-info-extension named additional-info 0..1 MS
* .extension[additional-info] ^short = "Drug Product Component Additional Information"
* .extension[additional-info] ^definition = """A placeholder for providing any comments that are relevant to the component. [Source: SME Defined]
Examples: removed during process, adjusted for loss on drying, etc.
"""
* .extension contains StrengthTypeExtension named strengthtype 0..1 MS
* . obeys cmc-ingredient-functions
* status.code
* for only Reference(DrugProductDescription)
* for ^short = "Reference to MedicinalProductDefinition"
* role.coding MS
* role.coding ^short = "Drug Product Component Function Category"
* role.coding ^definition = """A classification that identifies the higher level purpose of that material. [Source: SME Defined]
Example: Active Ingredient, Inactive Ingredient, Adjuvant.
"""
* role.coding from PqcmcDrugProductComponentFunctionCategoryTerminology
* function 0..1 MS
* function.coding 0..1 MS
* function.coding ^short = "Drug Product Component Function"
* function.coding ^definition = """A sub-classification of components identifying its purpose/role in the drug product. [Source: SME Defined]
Examples: Filler, Surfactant.
"""
* function.coding from PqcmcExcipientFunctionTerminology
* function.text 0..1 MS // only value = 'NA'
* group 0..1 MS
* group ^short = "Component Group"
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* substance.code only Reference(ComponentSubstance)
* substance.strength 1..1 MS
* substance.strength obeys cmc-strength-type-cases
* substance.strength obeys cmc-arbitrary-unit
* substance.strength.extension 1..3
* substance.strength.extension contains pq-strength-type-extension named strengthType 1..1 MS
* substance.strength.extension[strengthType] ^short = "Strength Type (for API)"
* substance.strength.extension[strengthType] ^definition = """A physical (content) or activity measurement of the strength of the ingredient. [Source: SME Defined]
Example: Mass, Activity
"""
* substance.strength.extension contains pq-content-percent-extension named contentPercent 1..1 MS
* substance.strength.extension[contentPercent] ^short = "Content (%)"
* substance.strength.extension[contentPercent] ^definition = "The percentage of the component in the drug product. [Source: SME Defined]"
* substance.strength.presentation[x] 1..1 MS
* substance.strength.presentation[x] only Ratio or Quantity
* substance.strength.presentationRatio 0..1 MS
* substance.strength.presentationRatio.numerator MS
* substance.strength.presentationRatio.numerator ^short = "Strength Numeric Numerator"
* substance.strength.presentationRatio.numerator ^definition = "The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]"
* substance.strength.presentationRatio.numerator 1..1 MS
* substance.strength.presentationRatio.numerator.value 1..1 MS
* substance.strength.presentationRatio.numerator.unit 1..1 MS
* substance.strength.presentationRatio.numerator.code 1..1 MS
* substance.strength.presentationRatio.numerator.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationRatio.denominator 1..1 MS
* substance.strength.presentationRatio.denominator ^short = "Strength Numeric Denominator"
* substance.strength.presentationRatio.denominator ^definition = """ Specifies the quantity of the ingredient(s) consistent with a single unit dose or as expresssed on the label. [Source: SME Defined]
Note: Kg value is only applicable for veterinary applications.
Note: This is the denominator value when expressing the strength for APIs
Example: 5 mg per 100 mL
Note: For Excipients, this is the amount
"""
* substance.strength.presentationRatio.denominator.value 1..1 MS
* substance.strength.presentationRatio.denominator.unit 1..1 MS
* substance.strength.presentationRatio.denominator.code 1..1 MS
* substance.strength.presentationRatio.denominator.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationQuantity 0..1 MS
* substance.strength.presentationQuantity.value 1..1
* substance.strength.presentationQuantity.unit 1..1
* substance.strength.presentationQuantity.code 1..1
* substance.strength.presentationQuantity.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationQuantity.extension contains pq-strength-operator-extension named strengthOperator 0..1 MS
* substance.strength.presentationQuantity.extension[strengthOperator] ^short = "Strength Operator"
* substance.strength.presentationQuantity.extension[strengthOperator] ^definition = """A mathematical symbol that denotes equality or inequality between two values
Note: This is typically applicable to biologics """

//* substance.strength.textPresentation 1..1 MS
//* substance.strength.textPresentation ^short = "Strength Textual"
//* substance.strength.textPresentation ^definition = "A written description of the strength of the ingredient. [Source: SME Defined]"

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-dp-ingredient
Title: "Drug Product Ingredient"
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/pqcmc-dp-ingredient"
* .extension contains pq-additional-info-extension named additional-info 0..1 MS
* .extension[additional-info] ^short = "Drug Product Component Additional Information"
* .extension[additional-info] ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.
"""
* .extension contains pq-product-batch-ingredient-extension named formulaIngredient 0..1 MS
* identifier 0..1 MS
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* substance.code only Reference(pqcmc-routine-drug-substance)
* substance.strength.concentration[x] only Quantity
* substance.strength.concentration[x] ^short = "Ingredient Quanty Per Batch"
* substance.strength.concentration[x] ^definition = """Quantity: The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* substance.strength.concentrationQuantity.value 1..1
* substance.strength.concentrationQuantity.unit 1..1
* substance.strength.concentrationQuantity.code 1..1
* substance.strength.concentrationQuantity.code from  PqcmcUnitsMeasureTerminology
* substance.strength.textConcentration 1..1 MS
* substance.strength.textConcentration ^short = "Strength Textual"
* substance.strength.textConcentration ^definition = """A written description of the strength of the ingredient.[Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes
"""

Profile: DrugSubstancemanufacturingBatch
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch
Id: drug-substance-manufacturing-batch
Title: "Drug Substance Manufacturing Batch"
Description: "This profile defines the details of a batch of API."

* ^url = "http://hl7.org/fhir/us/pq-cmc/StructureDefinition/drug-substance-manufacturing-batch"
* ^context.type = #extension
* ^context.expression = "extension to the substance (API) batch"
* extension[manufacturingDate] 1..1 MS
* extension[manufacturingDate] ^short = "Manufacturing Date"
* extension[manufacturingDate] ^definition = """The date associated with manufacturing a batch. [Source: SME Defined] * Note: See Manufacturing Date Description element. """
* extension[manufacturingDate].valueDateTime MS
* extension[manufacturingDateClassification] 1..1 MS
* extension[manufacturingDateClassification] ^short = "Manufacturing Date Description"
* extension[manufacturingDateClassification] ^definition = """A textual description that provides a rationale for the selection of the manufacturing date. [Source: SME Defined] * Note: This description should include the specific operation/step in the manufacturing process associated with the assigned manufacturing date. """
* extension[manufacturingDateClassification].valueCodeableConcept MS
* extension[assignedManufacturer] 1..1 MS
* extension[assignedManufacturer] ^short = "Assigned Manufacturer"
* extension[assignedManufacturer]
* extension[assignedManufacturer].valueReference only Reference(MfgTestSiteOrganization)
* extension[expirationDateClassification] 1..1 MS
* extension[expirationDateClassification] ^short = "Retest Date Classification"
* extension[expirationDateClassification] ^definition = """The endorsement of the Retest date that clarifies whether this date has been approved by the FDA or is being proposed by the sponsor/applicant for a drug substance. [Source: SME Defined]
This classification applies to ALL substances.
* For an original MF/application, Retest Date Classification is 'Proposed'.
* After an MF/application has been approved, Retest Date Classification is 'Adequate'.
* For a Supplement that's changing the Retest Date that is already classified as 'Adequate' for the drug product or drug substance, the changed Retest Date Classification would be 'Proposed'.
* For substances that do not have a Retest Date, the Retest Date Classification will be 'NA'.
"""
* extension[expirationDateClassification].valueCodeableConcept MS
* extension[expirationDateClassification].valueCodeableConcept from PqcmcRetestDateClassificationTerminology

* extension[batchUtilization] 1..1 MS
* extension[batchUtilization] ^short = "Batch Utilization"
* extension[batchUtilization] ^definition = """A categorization of the batch that identifies its usage. [Source: SME Defined] * Examples: commercial, development. """
* extension[batchUtilization].valueCodeableConcept MS
* extension[batchUtilization].valueCodeableConcept from PqcmcBatchUtilizationTerminology
* extension[batchQuantity] 1..1 MS
* extension[batchQuantity] ^short = "Batch Size"
* extension[batchQuantity] ^definition = "The batch size can be defined either by a fixed quantity or by the amount produced in a fixed time interval. [Source: ICH Q7 - Part of the definition of Batch]"
* extension[batchQuantity].valueQuantity MS
* extension[additionalInformation] MS
* extension[additionalInformation] ^short = "Additional Information"
* extension[additionalInformation] ^definition = """A placeholder for providing any comments that are relevant to the Batch. [Source: SME Defined]
Examples: first batch manufactured at a new facility; first batch manufactured using a new Active Pharmaceutical Ingredient (API) source, new process, new container closure, etc.
"""
* extension[container] 1..* MS
* extension[container] ^short = "Container"
* extension[container].extension[lotNumber].valueString 1..1 MS
* extension[container].extension[lotNumber] ^short = "Container Lot Number"
* extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot.
 Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
 """
* extension[container].extension[type] 1..1 MS
* extension[container].extension[type] ^short = "Container Type"
* extension[container].extension[type]
* extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]"
* extension[container].extension[type].valueCodeableConcept 1..1 MS
* extension[container].extension[type].valueCodeableConcept from PqcmcContainerTypeTerminology
* extension[container].extension[quantity] 1..1 MS
* extension[container].extension[quantity] ^short = "Container Fill per Container Size"
* extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit
 Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: tablets, mL.
 Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
 Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: mL, L, cc.
 """
* extension[container].extension[quantity].valueRatio 1..1 MS
* extension[container].extension[closureSystemDescription] 1..1 MS
* extension[container].extension[closureSystemDescription] ^short = "Container Closure System Description"
* extension[container].extension[closureSystemDescription] ^definition = """ Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary]
 Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
 Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
 """
* extension[container].extension[closureSystemDescription].valueString 1..1 MS
* extension[container].extension[closureType] 1..1 MS
* extension[container].extension[closureType] ^short = "Closure Type"
* extension[container].extension[closureType] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]"
* extension[container].extension[closureType].valueCodeableConcept 1..1 MS
* extension[container].extension[closureType].valueCodeableConcept from PqcmcClosureTypeTerminology

Profile: DrugSubstanceBatch
Parent: Substance
Id: pqcmc-drug-substance-batch
Title: "Drug Substance Manufactured Batch"
Description: "Includes the properties of the drug substance as manufactured."

* extension contains drug-substance-manufacturing-batch named api-batch 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "Drug Substance Lot Number"
* identifier.value ^definition = "Lot number of the drug substance used in manufacturing a drug product batch. [Source: SME Defined]"
* code MS
* code.concept.coding ^short = "UNII| CAS Number|Substance Name" // Need rule that it be any of 3 kinds * code.concept.coding
* code.concept.coding ^definition = """Substance Name: A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined] Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT

CAS: Number Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org] Example: CAS [103-90-2]

UNII: The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* expiry 0..1 MS
* expiry ^short = "Retest Date"
* expiry ^definition = "The date after which samples of the drug substance should be examined to ensure compliance with the specification and thus suitable for use in the manufacture of a given drug product [Source: Adapted from Q1A(R2)]"
* expiry only dateTime

Profile: Excipient
Parent: SubstanceDefinition
Id: pqcmc-excipient
Title: "Excipient Drug Substance"
Description: "Provides sufficient information to identify an inactive substance and its source when stability data is required in the submission."

* identifier 0..1
* identifier ^short = "optional user designated identifier"	
* manufacturer 0..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* supplier 0..1 MS
* supplier only Reference(MfgTestSiteOrganization)
* code 0..1 MS
* code.code 0..1 MS
* code.code ^short = "UNII"
* code.code ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* name.name 1..1 MS
* name.name ^short = "Excipient Name"
* sourceMaterial 1..1 MS
* sourceMaterial.type 1..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 0..1 MS
* sourceMaterial.genus.coding 0..0
* sourceMaterial.genus.text 1..1
* sourceMaterial.genus.text ^short = "Source Organism"
* sourceMaterial.genus.text ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species 0..1 MS
* sourceMaterial.species ^short = "Source Organism"
* sourceMaterial.species ^definition = """The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
"""
* sourceMaterial.species.coding 0..0
* sourceMaterial.species.text 1..1
* sourceMaterial.part 0..1 MS
* sourceMaterial.part ^short = "Source Organism Part"
* sourceMaterial.part ^definition = """A fragment of the source organism. [Source: SME Defined]
Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal """
* sourceMaterial.part.coding 0..0
* sourceMaterial.part.text 1..1
* sourceMaterial.countryOfOrigin 0..1 MS
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin"
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 0..0
* sourceMaterial.countryOfOrigin.coding from genc-country-codes
* sourceMaterial.countryOfOrigin.text 1..1 MS
//________________________________________________________________
/// Profiles on Profiles
//________________________________________________________________

Profile: RoutineSubstanceDefinition
Parent: DrugSubstance
Id: pqcmc-routine-drug-substance
Title: "Routine Drug Substance"
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."

* identifier MS
* classification MS
* manufacturer MS
* supplier MS
* code MS
* name MS
* name.preferred 0..1 MS

Profile: SubstanceContainerClosure
Parent: DrugSubstance
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."
* extension contains pq-container-closure-extension named containerClosure 1..1 MS
* identifier 0..1
* manufacturer 1..1
* code 1..1
* name MS
* name.preferred MS

Profile: DrugSubstanceNomenclature
Parent: DrugSubstance
Id: pqcmc-drug-substance-nomenclature
Title: "Substance Nomenclature"
Description: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile."

* identifier 0..1
* classification 1..1 
* manufacturer 1..1 
* supplier 0..1 
* molecularWeight 0..1
* code MS
* name MS
* name.preferred 0..1
* relationship.substanceDefinitionReference only Reference( PolymorphicForm )
* relationship.type.text = "Polymorph"

Profile: DrugSubstanceStructure
Parent: DrugSubstance
Id: pqcmc-drug-substance-structure
Title: "Drug Substance Molecular Structure"
Description: "Drug Substance (Active Ingredient) molecular structure. Profile on Drug Substance profile."

* identifier 0..1
* molecularWeight 0..1
* structure 1..1
* structure.molecularFormula 0..1
* structure.representation.document.display  0..1 MS
* structure.representation.document.display ^short = "Analytical Instrument Data File Narrative Text"
* structure.representation.document.display ^definition = "??? TDB ???"
* code MS
* name MS
* name.preferred 0..1

Profile: DrugSubstanceMaterials
Parent: DrugSubstance
Id: pqcmc-drug-substance-materials
Title: "Substance Raw Materials"
Description: "Drug Substance Raw Materials.  Profile on Drug Substance profile."

* identifier 0..1
* code MS
* name MS
* name.preferred 0..1
* relationship.substanceDefinitionReference only Reference( ComponentSubstance )
* relationship.type.text = "Raw Material"

Profile: DrugSubstanceImpurities
Parent: DrugSubstance
Id: pqcmc-drug-substance-impurities
Title: "Substance Impurities"
Description: "Drug Substance Impurities. Profile on Drug Substance profile."

* identifier 0..1
* classification MS
* structure MS
* code MS
* name MS
* name.preferred MS
* relationship.substanceDefinitionReference only Reference( ImpuritySubstance )
* relationship.type.text = "Impurity"

Profile: DrugSubstanceRepresentationalStructure
Parent: DrugSubstance
Id: pqcmc-drug-substance-structure-represent
Title: "Drug Substance Structures"
Description: "Drug Substance (Active Ingredient) Representational Structures.  Profile on Drug Substance profile."

* identifier 0..1
* structure 1..1
* structure.technique 1..1
* structure.technique.text 1..1
* structure.representation 1..*
* structure.representation.representation 0..1
* structure.representation.format 0..1
* structure.representation.document 0..1
* code MS
* name MS
* name.preferred 0..1 MS

// Invariants and Rules

Invariant: cmc-name-preferred
Description: "Name.preferred: at most one = true"
Expression: "name.select ( preferred = true).count() < 2"
Severity: #error

Invariant: cmc-substance-relationship
Description: "If relationship.type.text is 'Polymorph' then reference is PolymorphicForm, if relationship.type.text is 'Raw Material' then reference is ComponentSubstance, 
if relationship.type.text is 'Impurity' then reference is DrugSubstanceImpurity."
Expression: "relationship.where(type.text = 'Polymorph').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is PolymorphicForm)
or
relationship.where(type.text = 'Raw Material').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is ComponentSubstance)
or
relationship.where(type.text = 'Impurity').exists() implies relationship.substanceDefinitionReference.reference.resolve().exists($this is DrugSubstanceImpurity)"
Severity: #error

Invariant: cmc-when-unii-required
Description: "A UNII is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "(classification.where(coding.where(code in ('1' | '17' | '2' | '3' |'4') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification').exists()).exists()
implies code.code.text.exists())"
Severity: #error

Invariant: cmc-name-isbt
Description: "Name.type ISBT 128 requried for blood products."
Expression: "classification.where(coding.where(code = '8' ) and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification'  ).exists()).exists()
   implies name[isbt].name.exists()"
Severity: #error

Invariant: cmc-ingredient-functions
Description: "If Drug Product Component Function Category is Active Ingredient or Adjuvant THEN Drug Product Component Function will be NA.
If Drug Product Component Function Category is Inactive Ingredient (excipient) THEN Drug Product Component Function must be from the value list."
Expression: "role.coding.where(code in ('C82533' | 'C2140')) implies (function.coding.code.count() = 0 and function.text = 'NA')
xor
role.coding.where(code = 'C42637') implies (function.coding.code.count() = 1 and function.text.count() = 0)"
Severity: #error

Invariant: cmc-substance-structure-graphic-required
Description: "A Substance Structure Graphic is required Required for Small Molecules. Equivalent to classification  code equals 'Chemical'."
Expression: "(classification.where(coding.where(code = '1') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/evmpd-substance-classification').exists()).exists()
implies structure.representation.exists())"
Severity: #error

Invariant: cmc-representation-or-document
Description: "A structure has either a representation or document and supporting types."
Expression: "structure.representation.document.resolve().content.attachment.data  xor structure.representation.representation.exists() and structure.representation.type.coding exists()"Severity: #error

Invariant: cmc-structure-required
Description: "A structure is required in code for any of theese categories: 'Chemical', 'Mixture', 'Nucleic Acid','Polymer','Protein - Other'."
Expression: "(classification.where(coding.system = 'https://www.ema.europa.eu' and coding.code in ('1' | '17' | '2' | '3' | '4')).exists() implies structure.exists())"
Severity: #error

Invariant: cmc-source-material
Description: "IF raw material source type equals Microbial, Animal, Plant, Insect or Human THEN the 4 source related attributes are required and the manufacturer and supplier information is highly desirable."
Expression: "(sourceMaterial.type.where(coding.where(code in ('C14182' | 'C14225' | 'C14227' | 'C14329' | 'C14258') and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-source-type-terminology').exists()).exists()
implies sourceMaterial.genus.exists() and  sourceMaterial.species.exists() and sourceMaterial.part.exists() and sourceMaterial.countryOfOrigin.exists())"
Severity: #error

Invariant: cmc-strength-type-cases
Description: "IF Strength Type = Mass THEN Strength Numeric and Strength UOM are Mandatory
IF Strength Type = Activity THEN Strength Textual, Strength UOM ([arb'U]) and Strength Operator are applicable data elements.
Strength Textual and Strength UOM will be Mandatory and Operator will be Optional"
Expression: "substance.strength.extension[strengthType].where(coding.where(code = 'C168628' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-strength-type-terminology').exists()).exists()
implies substance.strength.presentationRatio.exists() or substance.strength.presentationQuantity.exists()) and  substance.strength.presentationQuantity.extension[strengthOperator].exists().not()
and
substance.strength.extension[strengthType].where(coding.where(code = 'C45420' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-strength-type-terminology').exists().exists()
implies substance.strength.presentationRatio.exists() and substance.strength.presentationRatio.unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology'
or substance.strength.presentationQuantity.exists() and substance.strength.presentationQuantity.unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology'"Severity: #error

Invariant: cmc-arbitrary-unit
Description: "If the UOM is UCUM Arbitrary Unit [arb'U], you need to describe the units in the Strength Text data element."
Expression: "((substance.strength.presentationRatio.where(unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology').exists()).exists())
or ((substance.strength.presentationRatio.where(unit = 'ARBITRARY UNITS' and system = 'http://hl7.org/fhir/us/pq-cmc/ValueSet/pqcmc-units-of-measure-terminology').exists()).exists())
implies (substance.strength.textPresentation.contains('unit'))"
Severity: #error



