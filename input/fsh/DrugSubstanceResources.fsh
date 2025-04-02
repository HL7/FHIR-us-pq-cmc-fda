Extension: StrengthExtension
Id:  strength-extension
Title: "Strength Type"
Description: "Strength Type (for API)"
* ^context[+].type = #element
* ^context[=].expression = "Ingredient.substance.strength"
* value[x] 1..1 MS
  * ^short = "Strength Type (for API)"
  * ^definition = """
    A physical (content) or activity measurement of the strength of the ingredient. [Source: SME Defined]
    Example: Mass, Activity
  """
* value[x] only CodeableConcept
* value[x] from PqcmcStrengthTypeTerminology (required)

Profile: PolymorphicForm
Parent: SubstanceDefinition
Id: pqcmc-polymorphic-form
Title: "Polymorphic Form"
Description: "Alternate structure present in the drug substance"

* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* structure 0..1 MS
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula"
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]"
* structure.technique 0..1 MS
* structure.technique ^short = "Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique only CodeableConceptTextOnly
* insert GraphicAndStructureRepresentations(0..1,0..*,0..*)
* structure obeys cmc-structure-representation-required
* code 0..1 MS
* code.code.coding.system = $UNII
* code.code.coding ^short = "UNII"
* code.code.coding ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
"""
* insert ShortSetSubstanceNames

Profile: ComponentSubstance
Parent: SubstanceDefinition
Id: pqcmc-component-substance
Title: "Component Substance"
Description: "Any raw material intended for use in the manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* . obeys cmc-source-material
* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..1 MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..*
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 0..1 MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* insert PQReference(supplier)
* supplier only Reference(CodedOrganization)
* insert GraphicAndStructureRepresentations(0..1,0..*,0..*)
* structure obeys cmc-structure-representation-required
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* sourceMaterial 0..1 MS
  * type 0..1 MS
  * type from PqcmcSourceTypeTerminology (required)
    * ^short = "Source Type"
    * ^definition = """
      A classification that provides the origin of the raw material. [Source: SME Defined]
    """
  * genus 0..1 MS
  * genus only CodeableConceptTextOnly
    * ^short = "Source Organism Genus"
    * ^definition = """
      The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
      Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
    """
  * species 0..1 MS
  * species only CodeableConceptTextOnly
    * ^short = "Source Organism Species"
    * ^definition = """
      The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
      Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
    """
  * part 0..1 MS
  * part only CodeableConceptTextOnly
    * ^short = "Source Organism Part"
    * ^definition = """
      A fragment of the source organism. [Source: SME Defined]
      Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
      IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
      Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal
    """
* insert CountryOfOrigin

Profile: DrugProductComponent
Parent: Ingredient
Id: pqcmc-component
Title: "Drug Product Component"
Description: "The amount details about the drug product components to define the product composition in a product unit. Use composition."

* status.code
* for ^short = "Reference to MedicinalProductDefinition"
* role from  PqcmcDrugProductComponentFunctionCategoryTerminology (required)
* comment 0..1 MS
* comment ^short = "Drug Product Component Additional Information"
* comment ^definition = """A placeholder for providing any comments that are relevant to the component. [Source: SME Defined]
Examples: removed during process, adjusted for loss on drying, etc.
"""
* substance obeys cmc-strength-type-cases2
* substance.code MS
* substance.code ^short = "Ingredient Substance"
* insert PQCodeableReference(substance.code)
* substance.code only CodeableReference(ComponentSubstance)

* substance.strength 2..2 MS
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "textConcentration"
  // * ^slicing.discriminator[+].type = #type
  // * ^slicing.discriminator[=].path = "concentration"
  // * ^slicing.discriminator[+].type = #value
  // * ^slicing.discriminator[=].path = "concentration.code"
  * ^slicing.rules = #closed
  * ^slicing.description = ""
  * ^slicing.ordered = false
* substance.strength contains
  amount 1..1 MS and
  percent 1..1 MS
* substance.strength[amount]
  * extension contains strength-extension named strengthFactors 1..1 MS
  * concentration[x] 1..1 MS
  * concentration[x] only Ratio or Quantity
  * concentrationQuantity 0..1 MS
  * concentrationQuantity from PqcmcNonPercentageUnits (required)
  * concentrationQuantity.value 1..1 MS
  * concentrationQuantity.value ^short = "Ingredient Total Amount Numeric"
  * concentrationQuantity.value ^definition = """
    Specifies the quantity of an ingredient in a single dose unit (e.g., one tablet, capsule) of the drug product. [Source: SME Defined]
    Example: if the tablet contains 325 mg of the ingredient in each unit dose, then Ingredient Total Amount Numeric = 325
  """
  * concentrationQuantity.comparator 0..1 MS // you CANNOT make comparator mandatory! it's absence implies equality
  * concentrationQuantity.comparator ^short = "Ingredient Total Amount Operator"
  * concentrationQuantity.comparator ^definition = """
    A mathematical symbol that denotes equality or inequality between two values. [Source: SME Defined] Examples: LT, EQ, NMT.
    Note: This is typically applicable to biologics.
  """
  * concentrationQuantity.unit 1..1
  * textConcentration 1..1 MS
  * textConcentration ^short = "Strength Textual"
  * textConcentration ^definition = "A written description of the strength of the ingredient. [Source: SME Defined]"
  * concentrationRatio 0..1 MS
  * concentrationRatio
    * numerator 1..1 MS
    * numerator from PqcmcNonPercentageUnits (required)
      * value ^short = "Product Ingredient Amount Numeric Numerator"
      * ^definition = """
        Specifies the quantity of an ingredient in a single dose unit of the drug product. [Source: SME Defined]
      """
    * denominator MS
    * denominator from PqcmcNonPercentageUnits (required)
    * numerator
      * value 1..1 MS
        * ^short = "Ingredient Total Amount Numeric Numerator"
  * concentrationRatio.numerator.unit ^short = "Ingredient Total Amount Numeric Numerator UOM"
  * concentrationRatio.numerator.unit ^definition = """
    The labeled unit of measure for the content of the drug product, expressed quantitatively per dosage unit. [Source: Adapted for NCI EVS C117055]
    Example: mg
  """
  * concentrationRatio.numerator.code 1..1 MS
  * concentrationRatio.denominator 1..1 MS
  * concentrationRatio.denominator.value  ^short = "Ingredient Total Amount Numeric Denominator"
  * concentrationRatio.denominator.value  ^definition = """
    Specifies the quantity of the ingredients within a single dose unit (e.g., vial, syringe) of drug product. [Source: SME Defined]
    Example: 10mg/syringe, 1mg/ml
  """
  * concentrationRatio.denominator.value 1..1 MS
  * concentrationRatio.denominator.unit 1..1 MS
    * ^short = "Ingredient Total Amount Numeric Denominator UOM"
  * concentrationRatio.denominator.code 1..1 MS
* substance.strength[percent]
  * concentration[x] 1..1 MS
  * concentration[x] only Quantity
  * textConcentration 0..0 MS
  * concentrationQuantity from PqcmcPercentageUnits (required)
    * value 1..1 MS
      * ^short = "Ingredient Total Amount Content Percent"
      * ^definition = """
        The percentage of the component in the drug product. [Source: SME Defined]
        Example: Product Total Weight = 1200 mg and Product Ingredient Amount = 325 mg, so Product Ingredient Content Percent = 27.08
      """
    * code 1..1 MS
      * ^short = "Ingredient Total Amount Content Percent UOM"
    

Profile: ExcipientRaw
Parent: SubstanceDefinition
Id: pqcmc-excipient
Title: "Excipient Drug Substance"
Description: "Provides sufficient information to identify an inactive substance and raw materials and its source when stability data is required in the submission."

* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* . obeys cmc-source-material
* identifier 0..1
* identifier ^short = "optional user designated identifier"
* classification 1..1 MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* grade 1..*
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 0..* MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* insert  PQReference(supplier)
* supplier only Reference(CodedOrganization)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* sourceMaterial 1..1 MS
* sourceMaterial.type 1..1
* sourceMaterial.type ^short = "Source Type"
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined]
Example: cat hair would be an Animal source type """
* sourceMaterial.type from PqcmcSourceTypeTerminology (required)
* sourceMaterial
  * genus 0..1 MS
  * genus only CodeableConceptTextOnly
    * ^short = "Source Organism Genus"
    * ^definition = """
      The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
      Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
    """
  * species 0..1 MS
  * species only CodeableConceptTextOnly
    * ^short = "Source Organism Species"
    * ^definition = """
      The name, genus or genus and species of the organism from which the material is derived. [Source: SME Defined]
      Examples: Examples: human or Homo Sapiens, chicken, dog or canine, cow or bovine, rat or rattus.
    """
  * part 0..1 MS
  * part only CodeableConceptTextOnly
    * ^short = "Source Organism Part"
    * ^definition = """
      A fragment of the source organism. [Source: SME Defined]
      Examples: secretions, material from a specific organ, tissue or portion of the organism such as liver, pancreas, blood or from bark or seed of a plant.
      IDMP 11238 definition & examples: Entity of anatomical origin of source material within an organism.
      Cartilage, Root and Stolon, whole plant is considered as a part, Aerial part of the plant, Leaf, Tuberous Root, whole animal
    """
* insert CountryOfOrigin


Profile: SubstanceDefinitionHandle
Parent: SubstanceDefinition
Id: pqcmc-routine-drug-substance
Title: "Drug Substance Handle"
Description: "Includes the essential identifying information of the drug substance required to link to other profiles about the substance in the eCTD structure. Profile on SubstanceDefinition."
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..1 MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
"""
* grade 1..*
* grade ^short = "Quality Standard"
* grade ^definition = """The established benchmark to which the component complies. [Source: SME Defined]
Examples: USP/NF, EP, Company Standard
"""
* grade from PqcmcQualityBenchmarkTerminology (required)
* manufacturer 1..1 MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* insert PQReference(supplier)
* supplier only Reference(CodedOrganization)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames
* sourceMaterial 0..0 MS

Profile: DrugSubstanceNomenclatureStructure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-nomenclature-structure
Title: "Substance General Information"
Description: "Substance General Information containing Drug Substance (Active Ingredient) nomenclature (3.2.S.1.1) and Substance Structure (3.2.S.1.2) profile."
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..1 MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 1..1 MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* insert PQReference(supplier)
* supplier only Reference(CodedOrganization)
* molecularWeight 0..1 MS
* molecularWeight ^short = "Molecular Weight"
* molecularWeight ^definition = "The average mass of a molecule of a compound compared to ¹/₁₂ the mass of carbon 12 and calculated as the sum of the atomic weights of the constituent atoms. [Source: Merriam Webster]"
* molecularWeight.amount 1..1 MS
* molecularWeight.amount.unit ^short = "Molecular Weight UOM"
* molecularWeight.amount.unit ^definition = """The labeled unit of measure for the molecular weight. [Source: Adapted for NCI EVS C117055]
 """
* molecularWeight.amount.code 1..1 MS
* molecularWeight.amount from PqcmcUnitsMeasure (extensible)
* . obeys cmc-structure-required
* . obeys cmc-substance-structure-graphic-required
* structure 1..1 MS
//* structure obeys cmc-representation-or-document
* structure.molecularFormula 0..1 MS
* structure.molecularFormula ^short = "Molecular Formula | Biopolymer Sequence"
* structure.molecularFormula ^definition = """Molecular Formula: An expression which states the number and type of atoms present in a molecule of a substance or sequence for biotechnology products. [Source: SME Defined]
Biopolymer Sequence: TBD
"""
* structure.technique 1..1 MS
* structure.technique ^short = "Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique only CodeableConceptTextOnly
* structure.representation 1..* MS
* insert GraphicAndStructureRepresentations(0..1,0..*,0..*)
* structure obeys cmc-structure-representation-required
* insert UniiAndUniProtCodes(1)
* insert SubstanceNames

* relationship 0..* MS
* relationship.substanceDefinition[x] ^short = "The substance definition of a polyphorm of the Drug Substance"
* insert PQReference(relationship.substanceDefinition[x])
* relationship.substanceDefinition[x] only Reference( PolymorphicForm )
* relationship.type only CodeableConceptTextOnly
* relationship.type.text = "Polymorph"
* relationship.type ^short = "Polymorph"



RuleSet: SubstanceNames
* name 1..* MS
* name ^short = "Subtance Name"
* name ^definition = """Substance Name is identified by its Substance Type. Substance Type: Identifies the source that assigned the product ingredient name. [Source: SME Defined]
Examples: GSRS Preferred Term, Systematic Name, INN, USP/NF
"""
* name obeys cmc-name-preferred
* name.type from PqcmcSubstanceNameType // don't use example binding
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type" //element(*,SubstanceDefinition)/name/type/coding/code
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name contains
  sys 0..1 MS and
  sub 0..1 MS and
  brand 0..1 MS and
  // comn 0..1 MS and
  gsrs 0..1 MS and
  usp 0..1 MS and
  cas 0..1 MS and
  inn 0..1 MS and
  usan 0..1 MS and
  iupac 0..1 MS and
  isbt 0..1 MS

* name[sys].name 1..1 MS
* name[sys].name ^short = "Systematic"
* name[sys].name ^definition = """A name derived directly from the chemical structure. [Source: SME Defined]
"""
* name[sys].type 1..1 MS
* name[sys].type = $NCIT#C203357	"Systematic Name"

* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic"
* name[sub].name ^definition = """A non-branded nor registered name that meant for common use."""
* name[sub].type 1..1 MS

* name[sub].type = $NCIT#C97054 "Generic Name"

* name[brand].name 1..1 MS
* name[brand].name ^short = "Brand"
* name[brand].name ^definition = """The part of the name or logo associated with a specific product or service identifying and distinguishing it from varieties of the same product or service marketed by competing companies.
"""
* name[brand].type 1..1 MS
* name[brand].type = $NCIT#C71898	"Brand"

// * name[comn].name 1..1 MS
// * name[comn].name ^short = "Common"
// * name[comn].name ^definition = """The generally used, literal identifier of the entity."""
// * name[comn].type 1..1 MS
// * name[comn].type.coding 1..1 MS
// * name[comn].type.coding = $NCIT#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred Term"
* name[gsrs].name ^definition = """Default display name identified within FDA Global Substance Registration System (GSRS)."""
* name[gsrs].type 1..1 MS
* name[gsrs].type = $NCIT#C203355 "GSRS Preferred Term"

* name[usp].name 1..1 MS
* name[usp].name ^short = "USP-NF Established Name"
* name[usp].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Pharmacopeia (USP) and excipients by the National Formulary (NF). [Source: SME Defined]
"""
* name[usp].type 1..1 MS
* name[usp].type = $NCIT#C203358	"USP-NF Established Name"

* insert CompanyName

* name[cas].name 1..1 MS
* name[cas].name ^short = "CAS Number"
* name[cas].name ^definition = """Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org]
Example: CAS [103-90-2]
"""
* name[cas].type 1..1 MS
* name[cas].type = $NCIT#C54682	"CAS Number"

* name[inn].name 1..1 MS
* name[inn].name ^short = "INN" 
* name[inn].name ^definition = """International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/] Example: Paracetamol
"""
* name[inn].type 1..1 MS
* name[inn].type = $NCIT#C142585	"INN"

* name[usan].name 1..1 MS
* name[usan].name ^short = "USAN"
* name[usan].name ^definition = """A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined] Example: acetaminophen
"""
* name[usan].type 1..1 MS
* name[usan].type = $NCIT#C96973	"USAN"

* name[iupac].name 1..1 MS
* name[iupac].name ^short = "IUPAC Name" 
* name[iupac].name ^definition = """A name assigned to a chemical substance according to the systematic nomenclature rules defined by the International Union of Pure and Applied Chemistry (IUPAC) [Source: SME Defined] 
Example: N- (4-hydroxyphenyl)acetamide
"""
* name[iupac].type 1..1 MS
* name[iupac].type = $NCIT#C203356	"IUPAC Name"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT-128 DIN"
* name[isbt].name ^definition = """It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
"""
* name[isbt].type 1..1 MS
* name[isbt].type = $NCIT#C95517	"ISBT-128 DIN"

* name.preferred 0..1 MS
* name.preferred ^short = "True when the name type is Substance Name"

RuleSet: ShortSetSubstanceNames
* name 1..* MS
* name ^short = "Substance Name"
* name ^definition = """Substance Name is identified by its Substance Type.
Substance Type | Product Part Ingredient Name Type: Identifies the source that assigned the product ingredient name. [Source: SME Defined]
Examples: GSRS Preferred Term, Systematic Name, INN, USP/NF
"""
* name obeys cmc-name-preferred
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "type" //element(*,SubstanceDefinition)/name/type/coding/code
* name ^slicing.rules = #closed
* name ^slicing.description = "Slice based on value pattern"
* name.type from PqcmcSubstanceNameType // don't use example binding
* name contains
  sub 0..1 MS and
  // comn 0..1 MS and
  gsrs 0..1 MS and
  isbt 0..1 MS
* name[sub].name 1..1 MS
* name[sub].name ^short = "Generic Name"
* name[sub].name ^definition = """A non-branded nor registered name that meant for common use."""
* name[sub].type 1..1 MS
* name[sub].type = $NCIT#C97054	"Generic Name"

// * name[comn].name 1..1 MS
// * name[comn].name ^short = "Common"
// * name[comn].name ^definition = """TThe generally used, literal identifier of the entity."""
// * name[comn].type 1..1 MS
// * name[comn].type.coding 1..1 MS
// * name[comn].type.coding = $NCIT#139 "Common"

* name[gsrs].name 1..1 MS
* name[gsrs].name ^short = "GSRS Preferred Term"
* name[gsrs].name ^definition = """Default display name identified within FDA Global Substance Registration System (GSRS).
"""
* name[gsrs].type 1..1 MS
* name[gsrs].type = $NCIT#C203355 "GSRS Preferred Term"

* name[isbt].name 1..1 MS
* name[isbt].name ^short = "ISBT-128 DIN" 
* name[isbt].name ^definition = """It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/]
"""
* name[isbt].type 1..1 MS
* name[isbt].type = $NCIT#C95517	"ISBT-128 DIN"
* name.preferred 0..1 MS
* name.preferred ^short = "True when the name type is Substance Name"

RuleSet: CompanyName
* name contains comp 0..1 MS
* name[comp].name 1..1 MS
* name[comp].name ^short = "Company ID/Code"
* name[comp].name ^definition = """An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
"""
* name[comp].type 1..1 MS
* name[comp].type = $NCIT#C203354	"Company ID/Code"

RuleSet: UniiAndUniProtCodes(cardinality)
// lots of things derived from substanceDefinition use code
// for unii and uniprot codes 
* code {cardinality}..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code.coding.system"
  * ^slicing.rules = #open
* code contains 
  unii 0..1 and
  uniProt 0..1
* code[unii]
  * ^short = "UNII"
  * ^definition = """
    The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]
    Example: 362O9ITL9D
    Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/
  """
  * code 1..1 MS
    * coding 1..1 MS
      * system 1..1 MS
      * system = $UNII
* code[uniProt]
  * ^short = "UniProt ID"
  * ^definition = """
    The  UniProt ID is an index to the UniProt knowledgebase,  a large resource of protein sequences and associated detailed annotation.
    It is accessible at https://www.uniprot.org/
  """
  * code 1..1 MS
    * coding 1..1 MS
      * system 1..1 MS
      * system = $UNIPROT

RuleSet: CountryOfOrigin
* sourceMaterial.countryOfOrigin 0..1 MS 
* sourceMaterial.countryOfOrigin from PqcmcGENCAndISOIntersect (required)
  * ^short = "Source Organism Country of Origin"
  * ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"

//*Stage 2 --------------------------------------------------------------------------------------------------------------*/

Profile: DrugSubstanceCharacterisation
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-characterisation
Title: "Drug Substance"
Description: "Drug Substance (Active Ingredient) nomenclature and characterization."
* . obeys cmc-when-unii-required
* . obeys cmc-name-isbt
* obeys cmc-substance-characterisation-content-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..1 MS
* classification from SubstanceClassification
* classification ^short = "Substance Type"
* classification ^definition = """A controlled vocabulary as provided by the prEN ISO 11238 - Health informatics identification of medicinal products - Structures and controlled vocabularies for drug substances to group drug substances at a relatively high level acording to the Substance and the Substance Preparation Model.
[Source: Adapted from 'Logical model of the classification and identification of pharmaceutical and medicinal Products', HL7]
"""
* manufacturer 0..1 MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* supplier 0..1 MS
* insert PQReference(supplier)
* supplier only Reference(CodedOrganization)
* insert SubstanceCharacterization
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames

* relationship 0..* MS
  * ^short = "Reference to Drug Substance Impurity"
//* relationship obeys cmc-substance-relationship  not needed  since this resource is for illustraion.
  * substanceDefinition[x] 1..1 MS
  * insert PQReference(substanceDefinition[x])
  * substanceDefinition[x] only Reference(ImpuritySubstance)

Profile: ImpuritySubstance
Parent: SubstanceDefinition
Id: pqcmc-drug-product-substance-impurity
Title: "Drug Substance Impurity"
Description: "Any component of the drug substance that is not the chemical entity for product composition."
* obeys cmc-impurity-unii-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* classification 1..* MS
* classification from PqcmcImpurityClassificationTerminology (required)
* classification ^short = "Impurity Classification"
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined]
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables.
"""
* insert SubstanceCharacterization
* structure 0..1 MS
//* structure obeys cmc-representation-or-document
* structure.technique MS
* structure.technique ^short = "Impurity Substance Characterisation Technique"
* structure.technique ^definition = """The technique used to elucidate the structure or characterisation of the drug substance. [Source: SME Defined] Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay.
"""
* structure.technique only CodeableConceptTextOnly
* structure
  * representation MS
    * ^short = "Impurity Structure Graphic | Impurity Structure Data File"
    * ^slicing.discriminator.type = #value
    * ^slicing.rules = #closed
    * ^slicing.discriminator.path = "type"
    * ^slicing.ordered = false
    * type 1..1 MS
    * type from PqcmcRepresentationTypes (required)
  * representation contains
    graphic 0..1 and
    structureFile 0..* and
    structureString 0..*
  * representation[graphic]
    * ^short = "A graphical, displayable depiction of the structure (e.g. an SVG, PNG)"
    * type 1..1 MS
      * ^short = "Graphic"
    * type = $NCIT#C54273
    * document 1..1
      * ^short = "Impurity Structure Graphic"
      * ^definition = """
        A pictorial representation of the structure of the impurity substance. 
        [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for 
        use in eCTD' Example: This is the representation of the molecule CH3OH, 
        or the sequence SHLVEALALVAGERG.
      """
    * insert PQReference(document)
    * document only Reference(GraphicReference)
  * representation[structureFile]
    * ^short = "machine-readable representation -- attached file"
    * type 1..1 MS
      * ^short = "Structure File"
    * type = $NCIT#C103240
    * document 1..1 MS
      * ^short = "Impurity Chemical Structure Data (files, e.g. .SDF, .CIF)"
    * insert PQReference(document)
    * document only Reference(StructureReference)
  * representation[structureString]
    * ^short = "machine-readable representation -- plain text"
    * type 1..1 MS
      * ^short = "Structure Textual"
    * type = $NCIT#C45253
    * format 1..1 MS
      * ^short = "Drug Substance Impurity Method Type"
    * format from PqcmcChemicalStructureDataFileTypeTerminology (required)
    * representation 1..1 MS
      * ^short = "Impurity Chemical Structure Data (short, plain text representations, e.g. SMILES)"
      * ^definition = """
        A machine-readable representation of the structure of the chemical. [Source: SME Defined]
        Examples: SMILES, INCHI
      """
//   * representation[structureData]
//     * ^short = "machine-readable representation -- may be plain text (e.g. SMILES) or an attached file (e.g. SDF)"
//     * format 0..1 MS
//     * format ^short = "Drug Substance Impurity Method Type"
//     * format.text 0..1 MS
//     * type 1..1 MS
//       * text 1..1 MS
//       * text = "Structure"
//     * representation 0..1 MS
//     * representation ^short = "Impurity Chemical Structure Data (short, plain text representations, e.g. SMILES)"
//     * representation ^definition = """A machine-readable representation of the structure of the chemical. [Source: SME Defined]
// Examples: Structured Data File (SDF), MOLFILE, InChI file (small molecule), PDB, mmCIF (large molecules), HELM.
// """
//     * document 0..1 MS
//     * document ^short = "Impurity Chemical Structure Data (large files, e.g. SDF, CIF)"
//     * document only Reference(StructureReference)

// impurities might be unknown and not have Unii's
* insert UniiAndUniProtCodes(0)
* insert ShortSetSubstanceNames
* insert CompanyName

//Rulesets---------------------------------------------------------------------------------------------------------------*/
RuleSet: SubstanceCharacterization
* characterization MS
  * technique MS
  * technique only CodeableConceptTextOnly
    * ^definition = """The technique used to elucidate the structure ore characterization of the drug substance. [Source: SME Defined]
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
    * ^short = "Substance Characterisation Technique"
  * description 0..1 MS
    * ^short = "Analysis Narrative Text and Table"
    * ^definition = ""
  * file 0..* MS
    * ^short = "Impurity Analysis Graphic | Impurity Analytical Instrument Data File"
    * ^slicing.discriminator.type = #profile
    * ^slicing.rules = #open
    * ^slicing.discriminator.path = "$this"
    * ^slicing.ordered = false
  * file contains 
    AnalysisGraphic 0..* and
    AnalyticalInstrumentData 0..*
  * file[AnalysisGraphic] only GraphicAttachment
    * ^short = "Analysis Graphic"
    * ^definition = """Analysis Graphic: The pictorial representation of the data. [Source: SME Defined] Examples: spectrum, chromatogram.
Note: Refer to the 'Acceptable File Formats for use in eCTD'
Example: This is the representation of the instrumental output for the molecule -- CH3OHA pictorial representation of the structure of the drug substance. Required for Small Molecules. [Source: SME Defined]"""
  * file[AnalyticalInstrumentData] only AnalyticalInstrumentData
    * ^short = "Analytical Instrument Data File"
    * ^definition = """Impurity Analytical Instrument Data File: The transport format for data exchange. [Source: SME Defined]
Example: JCAMP, ADX, ADF."""

Profile: DrugProductIngredient
Parent: Ingredient
Id: pqcmc-dp-ingredient
Title: "Drug Product Batch Formula Ingredient"
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."

* identifier 0..1 MS
* substance.code 1..1 MS
* substance.code ^short = "Ingredient Substance"
* insert PQCodeableReference(substance.code)
* substance.code only CodeableReference(pqcmc-routine-drug-substance or pqcmc-excipient)
* substance
  * strength 2..2 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.rules = #closed
    * ^slicing.discriminator.path = "concentration.code"
    * ^slicing.ordered = false
  * strength contains 
    perBatch 1..1 MS and
    percent 1..1 MS
  * strength[perBatch]
    * ^short = "Ingredient Total per Batch"
    * ^definition = "the total amount of thi ingredient present in the batch"
    * concentration[x] 1..1 MS
    * concentration[x] only Quantity
    * concentrationQuantity.code 1..1 MS
    * concentrationQuantity.code from PqcmcNonPercentageUnits (required)
  * strength[percent]
    * ^short = "Ingredient percent of Total Batch"
    * concentration[x] 1..1 MS
    * concentration[x] only Quantity
    * concentrationQuantity.code 1..1 MS
    * concentrationQuantity.code from PqcmcPercentageUnits (required)


RuleSet: GraphicAndStructureRepresentations(graphicsCardinality, structureFileCardinality,structureStringCardinality)
* structure
  * representation MS
    * ^short = "Impurity Structure Graphic | Impurity Structure Data File"
    * ^slicing.discriminator.type = #value
    * ^slicing.rules = #closed
    * ^slicing.discriminator.path = "type"
    * ^slicing.ordered = false
    * type 1..1 MS
    * type from PqcmcRepresentationTypes (required)
  * representation contains
    graphic {graphicsCardinality} and
    structureFile {structureFileCardinality} and
    structureString {structureStringCardinality}
  * representation[graphic]
    * ^short = "A graphical, displayable depiction of the structure (e.g. an SVG, PNG)"
    * type 1..1 MS
      * ^short = "Graphic"
    * type = $NCIT#C54273
    * document 1..1
      * ^short = "Impurity Structure Graphic"
      * ^definition = """
        A pictorial representation of the structure of the impurity substance. 
        [Source: SME Defined] Note: Refer to the 'Acceptable File Formats for 
        use in eCTD' Example: This is the representation of the molecule CH3OH, 
        or the sequence SHLVEALALVAGERG.
      """
    * insert PQReference(document)
    * document only Reference(GraphicReference)
  * representation[structureFile]
    * ^short = "machine-readable representation -- attached file"
    * type 1..1 MS
      * ^short = "Structure File"
    * type = $NCIT#C103240
    * document 1..1 MS
      * ^short = "Impurity Chemical Structure Data (files, e.g. .SDF, .CIF)"
    * insert PQReference(document)
    * document only Reference(StructureReference)
  * representation[structureString]
    * ^short = "machine-readable representation -- plain text"
    * type 1..1 MS
      * ^short = "Structure Textual"
    * type = $NCIT#C45253
    * format 1..1 MS
      * ^short = "Drug Substance Impurity Method Type"
    * format from PqcmcChemicalStructureDataFileTypeTerminology (required)
    * representation 1..1 MS
      * ^short = "Impurity Chemical Structure Data (short, plain text representations, e.g. SMILES)"
      * ^definition = """
        A machine-readable representation of the structure of the chemical. [Source: SME Defined]
        Examples: SMILES, INCHI
      """