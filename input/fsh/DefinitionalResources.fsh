Profile: BatchFormulaDrugProduct
Parent: MedicinalProductDefinition
Id: pqcmc-BatchFormulaDrugProduct
Title:    "Batch Formula Drug Product"
Description: "tbd"

* MedicinalProductDefinition.version 0..1 MS
* MedicinalProductDefinition.version ^short = "Product def version"


Profile: DrugSubstance										
Parent: SubstanceDefinition							
Id: pqcmc-DrugSubstance										
Title:    "Drug Substance"									
Description:   "E"									
	
* SubstanceDefinition.description	0..1 MS
* SubstanceDefinition.description ^short = "test of build"		
