Extension: StrengthOperatorExtension  
Id: pq-strength-operator-extension  
Title: "Strength Operator"  
Description: "A mathematical symbol that denotes equality or inequality between two values."
* value[x] 1..1 MS   
* value[x] only CodeableConcept  
* value[x] from PqcmcStrengthOperatorTerminology (required) 
  
Extension: ContentPercentExtension  
Id: pq-content-percent-extension  
Title: "Content (%)"  
Description: "The percentage of the component in the drug product."  
* value[x] 0..1 MS 
* value[x] only decimal  
  
Extension: StrengthTypeExtension  
Id: pq-strength-type-extension  
Title: "Strength Type (for API)"  
Description: "A physical (content) of activity measurement of the strength of the active ingredint.." 
* value[x] 1..1 MS  
* value[x] only string  

Extension: StrengthTextExtension  
Id: pq-strength-text-extension  
Title: "Strength Text"  
Description: "The strength in text format." 
* value[x] 1..1 MS  
* value[x] only string 
  
Extension: ProductBatchIngredientExtension
Id: pq-product-batch-ingredient-extension
Title: "Product Batch Ingredient Extension"
Description: "Extension for measurement properties for ingredients in the batch formla.."
* extension contains  
  BatchIngredientIdentifier 1..1 MS and
  BatchIngredientVersion 1..1 MS and
  overagePercent 0..1 MS and  
  overageJustification 0..1 MS and 
  quantityPerBatch 1..1 MS and
  amountText 1..1 MS
* extension[BatchIngredientIdentifier].value[x] only string
* extension[BatchIngredientIdentifier].value[x] ^short = "ProductComposition Identifier"
* extension[BatchIngredientIdentifier].value[x] ^definition = "An alphanumeric identifier assigned to a prospective Batch Ingredient plan by the sponsoring organication. [Source: SME Defined]"
* extension[BatchIngredientVersion].value[x] only string
* extension[BatchIngredientVersion]..value[x] ^short = "ProductComposition Version"
* extension[BatchIngredientVersion].value[x] ^definition = """The alphanumeric text assigned by the sponsor to a particular edition of a stability study that is sequential. [Source: SME Defined]
Examples: 2.1, 2.2 or A1, Aw or P1, P2, etc."""
* extension[overagePercent].value[x] only decimal  
* extension[overagePercent].value[x] ^short = "Overage Percent" 
* extension[overagePercent].value[x] ^definition = """Overage is the percent of a drug substance in excess of the label claim to compensate for the loss, such as manufacturing or other. 
Note: This is not for stability loss, and generally not permitted. 
Example: 3% overage of drug that has a label claim of 10mg of active (API) - the formulation would have 10.3 mg. A batch formula for 100 kg would contain 103 kg of API. 
"""
* extension[overageJustification].value[x] only markdown  
* extension[overageJustification].value[x] ^short = "Overage Justification"
* extension[overageJustification].value[x] ^definition = "The rationale for use of excess drug substance during manufacturing of the drug product [Source: SME Defined]"  
* extension[quantityPerBatch].value[x] only Quantity 
* extension[quantityPerBatch] ^short = "Ingredient Quanty Per Batch"
* extension[quantityPerBatch] ^definition = """Quantity: The amount of material in a specific batch size [Source: SME Defined]
Example: 1000 kg
Quantity UOM: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709]
"""
* extension[amountText].value[x] only string   
* extension[amountText].value[x] ^short = "Strength Textual" 
* extension[amountText].value[x] ^definition = """A written description of the strength of the ingredient.[Source: SME Defined] 
Note: This is typically applicable to biologics 
Example: International Units for Enzymes 
 """  
Profile: DrugSubstance  
Parent: SubstanceDefinition  
Id: pqcmc-DrugSubstance  
Title: "Drug Substance"  
Description: "Drug Substance (Active Ingredient) nomenclature and characterization."  
* identifier 0..1 MS
* identifier ^short = "UNII (preferred)" 
* identifier ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]  
Example: 362O9ITL9D  
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/  
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

* structure 1..1 MS  
* structure.molecularFormula 0..1 MS  
* structure.molecularFormula ^short = "Molecular Formula" 
* structure.molecularFormula ^definition = "An expression which states the number and type of atoms present in a molecule of a substance. [Source: SME Defined]"
* structure.technique 1..1 MS  
* structure.technique ^short = "Substance Characterization Technique" 
* structure.technique ^definition = """The technique used to elucidate the structure or characterization of the drug substance. [Source: SME Defined] 
Examples: x-ray, HPLC, NMR, peptide mapping, ligand binding assay, etc.
"""
* structure.technique.text 1..1 MS 
* structure.representation 1..*  
* structure.representation.representation 0..1 MS 
* structure.representation.format 1..1  
* structure.representation.format from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.document only Reference(Base64DocumentReference)  
* code 1..* MS  
* code.code.coding 0..0  
* code.code.text 1..1 MS  
* code.code.text ^short = "UNII" 
* code.code.text ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/] 
Example: 362O9ITL9D
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/ 
"""
* name 1..* MS 
* name.name 1..1 MS  
* name.name ^short = "Substance Name |CAS Number |INN | USAN |IUPAC Name | ISBT 128| Company Code" 
* name.name ^definition = """Substance Name: A commonly used name or a systematic name assigned to the material or compound. [Source: SME Defined] Examples: acetaminophen; acetamide, N- (4-hydroxyphenyl)-; 4- hydroxyacetanilide; rituximab, OkT BR: Substance Name and the following identifiers (CAS, INN, USAN, IUPAC) collectively are providing the name, depending on the Substance Type (in IDMP), one of these identifiers is mandatory. 

CAS Number: Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org] Example: CAS [103-90-2] 

INN: International Nonproprietary Names (INN) is a unique name that is globally recognized and is public property. A nonproprietary name is also known as a generic name. Note: International Nonproprietary Names (INN) facilitate the identification of pharmaceutical substances or active pharmaceutical ingredients [Source: http://www.who.int/medicines/services/inn/en/] Example: Paracetamol 

USAN: A unique nonproprietary name assigned to drugs and biologics and assigned by the United States Adopted Names Council [Source: SME Defined] Example: acetaminophen

ISBT 128: It is the global standard for the terminology, identification, coding and labeling of medical products of human origin (including blood, cell, tissue, milk, and organ products). [Source: https://www.iccbba.org/] BR: Applicable to blood products. 

Company Code An internal identifier assigned by the sponsor to this drug substance. [Source: SME Defined]
""" 
* name.type 1..1 MS  
* name.type.coding ^short = "The code indicatiing the name source or type"  
* name.type.coding from PqcmcNameTypes
* name.preferred MS  
* name.preferred ^short = "True when the name type is Substance Name" 
* relationship.substanceDefinitionReference only Reference(ImpuritySubstance or PolymorphicForm or ComponentSubstance )  
* relationship.type.text  
* relationship.type.text ^short = "Preferred values: 'Polymorph', 'Raw Material', and 'Impurity'" 
//* Is a rule set required so that if reference is PolymorphicForm text is "Polymorph", if ComponentSubstance then text is "Raw Material" DrugSubstanceImpurity then text is "Impurity"   
  
Profile: ImpuritySubstance  
Parent: SubstanceDefinition  
Id: pqcmc-DrugSubstanceImpurity  
Title: "Drug Substance Impurity"  
Description: "Any component of the drug substance that is not the chemical entity."  
* identifier 0..1 
* identifier ^short = "UNII (of the Impurity)" 
* identifier ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/]  
Example: 362O9ITL9D  
Note: If a UNII does not exist, please go to http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/  
"""  
* classification 1..* MS
* classification ^short = "Impurity Classification" 
* classification ^definition = """A categorization of impurities based on its origin. [Source: SME Defined] 
Examples: Degradation Product, Inorganic, Process Related/Process, Product Related, Leachables. 
"""  
* classification from PqcmcImpurityClassificationTerminology
* structure.representation 1..* MS  
* structure.representation ^short = "Structural Representation" 
* structure.representation.type.coding 0..0 
* structure.representation.type.text 1..1
* structure.representation.type.text ^short = "Structural Representation Type"
* structure.representation.type.text ^definition = """A format name or abbreviation that identifies a file structure. [Source: SME Defined] 
Examples: SMILES, MOLFILE, HELM, etc. 
"""  
* structure.representation.representation 0..1 MS  
* structure.representation.representation ^short = "Impurity Chemical Structure Data File | Impurity Analytical Instrument Data File" 
* structure.representation.representation ^definition = """Impurity Chemical Structure Data File: A machine readable representation of the structure of the chemical. [Source: SME Defined] 
Examples: Structured Data File (SDF), MDL MOLFILE, IUPAC Chemical Identifier (InChI) file. 

Impurity Analytical Instrument Data File: The transport format for data exchange. [Source: SME Defined] 
Example: JCAMP, ADX, ADF.
"""
* structure.representation.format 0..1 MS
* structure.representation.format ^short = "Impurity Analytical Instrument Data File Type" 
* structure.representation.format ^definition = """A value that identifies a file structure. [Source: SME Defined]
Examples: Joint Committee on Atomic and Molecular Physical Data (JCAMP), Analytical Information Markup Language (AnIML)
"""
* structure.representation.format.coding 0..1 
* structure.representation.format.coding.code from PqcmcChemicalStructureDataFileTypeTerminology
* structure.representation.format.text 0..1 
* structure.representation.document 0..1 MS 
* structure.representation.document ^short = "Impurity Analysis Graphic" 
* structure.representation.document ^definition = """The pictorial representation of the data. [Source: SME Defined]
Examples: spectrum, chromatogram
"""
* structure.representation.document only Reference(Base64DocumentReference)  
* name.name 1..1 MS 
* name.name ^short = "Drug Product Impurity Name" 
* name.name ^short = """Any component of the drug substance which is not the chemical entity defined as the drug substance. [Source: ICH Q6A]
Examples: CHO cell protein, QQ201234, Residual DNA, gentamicin.
Note: For example, this could also be a common name, systematic name or a company code
"""

Profile: PolymorphicForm  
Parent: SubstanceDefinition  
Id: pqcmc-PolymorphicForm  
Title: "Polymorphic Form"  
Description: "Alternate structure present in the drug substance"  
* identifier    
* identifier ^short = "UNII" 
* identifier ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/] 
Example: 362O9ITL9D 
Note: If a UNII does not exist, please go to * http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/ 
"""
* identifier 0..1  
* structure MS  
* structure.representation.type 1..1  
* structure.representation.type.text  
* name.name 1..1 MS  
* name.name ^short = "Polymorphic Form Identification"
* name.name ^definition = """The designation of the polymorphs present in the drug substance. [Source: SME Defined]
Example: Polymorph A 
"""
  
Profile: ComponentSubstance  
Parent: SubstanceDefinition  
Id: pqcmc-ComponentSubstance  
Title: "Component Substance"  
Description: "Any raw material intended for use in the manufacture of a drug substance, or any ingredient intended for use in the manufacture of a drug product including those that may not appear in such drug product."  
* identifier 1..1   
* identifier ^short = "UNII preferred" 
* identifier ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/] 
Example: 362O9ITL9D 
Note: If a UNII does not exist, please go to  http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/ 
""" 
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
* structure.representation 1..*  
* structure.representation.representation 0..1 MS  
* structure.representation.format 1..1  
* structure.representation.format.text  
* structure.representation.document 0..1 MS  
* structure.representation.document only Reference(Base64DocumentReference)  
* code MS  
* code.code.text 0..1  
* code.code ^short = "CAS Number" 
* code.code ^definition = """Number Chemical Abstract Service (CAS) Registry Numbers (often referred to as CAS RNs or CAS Numbers) are used to provide identifiers for chemical substances. A CAS Registry Number itself has no inherent chemical significance but provides a way to identify a chemical substance or molecular structure when there are many possible systematic, generic, proprietary or trivial names. [Source: Adapted from CAS.org] Example: CAS [103-90-2] 
"""
* code.code.text 0..1  
* name.name 1..1 MS  
* name.name ^short = "Component | Raw Material Name" 
* sourceMaterial 1..1 MS  
* sourceMaterial.type 1..1  
* sourceMaterial.type ^short = "Source Type" 
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined] 
Example: cat hair would be an Animal source type """
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 1..1 MS
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
* sourceMaterial.countryOfOrigin 1..1 MS  
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin" 
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 0..0 
* sourceMaterial.countryOfOrigin.coding from http://terminology.hl7.org/CodeSystem/v3-Country
* sourceMaterial.countryOfOrigin.text 1..1 MS 
  
Profile: Excipient  
Parent: DrugSubstance  
Id: pqcmc-excipient  
Title: "Excipient Drug Substance"  
Description: "Provides sufficient information to identify an inactive substance and its source."  
  
* identifier ^short = "UNII" 
* identifier ^definition = """The UNII is a non-proprietary, free, unique, unambiguous, non-semantic, alphanumeric identifier based on a substance’s molecular structure and/or descriptive information. [Source: http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/] 
Example: 362O9ITL9D 
Note: If a UNII does not exist, please go to 
http://www.fda.gov/ForIndustry/DataStandards/SubstanceRegistrationSystem-UniqueIngredientIdentifierUNII/ 
"""
* identifier 1..1  
* grade 1..1  
* grade ^short = "Benchmark? check" 
* grade from PqcmcQualityBenchmarkTerminology 
* manufacturer 1..1 MS  
* manufacturer only Reference(MfgTestSiteOrganization)  
* supplier 0..1 MS  
* supplier only Reference(MfgTestSiteOrganization)  
* name.name 1..1 MS  
* name.name ^short = "Component/Raw Material Name" 
* sourceMaterial 1..1 MS  
* sourceMaterial.type 1..1  
* sourceMaterial.type ^short = "Source Type" 
* sourceMaterial.type ^definition = """A classification that provides the origin of the raw material. [Source: SME Defined] 
Example: cat hair would be an Animal source type """
* sourceMaterial.type from PqcmcSourceTypeTerminology
* sourceMaterial.genus 1..1 MS
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
* sourceMaterial.countryOfOrigin 1..1 MS  
* sourceMaterial.countryOfOrigin ^short = "Source Organism Country of Origin" 
* sourceMaterial.countryOfOrigin ^definition = "The name of the country where the organism was reared. [Source: SME Defined]"
* sourceMaterial.countryOfOrigin.coding 0..0 
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
* status.code  
* for only Reference(DrugProductDescription)  
* for ^short = "Reference to MedicinalProductDefinition" 
* role.coding.code 1..1 MS  
* role.coding.code ^short = "Drug Product Component Function Category" 
* role.coding.code ^definition = """A classification that identifies the higher level purpose of that material. [Source: SME Defined] 
Example: Active Ingredient, Inactive Ingredient, Adjuvant. 
"""
* role.coding.code from PqcmcDrugProductComponentFunctionCategoryTerminology 
* function 1..1 MS  
* function.coding.code 0..1 MS // need rule for expienet  
* function.coding.code ^short = "PQ/CMC Excipient Function???" 
//* function.coding.code ^definition
* function.coding.code from PqcmcExcipientFunctionTerminology
* group 0..1 MS  
* group ^short = "Component Group" 
* substance.code.reference 1..1 MS  
* substance.code.reference ^short = "Ingredient Substance" 
* substance.code.reference only Reference(ComponentSubstance)  
* substance.strength 1..1 MS  
* substance.strength.extension 3..3  
* substance.strength.extension contains pq-strength-type-extension named strengthType 1..1 MS  
* substance.strength.extension[strengthType] ^short = "Strength Type (for API)" 
* substance.strength.extension[strengthType] ^definition = """A physical (content) or activity measurement of the strength of the ingredient. [Source: SME Defined] 
Example: Mass, Activity 
"""
* substance.strength.extension contains pq-content-percent-extension named contentPercent 1..1 MS  
* substance.strength.extension[contentPercent] ^short = "Content (%)" 
* substance.strength.extension[contentPercent] ^definition = "The percentage of the component in the drug product. [Source: SME Defined]"
* substance.strength.extension contains pq-strength-text-extension named asText 0..1 MS  
* substance.strength.extension[asText] ^short = "Strength Textual" 
* substance.strength.extension[asText] ^definition = "A written description of the strength of the ingredient. [Source: SME Defined]
Note: This is typically applicable to biologics
Example: International Units for Enzymes
"
//* substance.strength.inText 1..1 MS  
* substance.strength.presentation[x] 1..1 MS  
* substance.strength.presentation[x] only Ratio or Quantity  
* substance.strength.presentationRatio.numerator MS  
* substance.strength.presentationRatio.numerator ^short = "Strength Numeric Numerator" 
* substance.strength.presentationRatio.numerator ^definition = "The content of an ingredient expressed quantitatively per dosage unit, per unit of volume, or per unit of weight, according to the pharmaceutical dosage form. This should be the strength as listed on the label. [Source: Adapted from NCI EVS C53294]"
* substance.strength.presentationRatio.numerator 0..1 MS
* substance.strength.presentationRatio.numerator.unit 1..1 MS
* substance.strength.presentationRatio.numerator.code 1..1 MS
* substance.strength.presentationRatio.numerator.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationRatio.numerator.value 1..1 MS
* substance.strength.presentationRatio.denominator MS  
* substance.strength.presentationRatio.denominator ^short = "Strength Numeric Denominator" 
* substance.strength.presentationRatio.denominator ^definition = """ Specifies the quantity of the ingredient(s) consistent with a single unit dose or as expresssed on the label. [Source: SME Defined] 
Note: Kg value is only applicable for veterinary applications. 
Note: This is the denominator value when expressing the strength for APIs 
Example: 5 mg per 100 mL 
Note: For Excipients, this is the amount 
"""
* substance.strength.presentationRatio.denominator 0..1 MS
* substance.strength.presentationRatio.denominator.unit 1..1 MS
* substance.strength.presentationRatio.denominator.code 1..1 MS
* substance.strength.presentationRatio.denominator.code from  PqcmcUnitsMeasureTerminology
* substance.strength.presentationRatio.denominator.value 1..1 MS
* substance.strength.presentationQuantity.extension contains pq-strength-operator-extension named strengthOperator 0..1 MS  
* substance.strength.presentationQuantity.extension[strengthOperator] ^short = "Strength Operator" 
* substance.strength.presentationQuantity.extension[strengthOperator] ^definition = """A mathematical symbol that denotes equality or inequality between two values 
Note: This is typically applicable to biologics """
  
Profile: DrugProductIngredient  
Parent: Ingredient  
Id: pqcmc-ingredient  
Title: "Drug Product Ingredient"  
Description: "The amount details about the drug product ingredients in the batch. Use for Batch Formula."  
  
* ^url = "https://hl7.org/fhir/pq-cmc/StructureDefinition/prf-pqcmc-ingredient"  
* .extension contains pq-additional-info-extension named additional-info 0..1 MS  
* .extension[additional-info] ^short = "Drug Product Component Additional Information" 
* .extension[additional-info] ^definition = """A placeholder for providing any comments relevant to the component. [Source: SME Defined]
Examples: Water for wet granulation - removed during process; adjusted for loss on drying, etc.
"""
* .extension contains pq-product-batch-ingredient-extension named formulaIngredient 1..1 MS 
* substance.code.reference 1..1 MS  
* substance.code.reference ^short = "Ingredient Substance" 
* substance.code.reference only Reference(pqcmc-routine-drug-substance)  


Profile: DrugSubstancemanufacturingBatch  
Parent: http://hl7.org/fhir/StructureDefinition/medication-manufacturingBatch  
Id: drug-substance-manufacturing-batch  
Title: "Drug Substance Manufacturing Batch"  
Description: "This profile defines the details of a batch of API."  
  
* ^url = "https://hl7.org/fhir/pq-cmc/StructureDefinition/extSubstanceMfgBatch"  
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

//* extension[container] 1..* MS  
//* extension[container] ^short = "Container" 
//* extension[container] ^definition = "Detials of the container."
// * extension[container].extension[lotNumber] 1..1 MS 
// * extension[container].extension[lotNumber] ^short = "Container Lot Number" 
// * extension[container].extension[lotNumber] ^definition = """A combination of letters, numbers, or symbols, or any combination of them to uniquely identify the container's manufacturing lot. 
// // Note: This is different from the drug product batch/lot number. Example: Company A makes batch of bottles (container) -- need a lot number on the container (bottle) assigned by the manufacturer of the bottle (container). This requirement becomes critical when the dosing and delivery of the drug is impacted by the container (bottle).
// // """
// * extension[container].extension[lotNumber].string 1..1 MS 
// * extension[container].extension[type] 1..1 MS 
// * extension[container].extension[type] ^short = "Container Type" 
// * extension[container].extension[type] 
// * extension[container].extension[type] ^definition = "The kind of container that drug substances and finished dosage forms are contained in, which could include both the immediate (or primary) and secondary containers [Source: Adapted from NCI Thesaurus C43164]" 
// * extension[container].extension[type].CodeableConcept 1..1 MS 
// * extension[container].extension[type].CodeableConcept from 
// * extension[container].extension[quantity] 1..1 MS 
// * extension[container].extension[quantity] ^short = "Container Fill per Container Size" 
// * extension[container].extension[quantity] ^definition = """Container Fill: Amount or volume of the drug product in the container. [Source: SME Defined]. Examples: 100 tablets; 10 mL, 1 transdermal system, 1 sachet, etc. Note: the examples include both the Container Fill and the Container Fill Unit 
// // Container Fill: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: tablets, mL.
// // Container Size: The volume or physical proportions or dimension of the container. [Source: SME Defined] Example: 250 (mL) Note: may not apply to all container types, for example – single dose dose container sizes
// // Container Size Unit: A named quantity in terms of which other quantities are measured or specified, used as a standard measurement of like kinds. [Source: NCI EVS - C25709] Examples: mL, L, cc.
// // """
// * extension[container].extension[quantity].Ratio 1..1 MS 
// * extension[container].extension[closureSystemDescription] 1..1 MS 
// * extension[container].extension[closureSystemDescription] ^short = "Container Closure System Description" 
// * extension[container].extension[closureSystemDescription] ^definition = """Any textual comments that describe the sum of container closure system (CCS) components that together contain and protect the dosage form or drug substance. [Source: Adapted from Q1A(R2)-ICH Glossary] 
// // Example: White opaque, round 50 mL HDPE bottle with a fitted 33 mm child resistant black polypropylene threaded cap closure, aluminum sealed, and containing molecular sieve canister 2 gm (CAN TRISORB 2G) as desiccant.
// // Note: This includes primary packaging components and secondary packaging components, if the latter are intended to provide additional protection to the drug substance or the drug product. A packaging system is equivalent to a container closure system. [Source: Adapted from Q1A(R2)-ICH Glossary]
// // """
// * extension[container].extension[closureSystemDescription].string 1..1 MS 
// * extension[container].extension[closureType] 1..1 MS 
// * extension[container].extension[closureType] ^short = "Closure Type" 
// * extension[container].extension[closureType] ^definition = "The kind of closures used for the container in which the drug substances and finished dosage forms are stored. [Source: SME Defined]" 
// * extension[container].extension[closureType].CodeableConcept 1..1 MS 
// * extension[container].extension[closureType].CodeableConcept from  
  
  
Profile: DrugSubstanceBatch  
Parent: Substance  
Id: pqcmc-drug-substance-batch   
Title: "Drug Substance Manufactured Batch"  
Description: "Includes the properties of the drug substance as manufactured."  
  
* extension contains drug-substance-manufacturing-batch named api-excipient-batch 1..1 MS 
* extension contains pq-batch-container-closure-extension named batch-container 1..1 MS   
* identifier.value 1..1 MS  
* identifier.value ^short = "Drug Substance Lot Number"
* identifier.value ^definition = "Lot number of the drug substance used in manufacturing a drug product batch. [Source: SME Defined]"
* instance = true  
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
//________________________________________________________________
/// Profiles on Profiles
//________________________________________________________________

Profile: RoutineSubstanceDefinition  
Parent: DrugSubstance  
Id: pqcmc-routine-drug-substance  
Title: "Routine Drug Substance"  
Description: "Provides sufficient information to identify a drug substance. Profile on Drug Substance profile."  
  
* identifier 1..1 
* manufacturer 1..1 
* supplier 0..1  
* code 1..1  
* name.name 1..1   

Profile: SubstanceContainerClosure  
Parent: DrugSubstance  
Id: pqcmc-drug-substance-container-closure  
Title: "Drug Substance Container Closure"  
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."   
* extension contains pq-container-closure-extension named containerClosure 1..1 MS   
* identifier 1..1 
* manufacturer 1..1  
* code 1..1  
* name.name 1..1   

Profile: DrugSubstanceNomenclature  
Parent: DrugSubstance  
Id: pqcmc-drug-substance-nomenclature   
Title: "Substance Nomenclature" 
Description: "Drug Substance (Active Ingredient) nomenclature. Profile on Drug Substance profile."  

* identifier 0..1   
* manufacturer 1..1   
* supplier 0..1 
* molecularWeight 0..1
* code.code.text 1..1  
* name.name 1..1 
* name.type 1..1 
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
* code.code.text 1..1 
* name.name 1..1 
* name.type 1..1 

Profile: DrugSubstanceMaterials  
Parent: DrugSubstance  
Id: pqcmc-drug-substance-materials   
Title: "Substance Raw Materials" 
Description: "Drug Substance Raw Materials.  Profile on Drug Substance profile."   

* identifier 0..1 
* code.code.text 1..1  
* name.name 1..1 
* name.type 1..1 
* name.preferred 0..1 
* relationship.substanceDefinitionReference only Reference( ComponentSubstance )  
* relationship.type.text = "Raw Material" 

Profile: DrugSubstanceImpurities 
Parent: DrugSubstance  
Id: pqcmc-drug-substance-impurities  
Title: "Substance Impurities" 
Description: "Drug Substance Impurities. Profile on Drug Substance profile."   

* identifier 0..1 
* code.code.text 1..1  
* name.name 1..1 
* name.type 1..1 
* name.preferred 0..1 
* relationship.substanceDefinitionReference only Reference( ComponentSubstance )  
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
* structure.representation 1..1 
* structure.representation.representation 0..1   
* structure.representation.format 1..1   
* structure.representation.document 0..1   
* code.code.text 1..1 
* name.name 1..1 
* name.type 1..1 