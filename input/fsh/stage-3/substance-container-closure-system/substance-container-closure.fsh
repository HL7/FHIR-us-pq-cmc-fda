// Oct-30-24: This whole profile needs a rewrite,
// should probably be profiled on PackagedProductDefinition
// like how the product container closure was done, plus the
// container closure extension was removed a long time ago -CRN

Profile: SubstanceContainerClosure
Parent: SubstanceDefinition
Id: pqcmc-drug-substance-container-closure
Title: "Drug Substance Container Closure"
Description: "Description and coding of the container closure system. Profile on Drug Substance profile."

//* extension contains  pq-container-closure-extension named containerClosure 1..1 MS
* . obeys cmc-when-unii-required
* identifier 0..1 MS
  * ^short = "optional user designated identifier"
* manufacturer 1..1 MS
* insert PQReference(manufacturer)
* manufacturer only Reference(CodedOrganization)
* insert UniiAndUniProtCodes(1)
* insert ShortSetSubstanceNames