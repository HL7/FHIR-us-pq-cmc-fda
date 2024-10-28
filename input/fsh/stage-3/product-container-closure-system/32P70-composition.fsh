Profile: EctdComposition32P70
Parent: Composition
Id: ectd-composition-32p70
Title: "eCTD Product Container Closure System Composition"
Description: "The fields needed to represent the Product Container Closure Systems to be included under the eCTD p.7.0"

* meta.profile 1..1 MS 
* status = #final
* identifier 0..1 MS
* type = $SectionTypes#32P70 "Product Container Closure System"
* author 1..1 MS
* author only Reference(SponsorOrganization)
* title 1..1 MS
/*
    SECTION SLICES - not requried - only one option
*/
* section 1..1 MS
* section.entry MS
* section ^definition = "Product Container Closure System to be included under the 3.2.P.7.0 eCTD heading."
* section.code = $SectionTypes#32P70 "Product Container Closure System"
* section.title 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(ContainerClosure)