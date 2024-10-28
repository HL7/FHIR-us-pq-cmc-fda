Profile: SubstanceContainerClosure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."

* meta.profile 0..1 MS
* extension contains  pq-container-closure-extension named containerClosure 1..1 MS
* . obeys cmc-when-unii-required
* identifier 0..1 MS
* identifier ^short = "optional user designated identifier"
* manufacturer 1..1 MS
* manufacturer only Reference(MfgTestSiteOrganization)
* insert UniiAndUniProtCodes
* insert ShortSetSubstanceNames