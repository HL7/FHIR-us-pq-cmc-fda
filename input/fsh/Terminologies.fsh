CodeSystem: CmcRelationshipTypes	
Id: cmc-relationship-types	
Title: "Relationship Types Codes"
Description: "Local value set of all codes in the Relationship Types code system."
* ^caseSensitive = true
* ^experimental = false	

* #parent "Parent"
* #child "Child"
* #primary "Primary"

CodeSystem: NCItDummy
Id: cmc-ncit-dummy
Title: "Dummy NCIT Codesystem"
Description: "This is a dummy codesystem representing NCIt. It contains all the codes that are usable within the IG.
It exists solely because NCIt currently cannot be validated against and because https://example.com/ codesystems are
not allowed by the validator."
* ^caseSensitive = true
* ^experimental = true	

* #batchsize "Batch Quantity"
* #batchinfo "Batch Formula Additional Information"
* #BatchUtil "Batch Utilization"
* #info "Product Part Additional Information"
* #CC201 "Accelerated"
* #CC202 "Intermediate"
* #CC203 "Long term"
* #154 "Blend"
* #155 "Bead"
* #156 "Capsule Shell"
* #157 "Coating"
* #158 "Dispersion"
* #159 "Granules"
* #115 "Layer"
* #116 "Minitablet"
* #117 "Solution"
* #118 "Tablet"
* #148 "Active core/granulate"
* #149 "Extragranular"
* #150 "Intragranular"
* #101 "DR"
* #102 "ER"
* #103 "IR"
* #104 "Not Applicable"
* #106 "Matrix"
* #107 "Osmotic Pump"
* #108 "Reservoir"
* #119 "Appearance/Identification"
* #120 "Consumption Enhancement"
* #121 "Content Isolation"
* #122 "Drug Layering"
* #123 "Irritant Suppression"
* #124 "Odor Masking"
* #125 "Protective"
* #126 "Rate-controlling"
* #127 "Release Type"
* #128 "Site of Action"
* #129 "Seal or Non-functional"
* #130 "Taste Masking"
* #131 "Hard Gelatin Capsule"
* #132 "Hard HPMC Capsule"
* #133 "Hard Pullulan Capsule"
* #134 "Hard Starch Capsule"
* #135 "Hard PVA Capsule"
* #136 "Soft Gelatin Capsule"
* #137 "Brand"
* #138 "Generic"
* #139 "Common"
* #141 "GSRS Preferred"
* #145 "Systematic"
* #147 "USP/NF"
* #222 "CAS Number"
* #223 "INN"
* #224 "USAN"
* #225 "IUPAC"
* #226 "ISBT 128"
* #Company "Company ID/Code"
* #C115123 "Abbreviated New Animal Drug Application"
* #C73113 "Abbreviated New Drug Application"
* #C96089 "Annual Report"
* #C96094 "Supplement to an Approved Application"
* #C71778 "Biologics License Application"
* #C70877 "Master File"
* #C115122 "Generic Investigational New Animal Drug File"
* #C80440 "Humanitarian Device Exemption (HDE)"
* #C82667 "Investigational Device Exemption"
* #C96091 "Investigational New Animal Drug File"
* #C96090 "Investigational New Drug Application"
* #C96092 "New Active Ingredient"
* #C72901 "New Animal Drug Application"
* #C72899 "New Drug Application"
* #C70880 "Premarket Approval"
* #C80442 "Premarket Notification 510(K)"
* #C96154 "Ambient Delayed Testing"
* #C96151 "Delayed Testing"
* #C96153 "Frozen Delayed Testing"
* #C96150 "Immediate Testing"
* #C96155 "Refrigerated Delayed Testing"
* #C134028 "Complex"
* #C134027 "Cycled-Simple"
* #C96087 "Photostability"
* #C134026 "Standard"
* #C185182 "Approved"
* #C48660 "Not Applicable"
* #C185188 "Proposed"
* #C185186 "Adequate"
* #OvrRelsProf "Product Overall Release Profile"
* #OvrRelsMech "Product Overall Release Mechanism"
* #CoatInd "Coating Indicator"
* #TabLayCnt "Tablet Layer Count"
* #BeaTypCnt "Tablet Bead Type Count"
* #CapConCnt "Capsule Constituent Count"
* #CapClass "Capsule Classification Category"
* #Schematic "Product Schematic"
* #WgtTyp "Product Weight Type"
* #TotWgtNum "Product Total Weight Numeric Numerator"
* #TotWgtDen "Product Total Weight Numeric Denominator"
* #TotWgtTxt "Total Weight Textual"
* #TotWgtOper "Total Weight Operator"
* #PPiD "Product Part Identifier"
* #PPiDref "Product Part Identifier Reference"
* #RelsProf "Product Part Release Profile"
* #RelsMech "Product Part Release Mechanism"
* #CoatPurpose "Coating Product Part Purpose"
* #Color "Product Part Color Description"
* #ContPercent "Product Part Content Percent"
* #AddInfo "Product Part Additional Information"
* #StrnType "Strength Type (for API)"
* #AmtOper "Product Part Ingredient Amount Operator"
* #AmtText "Product Part Ingredient Amount Textual"
* #C133994 "Bioequivalence"
* #C133992 "Clinical"
* #C133990 "Commercial"
* #C133991 "Development"
* #C133993 "Validation"
* #C185328 "Stability Study"
* #C16275 "Calculated"
* #C133995 "Experimental"
* #C54683 "InChI File (small molecule)"
* #C133997 "mmCIF (large molecules)"
* #C133910 "MOLFILE"
* #C49039 "PDB"
* #C133996 "SDF"
* #C54684 "SMILES"
* #C85435 "SVG"
* #C96113 "Child-resistant, Metal"
* #C96114 "Child-resistant, Plastic"
* #C96115 "Continuous Thread, Metal"
* #C96116 "Continuous Thread, Plastic"
* #C96117 "Tamper-evident, Metal"
* #C96118 "Tamper-evident, Plastic"
* #C96119 "Vacuum, Metal"
* #C96120 "Tamper-evident, Composite"
* #C96121 "Vacuum, Plastic"
* #C96122 "Vacuum, Composite"
* #C96123 "Press-on/twist-off, Metal"
* #C96124 "Press-on, Composite"
* #C96125 "Crown, Metal"
* #C96126 "Lug, Metal"
* #C96127 "Roll-on, Metal"
* #C96128 "Flip-Top (Dispensing), Plastic"
* #C96129 "Hinged (Dispensing), Plastic"
* #C96130 "Linerless, Plastic"
* #C96131 "Pump (Dispensing), Plastic"
* #C96132 "Push-pull (Dispensing), Plastic"
* #C96133 "Snap-on Cap, Plastic"
* #C96134 "Snip-tip (Dispensing), Plastic"
* #C96135 "Toggle-swing (Dispensing), Plastic"
* #C96136 "Trigger Sprayer (Dispensing), Plastic"
* #C96137 "Twist Open/Close (Dispensing), Plastic"
* #C96138 "Valved (Dispensing), Plastic"
* #C96139 "Stopper"
* #C96140 "Tie"
* #C80262 "Conforms"
* #C133998 "Does not conform"
* #C25241 "Horizontal"
* #C133999 "Inverted"
* #C86043 "Upright"
* #C133915 "Valvedown"
* #C133914 "Valveup"
* #C43165 "AMPULE"
* #C43166 "APPLICATOR"
* #C43167 "BAG"
* #C43168 "BLISTER PACK"
* #C43169 "BOTTLE"
* #C43170 "BOTTLE, DISPENSING"
* #C43171 "BOTTLE, DROPPER"
* #C43172 "BOTTLE, GLASS"
* #C43173 "BOTTLE, PLASTIC"
* #C43174 "BOTTLE, PUMP"
* #C43175 "BOTTLE, SPRAY"
* #C43176 "BOTTLE, UNITDOSE"
* #C43177 "BOTTLE, WITH APPLICATOR"
* #C43178 "BOX"
* #C43179 "BOX, UNITDOSE"
* #C43180 "CAN"
* #C43181 "CANISTER"
* #C96143 "Canisters, lined"
* #C92708 "CAPSULE"
* #C43182 "CARTON"
* #C43183 "CARTRIDGE"
* #C43184 "CASE"
* #C43185 "CELLO PACK"
* #C43186 "CONTAINER"
* #C43187 "CUP"
* #C43188 "CUP, UNITDOSE"
* #C43189 "CYLINDER"
* #C43190 "DEWAR"
* #C43191 "DIALPACK"
* #C96141 "Dish, Petri"
* #C43192 "DOSE PACK"
* #C43193 "DRUM"
* #C96144 "Flask"
* #C79135 "FLEXIBLE INTERMEDIATE BULK CONTAINER"
* #C16738 "INHALER"
* #C43194 "INHALER, REFILL"
* #C43195 "JAR"
* #C43196 "JUG"
* #C43197 "KIT"
* #C48626 "NOT STATED"
* #C43233 "PACKAGE"
* #C43198 "PACKAGE, COMBINATION"
* #C43199 "PACKET"
* #C79136 "PAIL"
* #C82332 "PATCH"
* #C96142 "Plate, Microwell"
* #C43200 "POUCH"
* #C43201 "SUPERSACK"
* #C43202 "SYRINGE"
* #C43203 "SYRINGE, GLASS"
* #C43204 "SYRINGE, PLASTIC"
* #C43205 "TABMINDER"
* #C43206 "TANK"
* #C53438 "TRAY"
* #C42794 "TUBE"
* #C43207 "TUBE, WITH APPLICATOR"
* #C43226 "VIAL"
* #C43208 "VIAL, DISPENSING"
* #C43209 "VIAL, GLASS"
* #C43210 "VIAL, MULTIDOSE"
* #C43211 "VIAL, PATENT DELIVERY SYSTEM"
* #C43212 "VIAL, PHARMACY BULK PACKAGE"
* #C43213 "VIAL, PIGGYBACK"
* #C43214 "VIAL, PLASTIC"
* #C43215 "VIAL, SINGLEDOSE"
* #C43216 "VIAL, SINGLEUSE"
* #C49487 "No"
* #C49488 "Yes"
* #C82533 "Active Ingredient"
* #C2140 "Adjuvant"
* #C42637 "Inactive Ingredient"
* #C1909 "Product"
* #C45306 "SUBSTANCE"
* #C176637 "Absorption modifier"
* #C89528 "Adhesive"
* #C176642 "Adsorbent"
* #C176643 "Air displacement"
* #C42654 "Anticaking agent"
* #C275 "Antioxidant"
* #C42647 "Binder"
* #C70815 "Buffering agent"
* #C176644 "Bulking agent"
* #C176645 "Carrier"
* #C360 "Chelating agent"
* #C42656 "Coloring agent"
* #C176646 "Complexing agent"
* #C53306 "Cryoprotectant"
* #C176647 "Denaturant"
* #C42648 "Disintegrant"
* #C42662 "Dispersing agent"
* #C176638 "Effervescent agent"
* #C176632 "Emollient"
* #C73477 "Emulsifying Excipient"
* #C176633 "Emulsion stabilizing agent"
* #C42650 "Filler"
* #C176648 "Film coating agent"
* #C176634 "Foam stabilizing agent"
* #C176649 "Free radical scavenger"
* #C176650 "Gelling agent"
* #C176651 "Humectant"
* #C42657 "Ink"
* #C42653 "Lubricant"
* #C176652 "Lyophilization aid"
* #C176653 "Matrixforming agent"
* #C176654 "Microencapsulating agent"
* #C176655 "Ointment base"
* #C176656 "Opacifier"
* #C176635 "Organoleptic agent"
* #C176657 "Osmotic agent"
* #C176658 "pH modifier"
* #C55826 "Plasticizer"
* #C176659 "Polishing agent"
* #C176660 "Polymers for ophthalmic use"
* #C42659 "Preservative"
* #C176661 "Propellant"
* #C176639 "Reducing agent"
* #C176662 "Release modifying agent"
* #C176640 "Solubilizing agent"
* #C45790 "Solvent"
* #C176636 "Stabilizer"
* #C176663 "Suppository base"
* #C42739 "Surfactant"
* #C42660 "Suspending agent"
* #C176641 "Tonicity agent"
* #C176664 "Transdermal delivery component"
* #C176665 "Transfer ligand"
* #C927 "Vehicle"
* #C176666 "Viscosity modifier"
* #C176667 "Waterrepelling agent"
* #C176668 "Wetting agent"
* #C176816 "Degradation Product"
* #C185190 "Elemental Impurities"
* #C176815 "Residual Solvent"
* #C134001 "Inorganic"
* #C176812 "Process Related/Process"
* #C185192 "Leachables"
* #C176813 "Product Related"
* #C92081 "Microbiological"
* #C48793 "EQ"
* #C61585 "LT (less than)"
* #C61584 "MT (more than)"
* #C61583 "NLT (not less than)"
* #C61586 "NMT (not more than)"
* #C176793 "BP"
* #C134009 "Company Standard"
* #C134007 "EP"
* #C134008 "JP"
* #C134006 "USP-NF"
* #C14182 "Animal"
* #C18634 "Animalderived indirectly"
* #C48807 "Chemical"
* #C14225 "Human"
* #C14227 "Insect"
* #C14329 "Microbial"
* #C14258 "Plant"
* #C25425 "Approved"
* #C134011 "Not Approved"
* #C134012 "Reported in a CBE or AR"
* #C134010 "Tentatively Approved"
* #C134021 "Drug Product"
* #C134022 "Drug Substance"
* #C133931 "Raw Materials/Excipients/Intermediates/Reagents"
* #C134005 "CFN"
* #C134003 "DUNS"
* #C134004 "FEI"
* #C17998 "Unknown"
* #C133936 "20 +/ 5 degrees C"
* #C134018 "25 +/ 2 degrees C/40% +/ 5%RH"
* #C134014 "25 +/ 2 degrees C/60% +/ 5%RH"
* #C134015 "30 +/ 2 degrees C/65% +/ 5%RH"
* #C134017 "30 +/ 2 degrees C/75% +/ 5%RH"
* #C134019 "30 degrees C +/ 2 degrees C/35%RH +/ 5%RH"
* #C134016 "40 +/ 2 degrees C/75% +/ 5%RH"
* #C133940 "40 degrees C +/ 2 degrees C/not more than (NMT) 25%RH"
* #C133935 "5 +/ 3 degrees C"
* #C96148 "Proprietary"
* #C45420 "Activity"
* #C168628 "Mass"
* #C96164 "CFR"
* #C96102 "Compendial"
* #C96103 "Proprietary"
* #C134029 "Release"
* #C134030 "Stability"
* #C100103 "CELLULAR SHEET"
* #C113106 "INJECTABLE FOAM"
* #C124794 "TABLET, CHEWABLE, EXTENDED RELEASE"
* #C134876 "Chewable Gel"
* #C147579 "Tablet with Sensor"
* #C17423 "DRUG DELIVERY SYSTEM"
* #C25158 "CAPSULE"
* #C25394 "PILL"
* #C28944 "CREAM"
* #C29167 "LOTION"
* #C29269 "MOUTHWASH"
* #C42679 "DOUCHE"
* #C42763 "DRESSING"
* #C42887 "AEROSOL"
* #C42888 "AEROSOL, FOAM"
* #C42889 "AEROSOL, SPRAY"
* #C42890 "BEAD"
* #C42892 "BAR, CHEWABLE"
* #C42893 "TABLET, CHEWABLE"
* #C42894 "GUM, CHEWING"
* #C42895 "CAPSULE, COATED"
* #C42896 "CAPSULE, COATED PELLETS"
* #C42897 "TABLET, COATED"
* #C42898 "SOLUTION, CONCENTRATE"
* #C42899 "INJECTION, SOLUTION, CONCENTRATE"
* #C42901 "CRYSTAL"
* #C42902 "CAPSULE, DELAYED RELEASE"
* #C42903 "GRANULE, DELAYED RELEASE"
* #C42904 "CAPSULE, DELAYED RELEASE PELLETS"
* #C42905 "TABLET, DELAYED RELEASE"
* #C42906 "GEL, DENTIFRICE"
* #C42907 "PASTE, DENTIFRICE"
* #C42908 "POWDER, DENTIFRICE"
* #C42909 "GRANULE, EFFERVESCENT"
* #C42910 "TABLET, EFFERVESCENT"
* #C42911 "PATCH, EXTENDED RELEASE, ELECTRICALLY CONTROLLED"
* #C42912 "ELIXIR"
* #C42913 "EMULSION"
* #C42914 "INJECTION, EMULSION"
* #C42915 "ENEMA"
* #C42916 "CAPSULE, EXTENDED RELEASE"
* #C42917 "CAPSULE, COATED, EXTENDED RELEASE"
* #C42918 "PELLETS, COATED, EXTENDED RELEASE"
* #C42920 "FILM, EXTENDED RELEASE"
* #C42921 "GRANULE, FOR SUSPENSION, EXTENDED RELEASE"
* #C42922 "INSERT, EXTENDED RELEASE"
* #C42923 "PATCH, EXTENDED RELEASE"
* #C42924 "SUPPOSITORY, EXTENDED RELEASE"
* #C42925 "SUSPENSION, EXTENDED RELEASE"
* #C42926 "INJECTION, SUSPENSION, EXTENDED RELEASE"
* #C42927 "TABLET, EXTENDED RELEASE"
* #C42928 "CAPSULE, FILM COATED, EXTENDED RELEASE"
* #C42929 "EXTRACT"
* #C42930 "TABLET, FILM COATED, EXTENDED RELEASE"
* #C42931 "TABLET, FILM COATED"
* #C42932 "FILM"
* #C42933 "GAS"
* #C42934 "GEL"
* #C42935 "SOLUTION, GEL FORMING, EXTENDED RELEASE"
* #C42936 "CAPSULE, GELATIN COATED"
* #C42937 "GLOBULE"
* #C42938 "GRANULE"
* #C42939 "GRANULE, FOR SOLUTION"
* #C42940 "GRANULE, FOR SUSPENSION"
* #C42942 "IMPLANT"
* #C42943 "PELLET, IMPLANTABLE"
* #C42944 "INHALANT"
* #C42945 "INJECTION, SOLUTION"
* #C42946 "INJECTION"
* #C42947 "IRRIGANT"
* #C42948 "JELLY"
* #C42949 "LINIMENT"
* #C42950 "INJECTION, LIPID COMPLEX"
* #C42951 "INJECTION, SUSPENSION, LIPOSOMAL"
* #C42952 "LIPSTICK"
* #C42953 "LIQUID"
* #C42954 "CAPSULE, LIQUID FILLED"
* #C42955 "LOZENGE"
* #C42956 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION, EXTENDED RELEASE"
* #C42957 "INJECTION, POWDER, LYOPHILIZED, FOR SOLUTION"
* #C42958 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION"
* #C42959 "INJECTION, POWDER, LYOPHILIZED, FOR LIPOSOMAL SUSPENSION"
* #C42960 "AEROSOL, METERED"
* #C42961 "POWDER, METERED"
* #C42962 "SPRAY, METERED"
* #C42963 "TABLET, MULTILAYER, EXTENDED RELEASE"
* #C42964 "TABLET, MULTILAYER"
* #C42965 "OIL"
* #C42966 "OINTMENT"
* #C42967 "PASTE"
* #C42968 "PATCH"
* #C42969 "PELLET"
* #C42970 "PLASTER"
* #C42971 "AEROSOL, POWDER"
* #C42972 "POWDER"
* #C42973 "POWDER, FOR SOLUTION"
* #C42974 "INJECTION, POWDER, FOR SOLUTION"
* #C42975 "POWDER, FOR SUSPENSION"
* #C42976 "INJECTION, POWDER, FOR SUSPENSION"
* #C42977 "INJECTION, POWDER, FOR SUSPENSION, EXTENDED RELEASE"
* #C42979 "RINSE"
* #C42980 "SALVE"
* #C42981 "SHAMPOO"
* #C42982 "SHAMPOO, SUSPENSION"
* #C42983 "SOAP"
* #C42984 "FILM, SOLUBLE"
* #C42985 "TABLET, SOLUBLE"
* #C42986 "SOLUTION"
* #C42987 "SOLUTION, FOR SLUSH"
* #C42988 "INJECTION, SUSPENSION, SONICATED"
* #C42989 "SPRAY"
* #C42990 "SPRAY, SUSPENSION"
* #C42991 "STICK"
* #C42992 "TABLET, SUGAR COATED"
* #C42993 "SUPPOSITORY"
* #C42994 "SUSPENSION"
* #C42995 "INJECTION, SUSPENSION"
* #C42996 "SYRUP"
* #C42997 "TABLET, DELAYED RELEASE PARTICLES"
* #C42998 "TABLET"
* #C42999 "TABLET, ORALLY DISINTEGRATING"
* #C43000 "TINCTURE"
* #C43001 "TROCHE"
* #C43003 "WAFER"
* #C43525 "DISC"
* #C47892 "TAMPON"
* #C47897 "TAPE"
* #C47898 "SWAB"
* #C47912 "SPONGE"
* #C47913 "POULTICE"
* #C47914 "STRIP"
* #C47915 "INTRAUTERINE DEVICE"
* #C47916 "KIT"
* #C48624 "NOT APPLICABLE"
* #C60884 "CLOTH"
* #C60891 "CONCENTRATE"
* #C60897 "CREAM, AUGMENTED"
* #C60926 "FIBER, EXTENDED RELEASE"
* #C60927 "FOR SOLUTION"
* #C60928 "FOR SUSPENSION"
* #C60929 "FOR SUSPENSION, EXTENDED RELEASE"
* #C60930 "GEL, METERED"
* #C60931 "INJECTABLE, LIPOSOMAL"
* #C60933 "INSERT"
* #C60934 "LIQUID, EXTENDED RELEASE"
* #C60957 "LOTION, AUGMENTED"
* #C60958 "LOTION/SHAMPOO"
* #C60984 "OINTMENT, AUGMENTED"
* #C60985 "PASTILLE"
* #C60988 "RING"
* #C60992 "SOLUTION/DROPS"
* #C60994 "SOLUTION, GEL FORMING/DROPS"
* #C60995 "SUSPENSION/DROPS"
* #C60997 "TABLET, COATED PARTICLES"
* #C61004 "TABLET, FOR SOLUTION"
* #C61005 "TABLET, FOR SUSPENSION"
* #C61006 "TABLET, ORALLY DISINTEGRATING, DELAYED RELEASE"
* #C64884 "POWDER, EFFERVESCENT"
* #C64984 "INTRACAMERAL"
* #C69067 "GRANULE, EXTENDED RELEASE"
* #C87536 "SMOKE STICK"
* #C87537 "SMOKE PAPER"
* #C87538 "INTRARUMINAL DEVICE, EXTENDED RELEASE"
* #C87539 "TAG"
* #C87540 "GRANULE FOR SUSPENSION, DELAYED RELEASE"
* #C87541 "POWDER, LYOPHILIZED"
* #C87542 "PENDANT"
* #C75765 "[arb'U]"
* #C92953 "[Amb'a'1'U]"
* #C105491 "ku"
* #C122629 "{actuation}"
* #C139134 "[lbf_av]"
* #C154859 "umho"
* #C171022 "{tot}"
* #C176690 "ms"
* #C25301 "d"
* #C25529 "h"
* #C28251 "mm"
* #C28252 "kg"
* #C28253 "mg"
* #C28254 "cm3 || mL"
* #C29844 "wk"
* #C29846 "mo"
* #C29848 "a"
* #C41127 "u"
* #C41139 "m"
* #C42535 "s"
* #C42537 "K"
* #C42539 "mol"
* #C42543 "rad"
* #C42546 "N"
* #C42559 "Cel"
* #C42569 "m2"
* #C42570 "m3"
* #C44277 "[degF]"
* #C45997 "[pH]"
* #C48152 "ug"
* #C48153 "uL"
* #C48154 "min"
* #C48155 "g"
* #C48479 "{can}"
* #C48500 "[in_i]"
* #C48505 "L"
* #C48509 "umol"
* #C48510 "um"
* #C48513 "mmol"
* #C48516 "ng"
* #C48517 "nmol"
* #C48519 "[oz_av]"
* #C48523 "[ppm]"
* #C48527 "%{WeightToVolume}"
* #C48528 "%{WeightToWeight}"
* #C48529 "[pt_us]"
* #C48531 "[lb_av]"
* #C48542 "{tbl}"
* #C48551 "{vial}"
* #C48570 "%"
* #C48571 "%{VolumeToVolume}"
* #C48579 "[IU]"
* #C48580 "gal"
* #C49668 "cm"
* #C64551 "pg"
* #C64559 "u"
* #C64778 "U"
* #C65045 "pmol"
* #C67015 "mg%"
* #C67196 "[Btu]"
* #C67318 "mosm"
* #C67328 "nm"
* #C67334 "[psi]"
* #C68667 "deg"
* #C68742 "[CFU]"
* #C69112 "[ppth]"
* #C69118 "[qt_us]"
* #C70471 "kgf"
* #C70565 "[ppb]"
* #C70566 "[pptr]"
* #C73783 "(m2.d)"
* #C96599 "[EU]"
* #C66832 "1*"
* #C132737 "Intracanalicular"
* #C28161 "INTRAMUSCULAR"
* #C38192 "AURICULAR (OTIC)"
* #C38193 "BUCCAL"
* #C38194 "CONJUNCTIVAL"
* #C38197 "DENTAL"
* #C38198 "SOFT TISSUE"
* #C38200 "HEMODIALYSIS"
* #C38203 "IONTOPHORESIS"
* #C38205 "ENDOCERVICAL"
* #C38206 "ENDOSINUSIAL"
* #C38207 "INTRATHORACIC"
* #C38208 "ENDOTRACHEAL"
* #C38209 "ENTERAL"
* #C38210 "EPIDURAL"
* #C38211 "EXTRA-AMNIOTIC"
* #C38212 "EXTRACORPOREAL"
* #C38215 "INFILTRATION"
* #C38216 "RESPIRATORY (INHALATION)"
* #C38217 "INTRACORONAL, DENTAL"
* #C38218 "INTRACORONARY"
* #C38219 "INTERSTITIAL"
* #C38220 "INTRA-ABDOMINAL"
* #C38221 "INTRA-AMNIOTIC"
* #C38222 "INTRA-ARTERIAL"
* #C38223 "INTRA-ARTICULAR"
* #C38224 "INTRABILIARY"
* #C38225 "INTRABRONCHIAL"
* #C38226 "INTRABURSAL"
* #C38227 "INTRACARDIAC"
* #C38228 "INTRACARTILAGINOUS"
* #C38229 "INTRACAUDAL"
* #C38230 "INTRACAVERNOUS"
* #C38231 "INTRACAVITARY"
* #C38232 "INTRACEREBRAL"
* #C38233 "INTRACISTERNAL"
* #C38234 "INTRACORNEAL"
* #C38235 "INTRACORPORUS CAVERNOSUM"
* #C38236 "INTRACRANIAL"
* #C38238 "INTRADERMAL"
* #C38239 "INTRADISCAL"
* #C38240 "INTRADUCTAL"
* #C38241 "INTRADUODENAL"
* #C38242 "INTRADURAL"
* #C38243 "INTRAEPIDERMAL"
* #C38245 "INTRAESOPHAGEAL"
* #C38246 "INTRAGASTRIC"
* #C38247 "INTRAGINGIVAL"
* #C38248 "INTRAHEPATIC"
* #C38249 "INTRAILEAL"
* #C38250 "INTRALESIONAL"
* #C38251 "INTRALUMINAL"
* #C38252 "INTRALYMPHATIC"
* #C38253 "INTRAMEDULLARY"
* #C38254 "INTRAMENINGEAL"
* #C38255 "INTRAOCULAR"
* #C38256 "INTRAOVARIAN"
* #C38257 "INTRAPERICARDIAL"
* #C38258 "INTRAPERITONEAL"
* #C38259 "INTRAPLEURAL"
* #C38260 "INTRAPROSTATIC"
* #C38261 "INTRAPULMONARY"
* #C38262 "INTRASINAL"
* #C38263 "INTRASPINAL"
* #C38264 "INTRASYNOVIAL"
* #C38265 "INTRATENDINOUS"
* #C38266 "INTRATESTICULAR"
* #C38267 "INTRATHECAL"
* #C38268 "INTRATUBULAR"
* #C38269 "INTRATUMOR"
* #C38270 "INTRATYMPANIC"
* #C38271 "URETHRAL"
* #C38272 "INTRAUTERINE"
* #C38273 "INTRAVASCULAR"
* #C38274 "INTRAVENOUS BOLUS"
* #C38276 "INTRAVENOUS"
* #C38277 "INTRAVENTRICULAR"
* #C38278 "INTRAVESICAL"
* #C38279 "INTRAVENOUS DRIP"
* #C38280 "INTRAVITREAL"
* #C38281 "IRRIGATION"
* #C38282 "LARYNGEAL"
* #C38283 "TRANSMUCOSAL"
* #C38284 "NASAL"
* #C38285 "NASOGASTRIC"
* #C38286 "OCCLUSIVE DRESSING TECHNIQUE"
* #C38287 "OPHTHALMIC"
* #C38288 "ORAL"
* #C38289 "OROPHARYNGEAL"
* #C38290 "OTHER"
* #C38291 "PARENTERAL"
* #C38292 "PERIARTICULAR"
* #C38293 "PERINEURAL"
* #C38294 "PERIODONTAL"
* #C38295 "RECTAL"
* #C38296 "RETROBULBAR"
* #C38297 "SUBARACHNOID"
* #C38298 "SUBCONJUNCTIVAL"
* #C38299 "SUBCUTANEOUS"
* #C38300 "SUBLINGUAL"
* #C38301 "SUBMUCOSAL"
* #C38304 "TOPICAL"
* #C38305 "TRANSDERMAL"
* #C38307 "TRANSPLACENTAL"
* #C38308 "TRANSTRACHEAL"
* #C38309 "TRANSTYMPANIC"
* #C38310 "UNASSIGNED"
* #C38311 "UNKNOWN"
* #C38312 "URETERAL"
* #C38313 "VAGINAL"
* #C38633 "ELECTRO-OSMOSIS"
* #C38675 "CUTANEOUS"
* #C38676 "PERCUTANEOUS"
* #C38677 "PERIDURAL"
* #C48623 "NOT APPLICABLE"
* #C65103 "SUBGINGIVAL"
* #C79137 "INTRAMAMMARY"
* #C79138 "INTRALINGUAL"
* #C79139 "INTRARUMINAL"
* #C79141 "INTRANODAL"
* #C79142 "INTRAOMENTUM"
* #C79143 "SUBRETINAL"
* #C79144 "INTRAEPICARDIAL"
* #C79145 "TRANSENDOCARDIAL"
* #QualStd "Quality Standard"

ValueSet: CmcRelationshipTypesVS	
Id: cmc-relationship-types-vs	
Title: "Relationship Types Value Set"
Description: "Local value set of all codes in Relationship Types codes"

* ^experimental = false	
* include codes from system CmcRelationshipTypes
	
ValueSet: BatchFormulaProperty	
Id: batch-formula-property	
Title: "Batch Formula Property Type"
Description: "A classification of batch formula properties to specify the kind of property referenced."

* ^experimental = true	
	
* $NCIT#batchsize "Batch Quantity"
* $NCIT#batchinfo "Batch Formula Additional Information"
* $NCIT#BatchUtil "Batch Utilization"
* $NCIT#info "Product Part Additional Information"
	
ValueSet: CmcProductNameTypesVS	
Id: cmc-product-name-types-vs	
Title: "Product Name Types Value Set"
Description: "Local value set of all codes in the Code system."

* ^experimental = false	
* include codes from system CmcProductNameTypes

CodeSystem: CmcProductNameTypes	
Id: cmc-product-name-types	
Title: "Product Name Types Code Types"
Description: "IG only code system of all codes in Code system."

* ^caseSensitive = true
* ^experimental = false		
	
* #PROP "Proprietary"
* #NON "Non-Proprietary"

CodeSystem: PqcmcTestCategoryCodes	
Id: pqcmc-test-category-codes	
Title: "Hierarchical Test Category Codes"
Description: "Waiting for NCIt codes to be added; then this may be deleted."
* ^caseSensitive = true
* ^experimental = true	
* ^hierarchyMeaning = #is-a	
	
* #TC1 "Assay" "Tests which measure the content of the active ingredient in the drug substance or drug product.of a substance. Synonymous with strength or purity which is commonly used of define the content of the active ingredient in a drug product. Note: chiral purity, preservative content, Anti-Oxidant Concentration, Chelate Concentration, isomeric ratio"
* #TC1 #SUBC2 "active ingredient" "Tests that verify the content and potency of a pharmaceutical substance that is intended effect in the diagnosis, cure, mitigation, treatment, or prevention of disease, or to affect the structure or any function of the body."
* #TC1 #SUBC3 "amino acid content" "Methodology used to determine the amino acid composition or content of proteins, peptides, and other pharmaceutical preparations"
* #TC1 #SUBC4 "bioburden" "Test that screens for aerobic mesophilic bacteria and fungi."
* #TC1 #SUBC5 "counterion content" "Tests that measures the secondardy ion of a drug salt."
* #TC1 #SUBC6 "excipient" "Testing of the amount of material other than the active or adjuvant."
* #TC1 #SUBC7 "host cell dna" "Measurement of DNA that comes from cell substrate used to make the viral particles."
* #TC1 #SUBC8 "percent conjugate" "Test to determine the percentage of total protein that functions in interaction with other (non-polypeptide) chemical groups attached by covalent bonding."
* #TC1 #SUBC9 "purity" "Testing methods to identify actives and indirectly measure impurities that may be present in a medicine. Examples of analytical procedures for this test #SUBCategory include SDS-page and HPLC."
* #TC1 #SUBC10 "nucleic acid content" "Tests designed to reveal the presence of a particular nucleic acid from a test sample."
* #TC1 #SUBC11 "solvate content" "Identifcation of hydrates or solvates by the assay of water of crystallization or solvent found in the crystal."
* #TC1 #SUBC12 "total protein" "Test to determine total protein concentration in the product"
* #TC1 #SUBC13 "Cell and Gene therapy product characterization assay" """Tests to determine Cell and Gene therapy product properties.
Examples: Viability, Cell number, Morphology, Cell surface markers, Secreted molecules, Gene expression, Genetic stability, percent recovery, gene expression, cell surface marker expression, proliferation capacity, total cell number, cell morphology, cell distribution in scaffold, total volume of scaffold, cellular pattern, vector genome concentration, vector infectious titer assay, replication competence assay, DNA homogeneity, transduction efficiency, vector genome concentration, vector infectious titer assay, Replication competence assay [Source: SME Defined]"""
* #TC3 "Container Closure Integrity" "Tests for the adequacy of pharmaceutical packaging and closures."
* #TC4 "Uniformity" "Tests to ensure the consistency of the API in the formulation. Test may be done as an IPC, release or stability test."
* #TC4 #SUBC16 "Uniformity of dosage unit" "Tests of the variability of the dosage unit including dispensed dose."
* #TC4 #SUBC17 "Uniformity in containers" "Content Uniformity based for multi-use containers, tubes and jars."
* #TC5 "Deliverable Volume/Fill Volume" "Tests designed to provide assurance that oral liquids will, when transferred from the original container, deliver the volume of dosage form that is declared on the label of the article."
* #TC6 "Organoleptic" "Evaluation via the senses—including taste, sight, smell, and touch."
* #TC6 #SUBC20 "Description/Appearance" "Tests using visual inspection to assess the physical state and color of the drug substance or product."
* #TC6 #SUBC21 "Odor" "Testing via the sense of smell."
* #TC6 #SUBC22 "Color of solution" "The use of visual perception to indicate of purity and/or a means to identify contamination."
* #TC6 #SUBC23 "Clarity of Solution" "Measurement of the turbidity of the solution or; Qualitative or quantitative measurement of degree of opalescence of a solution. Instrumental measurement of the light reflected by the solution."
* #TC7 "Identification" "Tests that establishes the characteristic and uniqueness of the substance of interest and should be able to discriminate between compounds of closely related structures which are likely to be present. [Source: ICH Q6A]"
* #TC8 "Disintegration" "Test to determine whether tablets capsules disintegrate within the prescribed time when placed in a liquid medium at the experimental conditions."
* #TC9 "Dissolution" "Test to determine compliance with the requirements of the material of interest dissolving into solution. A dosage unit is defined as 1 tablet or 1 capsule or the amount specified."
* #TC10 "Droplet Size" "Tests that determine the size of the liquid drop [Source: SME Defined]"
* #TC11 "Foreign and Particulate Matter" "Tests for injections or infusions to check for insoluble particles to confirm that they are not present in excess of specified levels in the solutions [Source: Adapted from ICH Q4B]."
* #TC11 #SUBC29 "Metal detection" "Tests for metallic particles to confirm that they are not present in excess of specified levels. [Source: SME Defined]"
* #TC12 "Loss on Drying" "Analytical procedures to determine the amount of volatile matter of any kind that is driven off under the conditions specified."
* #TC13 "Microbial Limits" "Tests for the estimation of the number of viable aerobic microorganisms present and for the freedom from designated microbial species in the pharmaceutical articles of all kinds, from raw materials to the finished forms."
* #TC14 "Osmolality/ Osmolarity" "Osmolality and osmolarity are measurements of the solute concentration of a solution. Osmolality is expressed in terms of the weight of the solvent and osmolarity is expressed in terms of solvent volume. [Source: SME Defined]"
* #TC15 "Particle Size Distribution" "Analytical procedures that utilize mechanical sieving for deducing the particle-size distribution of a powdered solid."
* #TC16 "Bulk Density" "Tests that determine the ratio of the mass of an untapped powder sample and its volume including the contribution of the interparticulate void volume."
* #TC17 "Conductivity" "Electrical conductivity is a measure of the ion-facilitated electron flow through it."
* #TC18 "Crystallinity" "The detection and/or quantification of the amount of amorphous material within a highly crystalline substance."
* #TC19 "Friability" "The percent loss of a tablet due to mechanical action that results in fracture or breaking during the test"
* #TC20 "Hardness" "A test used to identify the ability of a material to resist mechanical deformation such as scratching or penetration by other substances."
* #TC21 "Melting Point" "The temperature at the which a substance changes from solid to a liquid state at atmospheric pressure."
* #TC22 "Optical Rotation" "A property of many pharmaceutical substances to rotate an incident plane of polarized light so that the transmitted light emerges at a measurable angle to the plane of the incident light. [Source: Adapted from USP <781>]"
* #TC23 "pH" "The measure of acidity or alkalinity of an aqueous solution."
* #TC24 "Solubility" "A chemical property referring to the ability for a given substance, the solute, to dissolve in a solvent. It is measured in terms of the maximum amount of solute dissolved in a solvent at equilibrium"
* #TC25 "Specific Gravity" "The ratio of the density of any substance to the density of some other substance taken as standard, water being the standard for liquids and solids, and hydrogen or air being the standard for gases."
* #TC26 "Material Properties/Measurements" "Dimensions and physical properties of the material of interest including tablets, capsule, soft gel capsule, granulate or pellet, etc."
* #TC26 #SUBC45 "Individual Weight" "The weight of a single unit of the material of interest. Examples: 800 mg (a tablet) [Source: SME Defined]"
* #TC26 #SUBC46 "Group/Average Weight" """The sum total weights of the material of interest units or sum total of the material of interest divided by the number of units included in the sum. Example: 790-810 mg, 100 mg (per 10), 10 mg (per tablet)
note: for a QS or IPC this is likely a range but as a result it would be a single value	
note: the unit would indicate if the value represents a total weight of the group or the average weight across the group - both values could be provided [Source: SME Defined]"""
* #TC26 #SUBC47 "Weight variation" """The difference in weights of the material of interest. Examples: 2%, 5 mg, 2.5 %
note: may be a percent, a value or a percent relative standard deviation [Source: SME Defined]"""
* #TC26 #SUBC48 "ndividual Fill Weight" """The weight of material of interest within a single unit. Example: 1 gram (in each vial), 200 mg (in each capsule)
note: could be a capsule, vial or bottle	
ote: for a QS or IPC this is likely a range but as a result it would be a single value [Source: SME Defined]"""
* #TC26 #SUBC49 "Group/Average Fill Weight" """The sum total weights of material of interest across multiple units divided by the number of units included in the sum. Example: 790-810 mg, 100 mg (weight of 10 tablets), 10 mg (per tablet)
note: for a QS or IPC this is likely a range but as a result it would be a single value	
note: the unit would indicate if the value represents a total weight of the group or the average weight across the group - both values could be provided [Source: SME Defined]"""
* #TC26 #SUBC50 "Target group weight gain %" """A predetermined percentage weight increase for a set of units resulting from of an action such as coating. Example: 3% (weight gain after coating)
note: this can be associated with a bulk material or a single unit [Source: SME Defined]"""
* #TC26 #SUBC51 "Shell weight" "The weight of outer casing ('shell') into which material of interest is filled. Example: 20 mg [Source: SME Defined]"
* #TC26 #SUBC52 "Orifice location" "The position of hole drilled in the unit dose. [Source: SME Defined]"
* #TC26 #SUBC53 "Orifice diameter" "The length of a straight line measurement across the center of the hole drilled in the unit dose. [Source: SME Defined]"
* #TC26 #SUBC54 "Orifice depth" "The measurement of the penetration of the hole drilled in the unit dose as measured from the outer edge to the deepest point of penetration. [Source: SME Defined]"
* #TC26 #SUBC55 "Drilled side (single or double)" "An observation if one or both sides of the unit dose has been drilled. [Source: SME Defined]"
* #TC26 #SUBC56 "Number of orifices" "The total count of holes drilled in the unit dose [Source: SME Defined]"
* #TC26 #SUBC57 "Ribbon thickness" "The dimension between two surfaces of a continuous sheet of compressed material in preparation for subsequent processing. [Source: adapted from  Thickness]"
* #TC26 #SUBC58 "Ribbon density" "The compactness of a continuous sheet of compressed material in preparation for subsequent processing [Source: adapted from  Density]"
* #TC26 #SUBC59 "Seam thickness" "The measurement of overlap common to two edges of the same material joined together. Example: 1 mm [Source: SME Defined]"
* #TC26 #SUBC60 "Lock length" "The length of a straight line measurement from the longest edge-to-edge distance through a Capsule body and cap that have been coupled such that the locking rings are sealed as designed. [Source: SME Defined]"
* #TC26 #SUBC61 "Tablet/Capsule length" "The length of a straight line measurement from the longest edge-to-edge distance through the Tablet/Capsule. [Source: SME Defined]"
* #TC26 #SUBC62 "Tablet/Capsule diameter" "The length of a straight line measurement across the circular center of a Tablet/Capsule. [Source: SME Defined]"
* #TC26 #SUBC63 "Tablet thickness" "The length of a straight line measurement from the shortest edge-to-edge distance through a Tablet. [Source: SME Defined]"
* #TC27 "Tap Density" "An increased bulk density attained after mechanically tapping the container containing the powder sample. (aka - tapped density)"
* #TC28 "Transdermal Properties" """Tests that determine the physical properties of transdermal systems [Source: SME Defined]
Example, Peel adhesion test, Tack test, Cold Flow test, etc."""
* #TC29 "Viscosity/ Rheological Properties" "A property of liquids that is closely related to the resistance to flow."
* #TC30 "Plume Geometry" "A test that measures the spray pattern characteristics, including shape and size of the evolving spray cloud under defined experimental and instrumental test conditions [Source: Adapted from USP-NF]"
* #TC31 "Polymorphism" """Tests to determine the different crystalline forms of a given drug substance [Source: Adapted from ICH Q6A].
BACKGROUND	
Polymorphism -- The occurrence of different crystalline forms of the same drug substance. This may include solvation or hydration products (also known as pseudopolymorphs) and amorphous forms."""
* #TC32 "Porosity" "Tests that measure the empty spaces/voids in the material. [Source: SME Defined]"
* #TC33 "Potency" "Tests to measure the biological activity using a suitably quantitative biological assay (also called potency assay or bioassay), based on the attribute of the product which is linked to the relevant biological properties [Source: Adapted from ICH Q6B]"
* #TC34 "Pyrogenicity/Endotoxin (test example – rabbit test name)" "Tests designed to limit to an acceptable level the risks of febrile reaction in the patient to the administration, by injection, of the product concerned. The test involves measuring the rise in temperature of rabbits following the intravenous injection of a test solution and is designed for products that can be tolerated by the test rabbit in a dose not to exceed 10 mL/kg injected intravenously within a period of NMT 10 min."
* #TC35 "Reconstitution Time" "Measurement of how long it takes to restore something dried to its original state of liquid."
* #TC36 "Redispersibility" "Testing of oral suspensions that settle on storage (produce sediment) to measure the time required to achieve resuspension."
* #TC37 "Refractive Index" "Tests performed to determine the ratio of velocity of light in air to the velocity of light in the substance. [Source: Adapted from USP <831>]"
* #TC38 "Residue on Ignition" "Tests to measure the amount of residual substance not volatilized from a sample when the sample is ignited in the presence of sulfuric acid. This test is usually used for determining the content of inorganic impurities in an organic substance. [Source: Adapted from USP <281>]"
* #TC39 "Spray Pattern" "Tests to determine the size of the mist formed by spraying. The measurement is made for the longest axis (x axis), and the ratio of longest to shortest axes (x/y ratio).[Source: Adapted from USP-NF]"
* #TC40 "Sterility" "Tests done under aseptic conditions to ensure that there are no contaminating micro-organism present in the sample [Source: Adapted from USP <71>]"
* #TC41 "Syringe Functionality" "Tests performed on syringes to ensure that It operates as specified []"
* #TC42 "Total Organic Carbon" "An indirect measure of organic molecules present in pharmaceutical waters measured as carbon [Source: USP <643>]."
* #TC46 "Mechanical Integrity" "Test that measures what amount of force is needed to alter the mechanical integrity of a construct."
* #TC47 "Surface Area" "Total surface area of a 2D or 3D materials"
* #TC48 "Post-translational modifications" "Test to measure if the protein undergoing post translational modification which include glycocylation etc."
* #TC48 #SUBC83 "Glycosylation" "Post translation modification due to addition of sugar"
* #TC48 #SUBC84 "Thrombin Peptide Map" "Map of peptides derived from digestion of protein with thrombin"
* #TC48 #SUBC85 "Sialylation" "Post translational modification of proteins by sialylation"
* #TC48 #SUBC86 "Amidation" "Testing for and acid containing residue conversion to an amide."
* #TC48 #SUBC87 "Deamidation" "Testing for an amide residue conversion to an acid."
* #TC49 "Functional Assays" "Functional assay used to quantify functioning of an active substance rather than just its quantity. Common uses are: showing that a drug target fits the desired functionality and quality profile before moving on to the next stage of development; and comparison of biosimilars with innovator products."
* #TC50 "Elemental Analysis" "The relative proportion of elements present"
* #TC51 "Turbidity" "Measurement of the clarity and degree of opalescence of liquids by comparison of the solutions in diffused daylight after preparation of the reference suspension."
* #TC53 "Impurity" "Analytical procedures to establish material purity by determining the presence of a material or component of a material that is not defined as the material."
* #TC53 #SUBC92 "Specified identified impurity" "Testing for an impurity that is individually listed and limited with a specific acceptance criterion in the new drug substance or drug product specification and for which a structured characterization has been achieved.
Note: this includes degradation products for tests conducted on drug products. [adapted from ICH Q3A (R2) & Q3B (R2)]"
* #TC53 #SUBC93 "Specified unidentified impurity" """Testing for an impurity that is individually listed and limited with a specific acceptance criterion in the new drug substance or drug product specification and that is defined solely by qualitative analytical properties (e.g., chromatographic retention time) due to the lack of achieving a structured characterization.
Note: this includes degradation products for tests conducted on drug products. [adapted from ICH Q3A (R2) & Q3B (R2)]"""
* #TC53 #SUBC94 "Unspecified impurity" """Testing for an impurity that is limited by a general acceptance criterion, but not individually listed with its own specific acceptance criterion, in the new drug substance or drug product specification.
Note: this includes degradation products for tests conducted on drug products. [adapted from ICH Q3A (R2) & Q3B (R2)]"""
* #TC53 #SUBC95 "Total impurities" """The sum of all impurities at a level greater than (>) the reporting threshold.
Note: this includes degradation products for tests conducted on drug products. [adapted from ICH Q3A (R2) & Q3B (R2)]"""
* #TC53 #SUBC96 "Total Unknown Impurities" """The sum of unknown (unidentified) impurities in a new drug substance or drug product specification.
Note: Total impurities includes all impurities while Total Unknown impurities only includes all the unknown impurities. [Source: SME Defined]"""
* #TC53 #SUBC97 "Identified impurity under IT that is monitored as unspecified" """Identification (chemical name and/or UNII code) of all the identified (known) impurities that are being controlled as “unspecified impurities” rather than “Specified Identified Impurity” due to the level being consistently below the ICH identification threshold (IT) value.
Note: this includes degradation products for tests conducted on drug products. [Source: SME Defined]"""
* #TC53 #SUBC98 "elemental impurity" "Analytical procedures that determine the amount of single elements in drug products or drug product components."
* #TC53 #SUBC99 "impurity chemical" "Analytical procedures to establish chemical purity by determining the presence of a component of the material that is not the chemical entity defined as the material."
* #TC53 #SUBC100 "Impurities/Degradation Products/Related Substances" "Tests that establishes the characteristic and uniqueness of the the substance of interest and should be able to discriminate between compounds of closely related structures which are likely to be present. Includes leachables and extractables."
* #TC53 #SUBC101 "residual solvent" """Tests performed to determine if organic volatile chemicals that are used or produced in manufacture of drug substance or excipients, or in the preparation of drug products are present in the pharmaceuticals. [Source: Adapted from USP <467>]
BACKGROUND: For pharmacopeial purposes, residual solvents in pharmaceuticals are defined as organic volatile chemicals that are used or produced in the manufacture of drug substances or excipients, or in the preparation of drug products."""

ValueSet: PqcmcTestCategoryTerminology	
Id: pqcmc-test-category-terminology	
Title: "Test Category Terminology"
Description: "Terminology used to qualify the information pertaining to test categories in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* include codes from system pqcmc-test-category-codes	

ValueSet: PqcmcNamePartTerminology	
Id: pqcmc-name-part-terminology	
Title: "Name Part Terminology"
Description: "Terminology used to qualify the information pertaining to Name Part data in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	

* $NamePartType#CON "container name"
* $NamePartType#DEV "device name"
* $NamePartType#FLAV "FlavorName"
* $NamePartType#FORMUL "FormulationPartName"
* $NamePartType#FRM "form name"
* $NamePartType#INV "invented name"
* $NamePartType#POPUL "TargetPopulationName"
* $NamePartType#SCI "scientific name"
* $NamePartType#STR "strength name"
* $NamePartType#TIME "TimeOrPeriodName"
* $NamePartType#TMK "trademark name"
* $NamePartType#USE "intended use name"
	
ValueSet: PqcmcStorageConditionCategoryTerminology	
Id: pqcmc-storage-condition-category-terminology	
Title: "Storage Condition Category Terminology"
Description: "A classification of storage conditions (temperature and humidity) that is designed to check the chemical degradation or physical change of a drug substance or drug product. [Source: SME Defined]"
* ^experimental = true	
	
* $NCIT#CC201 "Accelerated"
* $NCIT#CC202 "Intermediate"
* $NCIT#CC203 "Long term"
	
ValueSet: PqcmcProductPartType	
Id: pqcmc-product-part-type	
Title: "Product Part Type Value Set"
Description: "TBD after NCIt codes are added for Product Part Type"

* ^experimental = true	
	
* $NCIT#154 "Blend"
* $NCIT#155 "Bead"
* $NCIT#156 "Capsule Shell"
* $NCIT#157 "Coating"
* $NCIT#158 "Dispersion"
* $NCIT#159 "Granules"
* $NCIT#115 "Layer"
* $NCIT#116 "Minitablet"
* $NCIT#117 "Solution"
* $NCIT#118 "Tablet"
	
ValueSet: PqcmcProductPartIngredientPhysicalLocation	
Id: pqcmc-product-part-ingredient-physical-location	
Title: "Product Part Ingredient Physical Location Value Set"
Description: "TBD after NCIt codes are added for Product Part Ingredient Physical Location"

* ^experimental = true	
	
* $NCIT#148 "Active core/granulate"
* $NCIT#149 "Extragranular"
* $NCIT#150 "Intragranular"
	
ValueSet: PqcmcReleaseProfile	
Id: pqcmc-release-profile	
Title: "Release Profile Value Set"
Description: "TBD after NCIt codes are added for Release Profile"

* ^experimental = true	
	
* $NCIT#101 "DR"
* $NCIT#102 "ER"
* $NCIT#103 "IR"
* $NCIT#104 "Not Applicable"
	
ValueSet: PqcmcReleaseMechanism	
Id: pqcmc-release-mechanism	
Title: "Release Mechanism Value Set"
Description: "TBD after NCIt codes are added for Release Mechanism"
	
* ^experimental = true	
* $NCIT#106 "Matrix"
* $NCIT#107 "Osmotic Pump"
* $NCIT#108 "Reservoir"
	
ValueSet: PqcmcCoatingPurpose	
Id: pqcmc-coating-purpose	
Title: "Coating Purpose Value Set"
Description: "TBD after NCIt codes are added for Coating Purpose"
	
* ^experimental = true	
* $NCIT#119 "Appearance/Identification"
* $NCIT#120 "Consumption Enhancement"
* $NCIT#121 "Content Isolation"
* $NCIT#122 "Drug Layering"
* $NCIT#123 "Irritant Suppression"
* $NCIT#124 "Odor Masking"
* $NCIT#125 "Protective"
* $NCIT#126 "Rate-controlling"
* $NCIT#127 "Release Type"
* $NCIT#128 "Site of Action"
* $NCIT#129 "Seal or Non-functional"
* $NCIT#130 "Taste Masking"
	
ValueSet: PqcmcCapsuleClassificationCategory	
Id: capsule-classification-category	
Title: "Capsule Classification Category Value Set"
Description: "TBD after NCIt codes are added for Capsule Classification Category"

* ^experimental = true	
* $NCIT#131 "Hard Gelatin Capsule"
* $NCIT#132 "Hard HPMC Capsule"
* $NCIT#133 "Hard Pullulan Capsule"
* $NCIT#134 "Hard Starch Capsule"
* $NCIT#135 "Hard PVA Capsule"
* $NCIT#136 "Soft Gelatin Capsule"
	
ValueSet: PqcmcSubstanceNameType	
Id: pqcmc-substance-name-type	
Title: "Substance Name Type"
Description: "Waiting for NCIt codes are added for Product Ingredient Name Type"

* ^experimental = true	
* $NCIT#137 "Brand"
* $NCIT#138 "Generic"
* $NCIT#139 "Common"
* $NCIT#141 "GSRS Preferred"
* $NCIT#145 "Systematic"
* $NCIT#147 "USP/NF"
* $NCIT#222 "CAS Number"
* $NCIT#223 "INN"
* $NCIT#224 "USAN"
* $NCIT#225 "IUPAC"
* $NCIT#226 "ISBT 128"
* $NCIT#Company "Company ID/Code"
	
ValueSet: EVMPDSubstanceClassification	
Id: evmpd-substance-classification	
Title: "EVMPD Substance Classification"
Description: "EudraVigilance eXtended Medicinal Product Dictionary (XEVMPD) substance classes"
	
* ^experimental = true	
* $EMAIDMP#1 "Chemical"
* $EMAIDMP#17 "Mixture"
* $EMAIDMP#2 "Nucleic Acid"
* $EMAIDMP#3 "Polymer"
* $EMAIDMP#4 "Protein - Other"
* $EMAIDMP#5 "Protein - Vaccine"
* $EMAIDMP#7 "Structurally Diverse Substance - Immunoglobulin"
* $EMAIDMP#6 "Structurally Diverse Substance - Vaccine"
* $EMAIDMP#10 "Structurally Diverse Substance - Allergen"
* $EMAIDMP#11 "Structurally Diverse Substance - Cell therapy"
* $EMAIDMP#9 "Structurally Diverse Substance - Herbal"
* $EMAIDMP#12 "Structurally Diverse Substance - Other"
* $EMAIDMP#8 "Structurally Diverse Substance - Blood derived"
	
ValueSet: PqcmcStabilityStudyReasonTerminology	
Id: pqcmc-stability-study-reason-terminology	
Title: "Stability Study Reason Terminology"
Description: "Terminology used to qualify the information pertaining to stability study reason data in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C115123 "Abbreviated New Animal Drug Application"
* $NCIT#C73113 "Abbreviated New Drug Application"
* $NCIT#C96089 "Annual Report"
* $NCIT#C96094 "Supplement to an Approved Application"
* $NCIT#C71778 "Biologics License Application"
* $NCIT#C70877 "Master File"
* $NCIT#C115122 "Generic Investigational New Animal Drug File"
* $NCIT#C80440 "Humanitarian Device Exemption (HDE)"
* $NCIT#C82667 "Investigational Device Exemption"
* $NCIT#C96091 "Investigational New Animal Drug File"
* $NCIT#C96090 "Investigational New Drug Application"
* $NCIT#C96092 "New Active Ingredient"
* $NCIT#C72901 "New Animal Drug Application"
* $NCIT#C72899 "New Drug Application"
* $NCIT#C70880 "Premarket Approval"
* $NCIT#C80442 "Premarket Notification 510(K)"
	
ValueSet: PqcmcIntervalDescriptionCodeTerminology	
Id: pqcmc-interval-description-code-terminology	
Title: "Interval Description Code Terminology"
Description: "Terminology used to qualify the information pertaining to interval description codes in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C96154 "Ambient Delayed Testing"
* $NCIT#C96151 "Delayed Testing"
* $NCIT#C96153 "Frozen Delayed Testing"
* $NCIT#C96150 "Immediate Testing"
* $NCIT#C96155 "Refrigerated Delayed Testing"
	
ValueSet: PqcmcStudyTypeTerminology	
Id: pqcmc-study-type-terminology	
Title: "Study Type Terminology"
Description: "Terminology used to qualify the information pertaining to study types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C134028 "Complex"
* $NCIT#C134027 "Cycled-Simple"
* $NCIT#C96087 "Photostability"
* $NCIT#C134026 "Standard"
	
ValueSet: PqcmcExpirationDateClassificationTerminology	
Id: pqcmc-expiration-date-classification-terminology	
Title: "Expiration Date Classification Terminology"
Description: "Terminology used to qualify the information pertaining to expiration date classification functions in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C185182 "Approved"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C185188 "Proposed"
	
ValueSet: PqcmcRetestDateClassificationTerminology	
Id: pqcmc-retest-date-classification-terminology	
Title: "Retest Date Classification Terminology"
Description: "Terminology used to qualify the information pertaining to retest date classification functions in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C185186 "Adequate"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C185188 "Proposed"
	
ValueSet: PqcmcProductCharacteristic	
Id: pqcmc-product-characteristic	
Title: "Code System PQCMC Product Characteristic"
Description: "Product Characteristic for the characteristic element in ManufacturedItemDefinition for product composition."

* ^experimental = true	

* $NCIT#OvrRelsProf "Product Overall Release Profile"
* $NCIT#OvrRelsMech "Product Overall Release Mechanism"
* $NCIT#CoatInd "Coating Indicator"
* $NCIT#TabLayCnt "Tablet Layer Count"
* $NCIT#BeaTypCnt "Tablet Bead Type Count"
* $NCIT#CapConCnt "Capsule Constituent Count"
* $NCIT#CapClass "Capsule Classification Category"
* $NCIT#Schematic "Product Schematic"
* $NCIT#WgtTyp "Product Weight Type"
* $NCIT#TotWgtNum "Product Total Weight Numeric Numerator"
* $NCIT#TotWgtDen "Product Total Weight Numeric Denominator"
* $NCIT#TotWgtTxt "Total Weight Textual"
* $NCIT#TotWgtOper "Total Weight Operator"
* $NCIT#PPiD "Product Part Identifier"
* $NCIT#PPiDref "Product Part Identifier Reference"
* $NCIT#RelsProf "Product Part Release Profile"
* $NCIT#RelsMech "Product Part Release Mechanism"
* $NCIT#CoatPurpose "Coating Product Part Purpose"
* $NCIT#Color "Product Part Color Description"
* $NCIT#ContPercent "Product Part Content Percent"
* $NCIT#AddInfo "Product Part Additional Information"
* $NCIT#StrnType "Strength Type (for API)"
* $NCIT#AmtOper "Product Part Ingredient Amount Operator"
* $NCIT#AmtText "Product Part Ingredient Amount Textual"
* $NCIT#QualStd "Quality Standard"

ValueSet: CmcCompSectionTypesVS
Id: cmc-comp-section-types-vs
Title: "eCTD sections Value Set" 
Description: "Value set of all codes in Code system PQCMC Comp Section Types for bindings that require a valueset instead of the code systme."

* ^experimental = true
* include codes from system PqcmcCompSectionTypes

CodeSystem: PqcmcCompSectionTypes	
Id: pqcmc-comp-section-types	
Title: "Code System PQCMC Comp Section Types"
Description: "Classification of a section of a PQ/CMC composition/document generally based on eCTD Module 3 section numbering for product and substance. A composition can have many section codes."

* ^caseSensitive = true
* ^experimental = false	
	
* #32S10 "Substance General Information"
* #32S11 "Substance Nomenclature"
* #32S12 "Substance Structure"
* #32S13 "Substance General Properties"
* #32S20 "Substance Manufacture"
* #32S21 "Substance Manufacturers"
* #32S22 "Substance Description of Manufacturing Process and Process Controls"
* #32S23 "Substance Control of Materials"
* #32S231 "Raw Material Specification"
* #32S24 "Substance Controls of Critical Steps and Intermediates"
* #32S25 "Substance Process Validation and/or Evaluation"
* #32S26 "Substance Manufacturing Process Development"
* #32S30 "Substance Characterization"
* #32S31 "Substance Elucidation of Structure and other Characteristics"
* #32S32 "Substance Impurities"
* #32S40 "Substance Control of Drug Substance"
* #32S41 "Substance Specification"
* #32S42 "Substance Analytical Procedures"
* #32S43 "Substance Validation of Analytical Procedures"
* #32S44 "Substance Batch Analyses"
* #32S45 "Substance Justification of Specification"
* #32S50 "Substance Reference Standards or Materials"
* #32S60 "Substance Container Closure System"
* #32S70 "Substance Stability"
* #32S71 "Substance Stability Summary and Conclusions"
* #32S72 "Substance Postapproval Stability Protocol and Stability Commitment"
* #32S73 "Substance Stability Data"
* #32P10 "Product Description and Composition of the Drug Product"
* #32P11 "Product Description"
* #32P12 "Product Composition"
* #32P13 "Product Container Closure Description"
* #32P20 "Product Pharmaceutical Development"
* #32P21 "Product Components of the Drug Product"
* #32P22 "Product Drug Product"
* #32P23 "Product Manufacturing Process Development"
* #32P24 "Product Container Closure System"
* #32P25 "Product Microbiological Attributes"
* #32P26 "Product Compatibility"
* #32P30 "Product Manufacture"
* #32P31 "Product Manufacturers"
* #32P32 "Product Batch Formula"
* #32P33 "Product Description of Manufacturing Process and Process Controls"
* #32P34 "Product Controls of Critical Steps and Intermediates"
* #32P35 "Product Process Validation and/or Evaluation"
* #32P40 "Product Control of Excipients"
* #32P41 "Excipients Specification"
* #32P42 "Product Analytical Procedures"
* #32P43 "Product Validation of Analytical Procedures"
* #32P44 "Product Justification of Specifications"
* #32P45 "Product Excipients of Human or Animal Origin"
* #32P46 "Product Novel Excipients"
* #32P50 "Product name dosage form"
* #32P51 "Product Specification"
* #32P52 "Product Analytical Procedures"
* #32P53 "Product Validation of Analytical Procedures"
* #32P54 "Product Batch Analyses"
* #32P55 "Product Characterization of Impurities"
* #32P56 "Product Justification of Specifications"
* #32P60 "Product Reference Standards or Materials"
* #32P70 "Product Container Closure System"
* #32P80 "Product Stability"
* #32P81 "Product Stability Summary and Conclusion"
* #32P82 "Product Postapproval Stability Protocol and Stability Commitment"
* #32P83 "Product Stability Data"
* #SP4151 "Quality Specification"
* #SP4454 "Batch Analyses"
* #SP7383 "Stability Data"
* #SP7181 "Stability Summary and Conclusion"
	
ValueSet: PqcmcBatchUtilizationTerminology	
Id: pqcmc-batch-utilization-terminology	
Title: "Batch Utilization Terminology"
Description: "Terminology used to qualify the information pertaining to batch utilization in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C133994 "Bioequivalence"
* $NCIT#C133992 "Clinical"
* $NCIT#C133990 "Commercial"
* $NCIT#C133991 "Development"
* $NCIT#C133993 "Validation"
* $NCIT#C185328 "Stability Study"
	
//ValueSet: PqcmcChemicalStructureDataFileOriginTerminology	
//Id: pqcmc-chemical-structure-datafile-origin-terminology	
//Title: "Chemical Structure Datafile Origin Terminology"
//Description: "Terminology used to qualify the information pertaining to chemical structure data file origins in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C16275 "Calculated"
//* $NCIT#C133995 "Experimental"
	
ValueSet: PqcmcChemicalStructureDataFileTypeTerminology	
Id: pqcmc-chemical-structure-datafile-type-terminology	
Title: "Chemical Structure Data File Type Terminology"
Description: "Terminology used to qualify the information pertaining to chemical structure data file types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C54683 "InChI File (small molecule)"
* $NCIT#C133997 "mmCIF (large molecules)"
* $NCIT#C133910 "MOLFILE"
* $NCIT#C49039 "PDB"
* $NCIT#C133996 "SDF"
* $NCIT#C54684 "SMILES"
* $NCIT#C85435 "SVG"
	
ValueSet: PqcmcClosureTypeTerminology	
Id: pqcmc-closure-type-terminology	
Title: "Closure Type Terminology"
Description: "Terminology used to qualify the information pertaining to closure types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C96113 "Child-resistant, Metal"
* $NCIT#C96114 "Child-resistant, Plastic"
* $NCIT#C96115 "Continuous Thread, Metal"
* $NCIT#C96116 "Continuous Thread, Plastic"
* $NCIT#C96117 "Tamper-evident, Metal"
* $NCIT#C96118 "Tamper-evident, Plastic"
* $NCIT#C96119 "Vacuum, Metal"
* $NCIT#C96120 "Tamper-evident, Composite"
* $NCIT#C96121 "Vacuum, Plastic"
* $NCIT#C96122 "Vacuum, Composite"
* $NCIT#C96123 "Press-on/twist-off, Metal"
* $NCIT#C96124 "Press-on, Composite"
* $NCIT#C96125 "Crown, Metal"
* $NCIT#C96126 "Lug, Metal"
* $NCIT#C96127 "Roll-on, Metal"
* $NCIT#C96128 "Flip-Top (Dispensing), Plastic"
* $NCIT#C96129 "Hinged (Dispensing), Plastic"
* $NCIT#C96130 "Linerless, Plastic"
* $NCIT#C96131 "Pump (Dispensing), Plastic"
* $NCIT#C96132 "Push-pull (Dispensing), Plastic"
* $NCIT#C96133 "Snap-on Cap, Plastic"
* $NCIT#C96134 "Snip-tip (Dispensing), Plastic"
* $NCIT#C96135 "Toggle-swing (Dispensing), Plastic"
* $NCIT#C96136 "Trigger Sprayer (Dispensing), Plastic"
* $NCIT#C96137 "Twist Open/Close (Dispensing), Plastic"
* $NCIT#C96138 "Valved (Dispensing), Plastic"
* $NCIT#C96139 "Stopper"
* $NCIT#C96140 "Tie"
	
ValueSet: PqcmcConformanceCriteriaTerminology	
Id: pqcmc-conformance-to-criteria-terminology	
Title: "Conformance to Criteria Terminology"
Description: "Terminology used to qualify the information pertaining to conformance to criteria in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
* ^experimental = true	
* $NCIT#C80262 "Conforms"
* $NCIT#C133998 "Does not conform"
	
ValueSet: PqcmcContainerOrientationTerminology	
Id: pqcmc-container-orientation-terminology	
Title: "Container Orientation Terminology"
Description: "Terminology used to qualify the information pertaining to container orientation in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C25241 "Horizontal"
* $NCIT#C133999 "Inverted"
* $NCIT#C86043 "Upright"
* $NCIT#C133915 "Valvedown"
* $NCIT#C133914 "Valveup"
	
ValueSet: PqcmcContainerTypeTerminology	
Id: pqcmc-container-type-terminology	
Title: "Container Type Terminology"
Description: "Terminology used to qualify the information pertaining to container types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C43165 "AMPULE"
* $NCIT#C43166 "APPLICATOR"
* $NCIT#C43167 "BAG"
* $NCIT#C43168 "BLISTER PACK"
* $NCIT#C43169 "BOTTLE"
* $NCIT#C43170 "BOTTLE, DISPENSING"
* $NCIT#C43171 "BOTTLE, DROPPER"
* $NCIT#C43172 "BOTTLE, GLASS"
* $NCIT#C43173 "BOTTLE, PLASTIC"
* $NCIT#C43174 "BOTTLE, PUMP"
* $NCIT#C43175 "BOTTLE, SPRAY"
* $NCIT#C43176 "BOTTLE, UNITDOSE"
* $NCIT#C43177 "BOTTLE, WITH APPLICATOR"
* $NCIT#C43178 "BOX"
* $NCIT#C43179 "BOX, UNITDOSE"
* $NCIT#C43180 "CAN"
* $NCIT#C43181 "CANISTER"
* $NCIT#C96143 "Canisters, lined"
* $NCIT#C92708 "CAPSULE"
* $NCIT#C43182 "CARTON"
* $NCIT#C43183 "CARTRIDGE"
* $NCIT#C43184 "CASE"
* $NCIT#C43185 "CELLO PACK"
* $NCIT#C43186 "CONTAINER"
* $NCIT#C43187 "CUP"
* $NCIT#C43188 "CUP, UNITDOSE"
* $NCIT#C43189 "CYLINDER"
* $NCIT#C43190 "DEWAR"
* $NCIT#C43191 "DIALPACK"
* $NCIT#C96141 "Dish, Petri"
* $NCIT#C43192 "DOSE PACK"
* $NCIT#C43193 "DRUM"
* $NCIT#C96144 "Flask"
* $NCIT#C79135 "FLEXIBLE INTERMEDIATE BULK CONTAINER"
* $NCIT#C16738 "INHALER"
* $NCIT#C43194 "INHALER, REFILL"
* $NCIT#C43195 "JAR"
* $NCIT#C43196 "JUG"
* $NCIT#C43197 "KIT"
* $NCIT#C48626 "NOT STATED"
* $NCIT#C43233 "PACKAGE"
* $NCIT#C43198 "PACKAGE, COMBINATION"
* $NCIT#C43199 "PACKET"
* $NCIT#C79136 "PAIL"
* $NCIT#C82332 "PATCH"
* $NCIT#C96142 "Plate, Microwell"
* $NCIT#C43200 "POUCH"
* $NCIT#C43201 "SUPERSACK"
* $NCIT#C43202 "SYRINGE"
* $NCIT#C43203 "SYRINGE, GLASS"
* $NCIT#C43204 "SYRINGE, PLASTIC"
* $NCIT#C43205 "TABMINDER"
* $NCIT#C43206 "TANK"
* $NCIT#C53438 "TRAY"
* $NCIT#C42794 "TUBE"
* $NCIT#C43207 "TUBE, WITH APPLICATOR"
* $NCIT#C43226 "VIAL"
* $NCIT#C43208 "VIAL, DISPENSING"
* $NCIT#C43209 "VIAL, GLASS"
* $NCIT#C43210 "VIAL, MULTIDOSE"
* $NCIT#C43211 "VIAL, PATENT DELIVERY SYSTEM"
* $NCIT#C43212 "VIAL, PHARMACY BULK PACKAGE"
* $NCIT#C43213 "VIAL, PIGGYBACK"
* $NCIT#C43214 "VIAL, PLASTIC"
* $NCIT#C43215 "VIAL, SINGLEDOSE"
* $NCIT#C43216 "VIAL, SINGLEUSE"
	
//ValueSet:alueSet: PqcmcCoPackagedIndicatorTerminology	
//Id: pqcmc-copackaged-indicator-terminology	
//Title: "Co-packaged Indicator Terminology"
//Description: "Terminology used to qualify the information pertaining to copackaged indicators in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C49487 "No"
//* $NCIT#C49488 "Yes"

ValueSet: PqcmcDrugProductComponentFunctionCategoryTerminology	
Id: pqcmc-drug-product-component-function-category-terminology	
Title: "Drug Product Component Function Category Terminology"
Description: "Terminology used to qualify the information pertaining to drug product component function categories in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C82533 "Active Ingredient"
* $NCIT#C2140 "Adjuvant"
* $NCIT#C42637 "Inactive Ingredient"
	
//ValueSet: PqcmcDrugSubstanceProductIndicatorTerminology	
//Id: pqcmc-drug-substance-product-indicator-terminology	
//Title: "Drug substance Product Indicator Terminology"
//Description: "Terminology used to qualify the information pertaining to drug substance product indicators in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
//* $NCIT#C1909 "Product"
//* $NCIT#C45306 "SUBSTANCE"
	
ValueSet: PqcmcExcipientFunctionTerminology	
Id: pqcmc-excipient-function-terminology	
Title: "Excipient Function Terminology"
Description: "Terminology used to qualify the information pertaining to excipient functions in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C176637 "Absorption modifier"
* $NCIT#C89528 "Adhesive"
* $NCIT#C176642 "Adsorbent"
* $NCIT#C176643 "Air displacement"
* $NCIT#C42654 "Anticaking agent"
* $NCIT#C275 "Antioxidant"
* $NCIT#C42647 "Binder"
* $NCIT#C70815 "Buffering agent"
* $NCIT#C176644 "Bulking agent"
* $NCIT#C92708 "CAPSULE"
* $NCIT#C176645 "Carrier"
* $NCIT#C360 "Chelating agent"
* $NCIT#C42656 "Coloring agent"
* $NCIT#C176646 "Complexing agent"
* $NCIT#C53306 "Cryoprotectant"
* $NCIT#C176647 "Denaturant"
* $NCIT#C42648 "Disintegrant"
* $NCIT#C42662 "Dispersing agent"
* $NCIT#C176638 "Effervescent agent"
* $NCIT#C176632 "Emollient"
* $NCIT#C73477 "Emulsifying Excipient"
* $NCIT#C176633 "Emulsion stabilizing agent"
* $NCIT#C42650 "Filler"
* $NCIT#C176648 "Film coating agent"
* $NCIT#C176634 "Foam stabilizing agent"
* $NCIT#C176649 "Free radical scavenger"
* $NCIT#C176650 "Gelling agent"
* $NCIT#C176651 "Humectant"
* $NCIT#C42657 "Ink"
* $NCIT#C42653 "Lubricant"
* $NCIT#C176652 "Lyophilization aid"
* $NCIT#C176653 "Matrixforming agent"
* $NCIT#C176654 "Microencapsulating agent"
* $NCIT#C176655 "Ointment base"
* $NCIT#C176656 "Opacifier"
* $NCIT#C176635 "Organoleptic agent"
* $NCIT#C176657 "Osmotic agent"
* $NCIT#C176658 "pH modifier"
* $NCIT#C55826 "Plasticizer"
* $NCIT#C176659 "Polishing agent"
* $NCIT#C176660 "Polymers for ophthalmic use"
* $NCIT#C42659 "Preservative"
* $NCIT#C176661 "Propellant"
* $NCIT#C176639 "Reducing agent"
* $NCIT#C176662 "Release modifying agent"
* $NCIT#C176640 "Solubilizing agent"
* $NCIT#C45790 "Solvent"
* $NCIT#C176636 "Stabilizer"
* $NCIT#C176663 "Suppository base"
* $NCIT#C42739 "Surfactant"
* $NCIT#C42660 "Suspending agent"
* $NCIT#C176641 "Tonicity agent"
* $NCIT#C176664 "Transdermal delivery component"
* $NCIT#C176665 "Transfer ligand"
* $NCIT#C927 "Vehicle"
* $NCIT#C176666 "Viscosity modifier"
* $NCIT#C176667 "Waterrepelling agent"
* $NCIT#C176668 "Wetting agent"
	
ValueSet: PqcmcImpurityClassificationTerminology	
Id: pqcmc-impurity-classification-terminology	
Title: "Impurity Classification Terminology"
Description: "Terminology used to qualify the information pertaining to impurity classifications in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
* ^experimental = true	
* $NCIT#C176816 "Degradation Product"
* $NCIT#C185190 "Elemental Impurities"
* $NCIT#C176815 "Residual Solvent"
* $NCIT#C134001 "Inorganic"
* $NCIT#C176812 "Process Related/Process"
* $NCIT#C185192 "Leachables"
* $NCIT#C176813 "Product Related"
* $NCIT#C92081 "Microbiological"
	
ValueSet: PqcmcInterpretationCodeTerminology	
Id: pqcmc-interpretation-code-terminology	
Title: "Interpretation Code Terminology"
Description: "Terminology used to qualify the information pertaining to numeric interpretation codes, Weight Operator codes and Amount Operator code in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C48793 "EQ"
* $NCIT#C61585 "LT (less than)"
* $NCIT#C61584 "MT (more than)"
* $NCIT#C61583 "NLT (not less than)"
* $NCIT#C61586 "NMT (not more than)"
* $NCIT#C48660 "Not Applicable"
		
ValueSet: PqcmcQualityBenchmarkTerminology	
Id: pqcmc-quality-benchmark-terminology	
Title: "Quality Standard Terminology"
Description: "Terminology used to qualify the information pertaining to quality benchmarks in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C176793 "BP"
* $NCIT#C134009 "Company Standard"
* $NCIT#C134007 "EP"
* $NCIT#C134008 "JP"
* $NCIT#C134006 "USP-NF"
	
ValueSet: PqcmcSourceTypeTerminology	
Id: pqcmc-source-type-terminology	
Title: "Source Type Terminology"
Description: "Terminology used to qualify the information pertaining to source types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C14182 "Animal"
* $NCIT#C18634 "Animalderived indirectly"
* $NCIT#C48807 "Chemical"
* $NCIT#C14225 "Human"
* $NCIT#C14227 "Insect"
* $NCIT#C14329 "Microbial"
* $NCIT#C14258 "Plant"
	
ValueSet: PqcmcSpecificationStatusTerminology	
Id: pqcmc-specification-status-terminology	
Title: "Specification Status Terminology"
Description: "Terminology used to qualify the information pertaining to specification statuses in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C25425 "Approved"
* $NCIT#C48660 "Not Applicable"
* $NCIT#C134011 "Not Approved"
* $NCIT#C134012 "Reported in a CBE or AR"
* $NCIT#C134010 "Tentatively Approved"
	
ValueSet: PqcmcSpecificationTypeTerminology	
Id: pqcmc-specification-type-terminology	
Title: "Specification Type Terminology"
Description: "Terminology used to qualify the information pertaining to specification types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C134021 "Drug Product"
* $NCIT#C134022 "Drug Substance"
* $NCIT#C133931 "Raw Materials/Excipients/Intermediates/Reagents"
	
ValueSet: PqcmcOrgIdentifierTypeTerminology	
Id: pqcmc-org-identifier-type-terminology	
Title: "Testing Site and Organization Identifier Type Terminology"
Description: "Terminology used to qualify the information pertaining to the sponsor or testing site unique identifier types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C134005 "CFN"
* $NCIT#C134003 "DUNS"
* $NCIT#C134004 "FEI"
* $NCIT#C17998 "Unknown"
	
ValueSet: PqcmcStorageConditionsTerminology	
Id: pqcmc-storage-conditions-terminology	
Title: "Storage Conditions Terminology"
Description: "Terminology used to qualify the information pertaining to storage conditions in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C133936 "20 +/ 5 degrees C"
* $NCIT#C134018 "25 +/ 2 degrees C/40% +/ 5%RH"
* $NCIT#C134014 "25 +/ 2 degrees C/60% +/ 5%RH"
* $NCIT#C134015 "30 +/ 2 degrees C/65% +/ 5%RH"
* $NCIT#C134017 "30 +/ 2 degrees C/75% +/ 5%RH"
* $NCIT#C134019 "30 degrees C +/ 2 degrees C/35%RH +/ 5%RH"
* $NCIT#C134016 "40 +/ 2 degrees C/75% +/ 5%RH"
* $NCIT#C133940 "40 degrees C +/ 2 degrees C/not more than (NMT) 25%RH"
* $NCIT#C133935 "5 +/ 3 degrees C"
* $NCIT#C96148 "Proprietary"
	
ValueSet: PqcmcStrengthOperatorTerminology	
Id: pqcmc-strength-operator-terminology	
Title: "Strength Operator Terminology"
Description: "Terminology used to qualify the information pertaining to strength operators in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C48793 "EQ"
* $NCIT#C61585 "LT (less than)"
* $NCIT#C61584 "MT (more than)"
* $NCIT#C61583 "NLT (not less than)"
* $NCIT#C61586 "NMT (not more than)"
* $NCIT#C48660 "Not Applicable"
	
ValueSet: PqcmcStrengthTypeTerminology	
Id: pqcmc-strength-type-terminology	
Title: "Strength Type Terminology"
Description: "Terminology used to qualify the information pertaining to strength types in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C45420 "Activity"
* $NCIT#C168628 "Mass"
	
ValueSet: PqcmcTestMethodOriginTerminology	
Id: pqcmc-test-method-origin-terminology	
Title: "Test Method Origin Terminology"
Description: "Terminology used to qualify the information pertaining to test method origins in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C96164 "CFR"
* $NCIT#C96102 "Compendial"
* $NCIT#C96103 "Proprietary"
	
ValueSet: PqcmcTestUsageTerminology	
Id: pqcmc-test-usage-terminology	
Title: "Test Usage Terminology"
Description: "Terminology used to qualify the information pertaining to test usage in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents."
	
* ^experimental = true	
* $NCIT#C134029 "Release"
* $NCIT#C134030 "Stability"
		
ValueSet: SplPharmaceuticalDosageFormTerminology	
Id: spl-pharmaceutical-dosage-form-terminology	
Title: "Pharmaceutical Dosage Form Terminology"
Description: "Terminology used for representation of the information on pharmaceutical product dosage form in the framework of the SPL documents."
	
* ^experimental = true	
* $NCIT#C100103 "CELLULAR SHEET"
* $NCIT#C113106 "INJECTABLE FOAM"
* $NCIT#C124794 "TABLET, CHEWABLE, EXTENDED RELEASE"
* $NCIT#C134876 "Chewable Gel"
* $NCIT#C147579 "Tablet with Sensor"
* $NCIT#C17423 "DRUG DELIVERY SYSTEM"
* $NCIT#C25158 "CAPSULE"
* $NCIT#C25394 "PILL"
* $NCIT#C28944 "CREAM"
* $NCIT#C29167 "LOTION"
* $NCIT#C29269 "MOUTHWASH"
* $NCIT#C42679 "DOUCHE"
* $NCIT#C42763 "DRESSING"
* $NCIT#C42887 "AEROSOL"
* $NCIT#C42888 "AEROSOL, FOAM"
* $NCIT#C42889 "AEROSOL, SPRAY"
* $NCIT#C42890 "BEAD"
* $NCIT#C42892 "BAR, CHEWABLE"
* $NCIT#C42893 "TABLET, CHEWABLE"
* $NCIT#C42894 "GUM, CHEWING"
* $NCIT#C42895 "CAPSULE, COATED"
* $NCIT#C42896 "CAPSULE, COATED PELLETS"
* $NCIT#C42897 "TABLET, COATED"
* $NCIT#C42898 "SOLUTION, CONCENTRATE"
* $NCIT#C42899 "INJECTION, SOLUTION, CONCENTRATE"
* $NCIT#C42901 "CRYSTAL"
* $NCIT#C42902 "CAPSULE, DELAYED RELEASE"
* $NCIT#C42903 "GRANULE, DELAYED RELEASE"
* $NCIT#C42904 "CAPSULE, DELAYED RELEASE PELLETS"
* $NCIT#C42905 "TABLET, DELAYED RELEASE"
* $NCIT#C42906 "GEL, DENTIFRICE"
* $NCIT#C42907 "PASTE, DENTIFRICE"
* $NCIT#C42908 "POWDER, DENTIFRICE"
* $NCIT#C42909 "GRANULE, EFFERVESCENT"
* $NCIT#C42910 "TABLET, EFFERVESCENT"
* $NCIT#C42911 "PATCH, EXTENDED RELEASE, ELECTRICALLY CONTROLLED"
* $NCIT#C42912 "ELIXIR"
* $NCIT#C42913 "EMULSION"
* $NCIT#C42914 "INJECTION, EMULSION"
* $NCIT#C42915 "ENEMA"
* $NCIT#C42916 "CAPSULE, EXTENDED RELEASE"
* $NCIT#C42917 "CAPSULE, COATED, EXTENDED RELEASE"
* $NCIT#C42918 "PELLETS, COATED, EXTENDED RELEASE"
* $NCIT#C42920 "FILM, EXTENDED RELEASE"
* $NCIT#C42921 "GRANULE, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42922 "INSERT, EXTENDED RELEASE"
* $NCIT#C42923 "PATCH, EXTENDED RELEASE"
* $NCIT#C42924 "SUPPOSITORY, EXTENDED RELEASE"
* $NCIT#C42925 "SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42926 "INJECTION, SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42927 "TABLET, EXTENDED RELEASE"
* $NCIT#C42928 "CAPSULE, FILM COATED, EXTENDED RELEASE"
* $NCIT#C42929 "EXTRACT"
* $NCIT#C42930 "TABLET, FILM COATED, EXTENDED RELEASE"
* $NCIT#C42931 "TABLET, FILM COATED"
* $NCIT#C42932 "FILM"
* $NCIT#C42933 "GAS"
* $NCIT#C42934 "GEL"
* $NCIT#C42935 "SOLUTION, GEL FORMING, EXTENDED RELEASE"
* $NCIT#C42936 "CAPSULE, GELATIN COATED"
* $NCIT#C42937 "GLOBULE"
* $NCIT#C42938 "GRANULE"
* $NCIT#C42939 "GRANULE, FOR SOLUTION"
* $NCIT#C42940 "GRANULE, FOR SUSPENSION"
* $NCIT#C42942 "IMPLANT"
* $NCIT#C42943 "PELLET, IMPLANTABLE"
* $NCIT#C42944 "INHALANT"
* $NCIT#C42945 "INJECTION, SOLUTION"
* $NCIT#C42946 "INJECTION"
* $NCIT#C42947 "IRRIGANT"
* $NCIT#C42948 "JELLY"
* $NCIT#C42949 "LINIMENT"
* $NCIT#C42950 "INJECTION, LIPID COMPLEX"
* $NCIT#C42951 "INJECTION, SUSPENSION, LIPOSOMAL"
* $NCIT#C42952 "LIPSTICK"
* $NCIT#C42953 "LIQUID"
* $NCIT#C42954 "CAPSULE, LIQUID FILLED"
* $NCIT#C42955 "LOZENGE"
* $NCIT#C42956 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42957 "INJECTION, POWDER, LYOPHILIZED, FOR SOLUTION"
* $NCIT#C42958 "INJECTION, POWDER, LYOPHILIZED, FOR SUSPENSION"
* $NCIT#C42959 "INJECTION, POWDER, LYOPHILIZED, FOR LIPOSOMAL SUSPENSION"
* $NCIT#C42960 "AEROSOL, METERED"
* $NCIT#C42961 "POWDER, METERED"
* $NCIT#C42962 "SPRAY, METERED"
* $NCIT#C42963 "TABLET, MULTILAYER, EXTENDED RELEASE"
* $NCIT#C42964 "TABLET, MULTILAYER"
* $NCIT#C42965 "OIL"
* $NCIT#C42966 "OINTMENT"
* $NCIT#C42967 "PASTE"
* $NCIT#C42968 "PATCH"
* $NCIT#C42969 "PELLET"
* $NCIT#C42970 "PLASTER"
* $NCIT#C42971 "AEROSOL, POWDER"
* $NCIT#C42972 "POWDER"
* $NCIT#C42973 "POWDER, FOR SOLUTION"
* $NCIT#C42974 "INJECTION, POWDER, FOR SOLUTION"
* $NCIT#C42975 "POWDER, FOR SUSPENSION"
* $NCIT#C42976 "INJECTION, POWDER, FOR SUSPENSION"
* $NCIT#C42977 "INJECTION, POWDER, FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C42979 "RINSE"
* $NCIT#C42980 "SALVE"
* $NCIT#C42981 "SHAMPOO"
* $NCIT#C42982 "SHAMPOO, SUSPENSION"
* $NCIT#C42983 "SOAP"
* $NCIT#C42984 "FILM, SOLUBLE"
* $NCIT#C42985 "TABLET, SOLUBLE"
* $NCIT#C42986 "SOLUTION"
* $NCIT#C42987 "SOLUTION, FOR SLUSH"
* $NCIT#C42988 "INJECTION, SUSPENSION, SONICATED"
* $NCIT#C42989 "SPRAY"
* $NCIT#C42990 "SPRAY, SUSPENSION"
* $NCIT#C42991 "STICK"
* $NCIT#C42992 "TABLET, SUGAR COATED"
* $NCIT#C42993 "SUPPOSITORY"
* $NCIT#C42994 "SUSPENSION"
* $NCIT#C42995 "INJECTION, SUSPENSION"
* $NCIT#C42996 "SYRUP"
* $NCIT#C42997 "TABLET, DELAYED RELEASE PARTICLES"
* $NCIT#C42998 "TABLET"
* $NCIT#C42999 "TABLET, ORALLY DISINTEGRATING"
* $NCIT#C43000 "TINCTURE"
* $NCIT#C43001 "TROCHE"
* $NCIT#C43003 "WAFER"
* $NCIT#C43525 "DISC"
* $NCIT#C47892 "TAMPON"
* $NCIT#C47897 "TAPE"
* $NCIT#C47898 "SWAB"
* $NCIT#C47912 "SPONGE"
* $NCIT#C47913 "POULTICE"
* $NCIT#C47914 "STRIP"
* $NCIT#C47915 "INTRAUTERINE DEVICE"
* $NCIT#C47916 "KIT"
* $NCIT#C48624 "NOT APPLICABLE"
* $NCIT#C60884 "CLOTH"
* $NCIT#C60891 "CONCENTRATE"
* $NCIT#C60897 "CREAM, AUGMENTED"
* $NCIT#C60926 "FIBER, EXTENDED RELEASE"
* $NCIT#C60927 "FOR SOLUTION"
* $NCIT#C60928 "FOR SUSPENSION"
* $NCIT#C60929 "FOR SUSPENSION, EXTENDED RELEASE"
* $NCIT#C60930 "GEL, METERED"
* $NCIT#C60931 "INJECTABLE, LIPOSOMAL"
* $NCIT#C60933 "INSERT"
* $NCIT#C60934 "LIQUID, EXTENDED RELEASE"
* $NCIT#C60957 "LOTION, AUGMENTED"
* $NCIT#C60958 "LOTION/SHAMPOO"
* $NCIT#C60984 "OINTMENT, AUGMENTED"
* $NCIT#C60985 "PASTILLE"
* $NCIT#C60988 "RING"
* $NCIT#C60992 "SOLUTION/DROPS"
* $NCIT#C60994 "SOLUTION, GEL FORMING/DROPS"
* $NCIT#C60995 "SUSPENSION/DROPS"
* $NCIT#C60997 "TABLET, COATED PARTICLES"
* $NCIT#C61004 "TABLET, FOR SOLUTION"
* $NCIT#C61005 "TABLET, FOR SUSPENSION"
* $NCIT#C61006 "TABLET, ORALLY DISINTEGRATING, DELAYED RELEASE"
* $NCIT#C64884 "POWDER, EFFERVESCENT"
* $NCIT#C64984 "INTRACAMERAL"
* $NCIT#C69067 "GRANULE, EXTENDED RELEASE"
* $NCIT#C87536 "SMOKE STICK"
* $NCIT#C87537 "SMOKE PAPER"
* $NCIT#C87538 "INTRARUMINAL DEVICE, EXTENDED RELEASE"
* $NCIT#C87539 "TAG"
* $NCIT#C87540 "GRANULE FOR SUSPENSION, DELAYED RELEASE"
* $NCIT#C87541 "POWDER, LYOPHILIZED"
* $NCIT#C87542 "PENDANT"
	
ValueSet: PqcmcUnitsMeasureTerminology	
Id: pqcmc-units-of-measure-terminology	
Title: "Units Of Measure Terminology"
Description: "Terminology used to qualify the information pertaining to units of measure in the framework of the Pharmaceutical Quality/Chemistry, Manufacturing and Controls documents.	
Note: Includes SPL Unit of Presentation Terminology"
	
* ^experimental = true	
	
* $NCIT#C75765 "[arb'U]"
* $NCIT#C92953 "[Amb'a'1'U]"
* $NCIT#C105491 "ku"
* $NCIT#C122629 "{actuation}"
* $NCIT#C139134 "[lbf_av]"
* $NCIT#C154859 "umho"
* $NCIT#C171022 "{tot}"
* $NCIT#C176690 "ms"
* $NCIT#C25301 "d"
* $NCIT#C25529 "h"
* $NCIT#C28251 "mm"
* $NCIT#C28252 "kg"
* $NCIT#C28253 "mg"
* $NCIT#C28254 "cm3 || mL"
* $NCIT#C29844 "wk"
* $NCIT#C29846 "mo"
* $NCIT#C29848 "a"
* $NCIT#C41127 "u"
* $NCIT#C41139 "m"
* $NCIT#C42535 "s"
* $NCIT#C42537 "K"
* $NCIT#C42539 "mol"
* $NCIT#C42543 "rad"
* $NCIT#C42546 "N"
* $NCIT#C42559 "Cel"
* $NCIT#C42569 "m2"
* $NCIT#C42570 "m3"
* $NCIT#C44277 "[degF]"
* $NCIT#C45997 "[pH]"
* $NCIT#C48152 "ug"
* $NCIT#C48153 "uL"
* $NCIT#C48154 "min"
* $NCIT#C48155 "g"
* $NCIT#C48479 "{can}"
* $NCIT#C48500 "[in_i]"
* $NCIT#C48505 "L"
* $NCIT#C48509 "umol"
* $NCIT#C48510 "um"
* $NCIT#C48513 "mmol"
* $NCIT#C48516 "ng"
* $NCIT#C48517 "nmol"
* $NCIT#C48519 "[oz_av]"
* $NCIT#C48523 "[ppm]"
* $NCIT#C48527 "%{WeightToVolume}"
* $NCIT#C48528 "%{WeightToWeight}"
* $NCIT#C48529 "[pt_us]"
* $NCIT#C48531 "[lb_av]"
* $NCIT#C48542 "{tbl}"
* $NCIT#C48551 "{vial}"
* $NCIT#C48570 "%"
* $NCIT#C48571 "%{VolumeToVolume}"
* $NCIT#C48579 "[IU]"
* $NCIT#C48580 "gal"
* $NCIT#C49668 "cm"
* $NCIT#C64551 "pg"
* $NCIT#C64559 "u"
* $NCIT#C64778 "U"
* $NCIT#C65045 "pmol"
* $NCIT#C67015 "mg%"
* $NCIT#C67196 "[Btu]"
* $NCIT#C67318 "mosm"
* $NCIT#C67328 "nm"
* $NCIT#C67334 "[psi]"
* $NCIT#C68667 "deg"
* $NCIT#C68742 "[CFU]"
* $NCIT#C69112 "[ppth]"
* $NCIT#C69118 "[qt_us]"
* $NCIT#C70471 "kgf"
* $NCIT#C70565 "[ppb]"
* $NCIT#C70566 "[pptr]"
* $NCIT#C73783 "(m2.d)"
* $NCIT#C96599 "[EU]"
* $NCIT#C66832 "1*"
	
ValueSet: SplDrugRouteofAdministrationTerminology	
Id: spl-drug-route-of-administration-terminology	
Title: "Drug Route Of Administration Terminology"
Description: "Terminology used for representation of the information on pharmaceutical product route of administration in the framework of the Structured Product Labeling documents."
	
* ^experimental = true	
* $NCIT#C132737 "Intracanalicular"
* $NCIT#C28161 "INTRAMUSCULAR"
* $NCIT#C38192 "AURICULAR (OTIC)"
* $NCIT#C38193 "BUCCAL"
* $NCIT#C38194 "CONJUNCTIVAL"
* $NCIT#C38197 "DENTAL"
* $NCIT#C38198 "SOFT TISSUE"
* $NCIT#C38200 "HEMODIALYSIS"
* $NCIT#C38203 "IONTOPHORESIS"
* $NCIT#C38205 "ENDOCERVICAL"
* $NCIT#C38206 "ENDOSINUSIAL"
* $NCIT#C38207 "INTRATHORACIC"
* $NCIT#C38208 "ENDOTRACHEAL"
* $NCIT#C38209 "ENTERAL"
* $NCIT#C38210 "EPIDURAL"
* $NCIT#C38211 "EXTRA-AMNIOTIC"
* $NCIT#C38212 "EXTRACORPOREAL"
* $NCIT#C38215 "INFILTRATION"
* $NCIT#C38216 "RESPIRATORY (INHALATION)"
* $NCIT#C38217 "INTRACORONAL, DENTAL"
* $NCIT#C38218 "INTRACORONARY"
* $NCIT#C38219 "INTERSTITIAL"
* $NCIT#C38220 "INTRA-ABDOMINAL"
* $NCIT#C38221 "INTRA-AMNIOTIC"
* $NCIT#C38222 "INTRA-ARTERIAL"
* $NCIT#C38223 "INTRA-ARTICULAR"
* $NCIT#C38224 "INTRABILIARY"
* $NCIT#C38225 "INTRABRONCHIAL"
* $NCIT#C38226 "INTRABURSAL"
* $NCIT#C38227 "INTRACARDIAC"
* $NCIT#C38228 "INTRACARTILAGINOUS"
* $NCIT#C38229 "INTRACAUDAL"
* $NCIT#C38230 "INTRACAVERNOUS"
* $NCIT#C38231 "INTRACAVITARY"
* $NCIT#C38232 "INTRACEREBRAL"
* $NCIT#C38233 "INTRACISTERNAL"
* $NCIT#C38234 "INTRACORNEAL"
* $NCIT#C38235 "INTRACORPORUS CAVERNOSUM"
* $NCIT#C38236 "INTRACRANIAL"
* $NCIT#C38238 "INTRADERMAL"
* $NCIT#C38239 "INTRADISCAL"
* $NCIT#C38240 "INTRADUCTAL"
* $NCIT#C38241 "INTRADUODENAL"
* $NCIT#C38242 "INTRADURAL"
* $NCIT#C38243 "INTRAEPIDERMAL"
* $NCIT#C38245 "INTRAESOPHAGEAL"
* $NCIT#C38246 "INTRAGASTRIC"
* $NCIT#C38247 "INTRAGINGIVAL"
* $NCIT#C38248 "INTRAHEPATIC"
* $NCIT#C38249 "INTRAILEAL"
* $NCIT#C38250 "INTRALESIONAL"
* $NCIT#C38251 "INTRALUMINAL"
* $NCIT#C38252 "INTRALYMPHATIC"
* $NCIT#C38253 "INTRAMEDULLARY"
* $NCIT#C38254 "INTRAMENINGEAL"
* $NCIT#C38255 "INTRAOCULAR"
* $NCIT#C38256 "INTRAOVARIAN"
* $NCIT#C38257 "INTRAPERICARDIAL"
* $NCIT#C38258 "INTRAPERITONEAL"
* $NCIT#C38259 "INTRAPLEURAL"
* $NCIT#C38260 "INTRAPROSTATIC"
* $NCIT#C38261 "INTRAPULMONARY"
* $NCIT#C38262 "INTRASINAL"
* $NCIT#C38263 "INTRASPINAL"
* $NCIT#C38264 "INTRASYNOVIAL"
* $NCIT#C38265 "INTRATENDINOUS"
* $NCIT#C38266 "INTRATESTICULAR"
* $NCIT#C38267 "INTRATHECAL"
* $NCIT#C38268 "INTRATUBULAR"
* $NCIT#C38269 "INTRATUMOR"
* $NCIT#C38270 "INTRATYMPANIC"
* $NCIT#C38271 "URETHRAL"
* $NCIT#C38272 "INTRAUTERINE"
* $NCIT#C38273 "INTRAVASCULAR"
* $NCIT#C38274 "INTRAVENOUS BOLUS"
* $NCIT#C38276 "INTRAVENOUS"
* $NCIT#C38277 "INTRAVENTRICULAR"
* $NCIT#C38278 "INTRAVESICAL"
* $NCIT#C38279 "INTRAVENOUS DRIP"
* $NCIT#C38280 "INTRAVITREAL"
* $NCIT#C38281 "IRRIGATION"
* $NCIT#C38282 "LARYNGEAL"
* $NCIT#C38283 "TRANSMUCOSAL"
* $NCIT#C38284 "NASAL"
* $NCIT#C38285 "NASOGASTRIC"
* $NCIT#C38286 "OCCLUSIVE DRESSING TECHNIQUE"
* $NCIT#C38287 "OPHTHALMIC"
* $NCIT#C38288 "ORAL"
* $NCIT#C38289 "OROPHARYNGEAL"
* $NCIT#C38290 "OTHER"
* $NCIT#C38291 "PARENTERAL"
* $NCIT#C38292 "PERIARTICULAR"
* $NCIT#C38293 "PERINEURAL"
* $NCIT#C38294 "PERIODONTAL"
* $NCIT#C38295 "RECTAL"
* $NCIT#C38296 "RETROBULBAR"
* $NCIT#C38297 "SUBARACHNOID"
* $NCIT#C38298 "SUBCONJUNCTIVAL"
* $NCIT#C38299 "SUBCUTANEOUS"
* $NCIT#C38300 "SUBLINGUAL"
* $NCIT#C38301 "SUBMUCOSAL"
* $NCIT#C38304 "TOPICAL"
* $NCIT#C38305 "TRANSDERMAL"
* $NCIT#C38307 "TRANSPLACENTAL"
* $NCIT#C38308 "TRANSTRACHEAL"
* $NCIT#C38309 "TRANSTYMPANIC"
* $NCIT#C38310 "UNASSIGNED"
* $NCIT#C38311 "UNKNOWN"
* $NCIT#C38312 "URETERAL"
* $NCIT#C38313 "VAGINAL"
* $NCIT#C38633 "ELECTRO-OSMOSIS"
* $NCIT#C38675 "CUTANEOUS"
* $NCIT#C38676 "PERCUTANEOUS"
* $NCIT#C38677 "PERIDURAL"
* $NCIT#C48623 "NOT APPLICABLE"
* $NCIT#C65103 "SUBGINGIVAL"
* $NCIT#C79137 "INTRAMAMMARY"
* $NCIT#C79138 "INTRALINGUAL"
* $NCIT#C79139 "INTRARUMINAL"
* $NCIT#C79141 "INTRANODAL"
* $NCIT#C79142 "INTRAOMENTUM"
* $NCIT#C79143 "SUBRETINAL"
* $NCIT#C79144 "INTRAEPICARDIAL"
* $NCIT#C79145 "TRANSENDOCARDIAL"
	
ValueSet: GENCcountryCodes	
Id: genc-country-codes	
Title: "GENC Country Codes"
Description: "The GENC Standard specifies an information model for representing names and codes of geopolitical entities and administrative subdivisions, with supporting information. A geopolitical entity is a region controlled by a political community having an organized government and possessing internal and external sovereignty, most often as a State but sometimes having a dependent relationship on another political authority, or a special sovereignty status. Geopolitical entities may be divided into administratively subordinate divisions. A GENC code (or, synonymously, an ISO 3166 code element) for a geopolitical entity or administrative subdivision is a unique designation of that concept within a set of similar concepts established by a suitable authority. This information model is based on that of ISO 3166 but extended to capture additional information required by U.S. Government stakeholders."
	
* ^experimental = true	
* $GENC#AFG "AFGHANISTAN"
* $GENC#XQZ "AKROTIRI"
* $GENC#ALB "ALBANIA"
* $GENC#DZA "ALGERIA"
* $GENC#ASM "AMERICAN SAMOA"
* $GENC#AND "ANDORRA"
* $GENC#AGO "ANGOLA"
* $GENC#AIA "ANGUILLA"
* $GENC#ATA "ANTARCTICA"
* $GENC#ATG "ANTIGUA AND BARBUDA"
* $GENC#ARG "ARGENTINA"
* $GENC#ARM "ARMENIA"
* $GENC#ABW "ARUBA"
* $GENC#XAC "ASHMORE AND CARTIER ISLANDS"
* $GENC#AUS "AUSTRALIA"
* $GENC#AUT "AUSTRIA"
* $GENC#AZE "AZERBAIJAN"
* $GENC#BHS "BAHAMAS, THE"
* $GENC#BHR "BAHRAIN"
* $GENC#XBK "BAKER ISLAND"
* $GENC#BGD "BANGLADESH"
* $GENC#BRB "BARBADOS"
* $GENC#XBI "BASSAS DA INDIA"
* $GENC#BLR "BELARUS"
* $GENC#BEL "BELGIUM"
* $GENC#BLZ "BELIZE"
* $GENC#BEN "BENIN"
* $GENC#BMU "BERMUDA"
* $GENC#BTN "BHUTAN"
* $GENC#BOL "BOLIVIA"
* $GENC#BES "BONAIRE, SINT EUSTATIUS, AND SABA"
* $GENC#BIH "BOSNIA AND HERZEGOVINA"
* $GENC#BWA "BOTSWANA"
* $GENC#BVT "BOUVET ISLAND"
* $GENC#BRA "BRAZIL"
* $GENC#IOT "BRITISH INDIAN OCEAN TERRITORY"
* $GENC#BRN "BRUNEI"
* $GENC#BGR "BULGARIA"
* $GENC#BFA "BURKINA FASO"
* $GENC#MMR "BURMA"
* $GENC#BDI "BURUNDI"
* $GENC#CPV "CABO VERDE"
* $GENC#KHM "CAMBODIA"
* $GENC#CMR "CAMEROON"
* $GENC#CAN "CANADA"
* $GENC#CYM "CAYMAN ISLANDS"
* $GENC#CAF "CENTRAL AFRICAN REPUBLIC"
* $GENC#TCD "CHAD"
* $GENC#CHL "CHILE"
* $GENC#CHN "CHINA"
* $GENC#CXR "CHRISTMAS ISLAND"
* $GENC#CPT "CLIPPERTON ISLAND"
* $GENC#CCK "COCOS (KEELING) ISLANDS"
* $GENC#COL "COLOMBIA"
* $GENC#COM "COMOROS"
* $GENC#COG "CONGO (BRAZZAVILLE)"
* $GENC#COD "CONGO (KINSHASA)"
* $GENC#COK "COOK ISLANDS"
* $GENC#XCS "CORAL SEA ISLANDS"
* $GENC#CRI "COSTA RICA"
* $GENC#CIV "CÔTE D'IVOIRE"
* $GENC#HRV "CROATIA"
* $GENC#CUB "CUBA"
* $GENC#CUW "CURAÇAO"
* $GENC#CYP "CYPRUS"
* $GENC#CZE "CZECHIA"
* $GENC#DNK "DENMARK"
* $GENC#XXD "DHEKELIA"
* $GENC#DGA "DIEGO GARCIA"
* $GENC#DJI "DJIBOUTI"
* $GENC#DMA "DOMINICA"
* $GENC#DOM "DOMINICAN REPUBLIC"
* $GENC#ECU "ECUADOR"
* $GENC#EGY "EGYPT"
* $GENC#SLV "EL SALVADOR"
* $GENC#XAZ "ENTITY 1"
* $GENC#XCR "ENTITY 2"
* $GENC#XCY "ENTITY 3"
* $GENC#XKM "ENTITY 4"
* $GENC#XKN "ENTITY 5"
* $GENC#AX3 "ENTITY 6"
* $GENC#GNQ "EQUATORIAL GUINEA"
* $GENC#ERI "ERITREA"
* $GENC#EST "ESTONIA"
* $GENC#ETH "ETHIOPIA"
* $GENC#XEU "EUROPA ISLAND"
* $GENC#FLK "FALKLAND ISLANDS (ISLAS MALVINAS)"
* $GENC#FRO "FAROE ISLANDS"
* $GENC#FJI "FIJI"
* $GENC#FIN "FINLAND"
* $GENC#FRA "FRANCE"
* $GENC#GUF "FRENCH GUIANA"
* $GENC#PYF "FRENCH POLYNESIA"
* $GENC#ATF "FRENCH SOUTHERN AND ANTARCTIC LANDS"
* $GENC#GAB "GABON"
* $GENC#GMB "GAMBIA, THE"
* $GENC#XGZ "GAZA STRIP"
* $GENC#GEO "GEORGIA"
* $GENC#DEU "GERMANY"
* $GENC#GHA "GHANA"
* $GENC#GIB "GIBRALTAR"
* $GENC#XGL "GLORIOSO ISLANDS"
* $GENC#GRC "GREECE"
* $GENC#GRL "GREENLAND"
* $GENC#GRD "GRENADA"
* $GENC#GLP "GUADELOUPE"
* $GENC#GUM "GUAM"
* $GENC#AX2 "GUANTANAMO BAY NAVAL BASE"
* $GENC#GTM "GUATEMALA"
* $GENC#GGY "GUERNSEY"
* $GENC#GIN "GUINEA"
* $GENC#GNB "GUINEA-BISSAU"
* $GENC#GUY "GUYANA"
* $GENC#HTI "HAITI"
* $GENC#HMD "HEARD ISLAND AND MCDONALD ISLANDS"
* $GENC#HND "HONDURAS"
* $GENC#HKG "HONG KONG"
* $GENC#XHO "HOWLAND ISLAND"
* $GENC#HUN "HUNGARY"
* $GENC#ISL "ICELAND"
* $GENC#IND "INDIA"
* $GENC#IDN "INDONESIA"
* $GENC#IRN "IRAN"
* $GENC#IRQ "IRAQ"
* $GENC#IRL "IRELAND"
* $GENC#IMN "ISLE OF MAN"
* $GENC#ISR "ISRAEL"
* $GENC#ITA "ITALY"
* $GENC#JAM "JAMAICA"
* $GENC#XJM "JAN MAYEN"
* $GENC#JPN "JAPAN"
* $GENC#XJV "JARVIS ISLAND"
* $GENC#JEY "JERSEY"
* $GENC#XJA "JOHNSTON ATOLL"
* $GENC#JOR "JORDAN"
* $GENC#XJN "JUAN DE NOVA ISLAND"
* $GENC#KAZ "KAZAKHSTAN"
* $GENC#KEN "KENYA"
* $GENC#XKR "KINGMAN REEF"
* $GENC#KIR "KIRIBATI"
* $GENC#PRK "KOREA, NORTH"
* $GENC#KOR "KOREA, SOUTH"
* $GENC#XKS "KOSOVO"
* $GENC#KWT "KUWAIT"
* $GENC#KGZ "KYRGYZSTAN"
* $GENC#LAO "LAOS"
* $GENC#LVA "LATVIA"
* $GENC#LBN "LEBANON"
* $GENC#LSO "LESOTHO"
* $GENC#LBR "LIBERIA"
* $GENC#LBY "LIBYA"
* $GENC#LIE "LIECHTENSTEIN"
* $GENC#LTU "LITHUANIA"
* $GENC#LUX "LUXEMBOURG"
* $GENC#MAC "MACAU"
* $GENC#MKD "NORTH MACEDONIA"
* $GENC#MDG "MADAGASCAR"
* $GENC#MWI "MALAWI"
* $GENC#MYS "MALAYSIA"
* $GENC#MDV "MALDIVES"
* $GENC#MLI "MALI"
* $GENC#MLT "MALTA"
* $GENC#MHL "MARSHALL ISLANDS"
* $GENC#MTQ "MARTINIQUE"
* $GENC#MRT "MAURITANIA"
* $GENC#MUS "MAURITIUS"
* $GENC#MYT "MAYOTTE"
* $GENC#MEX "MEXICO"
* $GENC#FSM "MICRONESIA, FEDERATED STATES OF"
* $GENC#XMW "MIDWAY ISLANDS"
* $GENC#MDA "MOLDOVA"
* $GENC#MCO "MONACO"
* $GENC#MNG "MONGOLIA"
* $GENC#MNE "MONTENEGRO"
* $GENC#MSR "MONTSERRAT"
* $GENC#MAR "MOROCCO"
* $GENC#MOZ "MOZAMBIQUE"
* $GENC#NAM "NAMIBIA"
* $GENC#NRU "NAURU"
* $GENC#XNV "NAVASSA ISLAND"
* $GENC#NPL "NEPAL"
* $GENC#NLD "NETHERLANDS"
* $GENC#NCL "NEW CALEDONIA"
* $GENC#NZL "NEW ZEALAND"
* $GENC#NIC "NICARAGUA"
* $GENC#NER "NIGER"
* $GENC#NGA "NIGERIA"
* $GENC#NIU "NIUE"
* $GENC#NFK "NORFOLK ISLAND"
* $GENC#MNP "NORTHERN MARIANA ISLANDS"
* $GENC#NOR "NORWAY"
* $GENC#OMN "OMAN"
* $GENC#PAK "PAKISTAN"
* $GENC#PLW "PALAU"
* $GENC#XPL "PALMYRA ATOLL"
* $GENC#PAN "PANAMA"
* $GENC#PNG "PAPUA NEW GUINEA"
* $GENC#XPR "PARACEL ISLANDS"
* $GENC#PRY "PARAGUAY"
* $GENC#PER "PERU"
* $GENC#PHL "PHILIPPINES"
* $GENC#PCN "PITCAIRN ISLANDS"
* $GENC#POL "POLAND"
* $GENC#PRT "PORTUGAL"
* $GENC#PRI "PUERTO RICO"
* $GENC#QAT "QATAR"
* $GENC#REU "REUNION"
* $GENC#ROU "ROMANIA"
* $GENC#RUS "RUSSIA"
* $GENC#RWA "RWANDA"
* $GENC#BLM "SAINT BARTHELEMY"
* $GENC#SHN "SAINT HELENA, ASCENSION, AND TRISTAN DA CUNHA"
* $GENC#KNA "SAINT KITTS AND NEVIS"
* $GENC#LCA "SAINT LUCIA"
* $GENC#MAF "SAINT MARTIN"
* $GENC#SPM "SAINT PIERRE AND MIQUELON"
* $GENC#VCT "SAINT VINCENT AND THE GRENADINES"
* $GENC#WSM "SAMOA"
* $GENC#SMR "SAN MARINO"
* $GENC#STP "SAO TOME AND PRINCIPE"
* $GENC#SAU "SAUDI ARABIA"
* $GENC#SEN "SENEGAL"
* $GENC#SRB "SERBIA"
* $GENC#SYC "SEYCHELLES"
* $GENC#SLE "SIERRA LEONE"
* $GENC#SGP "SINGAPORE"
* $GENC#SXM "SINT MAARTEN"
* $GENC#SVK "SLOVAKIA"
* $GENC#SVN "SLOVENIA"
* $GENC#SLB "SOLOMON ISLANDS"
* $GENC#SOM "SOMALIA"
* $GENC#ZAF "SOUTH AFRICA"
* $GENC#SGS "SOUTH GEORGIA AND SOUTH SANDWICH ISLANDS"
* $GENC#SSD "SOUTH SUDAN"
* $GENC#ESP "SPAIN"
* $GENC#XSP "SPRATLY ISLANDS"
* $GENC#LKA "SRI LANKA"
* $GENC#SDN "SUDAN"
* $GENC#SUR "SURINAME"
* $GENC#XSV "SVALBARD"
* $GENC#SWZ "ESWATINI"
* $GENC#SWE "SWEDEN"
* $GENC#CHE "SWITZERLAND"
* $GENC#SYR "SYRIA"
* $GENC#TWN "TAIWAN"
* $GENC#TJK "TAJIKISTAN"
* $GENC#TZA "TANZANIA"
* $GENC#THA "THAILAND"
* $GENC#TLS "TIMOR-LESTE"
* $GENC#TGO "TOGO"
* $GENC#TKL "TOKELAU"
* $GENC#TON "TONGA"
* $GENC#TTO "TRINIDAD AND TOBAGO"
* $GENC#XTR "TROMELIN ISLAND"
* $GENC#TUN "TUNISIA"
* $GENC#TUR "TURKEY"
* $GENC#TKM "TURKMENISTAN"
* $GENC#TCA "TURKS AND CAICOS ISLANDS"
* $GENC#TUV "TUVALU"
* $GENC#UGA "UGANDA"
* $GENC#UKR "UKRAINE"
* $GENC#ARE "UNITED ARAB EMIRATES"
* $GENC#GBR "UNITED KINGDOM"
* $GENC#USA "UNITED STATES"
* $GENC#AX1 "UNKNOWN"
* $GENC#URY "URUGUAY"
* $GENC#UZB "UZBEKISTAN"
* $GENC#VUT "VANUATU"
* $GENC#VAT "VATICAN CITY"
* $GENC#VEN "VENEZUELA"
* $GENC#VNM "VIETNAM"
* $GENC#VGB "VIRGIN ISLANDS, BRITISH"
* $GENC#VIR "VIRGIN ISLANDS, U.S."
* $GENC#XWK "WAKE ISLAND"
* $GENC#WLF "WALLIS AND FUTUNA"
* $GENC#XWB "WEST BANK"
* $GENC#ESH "WESTERN SAHARA"
* $GENC#YEM "YEMEN"
* $GENC#ZMB "ZAMBIA"
* $GENC#ZWE "ZIMBABWE"

RuleSet: ISOtoGENCMapping(ISOcode, ISOdisplay, GENCcode, GENCdisplay)
* group.element[+].code = #{ISOcode} "{ISOdisplay}"
* group.element[=].target.code = #{GENCcode} "{GENCdisplay}"
* group.element[=].target.relationship = #equivalent

Instance: ISOtoGENC
InstanceOf: ConceptMap
Usage: #definition
* name = "IsoToGencMap"
* title = "ISO to GENC Country Code Mapping"
* status = #draft
* experimental = false
* description = """Maps between ISO 3166-1-3 and GENC. In 6.0.0, [SubstanceDefinition.sourceMaterial.countryOfOrigin](https://build.fhir.org/substancedefinition-definitions.html#SubstanceDefinition.sourceMaterial.countryOfOrigin)
is bound to <https://build.fhir.org/valueset-country.html> which is all of ISO 3166 including both 2 and 3 letter codes
but should only be GENC."""
* sourceScopeCanonical = "https://build.fhir.org/valueset-country.html"
* targetScopeCanonical = "http://hl7.org/fhir/us/pq-cmc/ValueSet/genc-country-codes"
* group.source = $Country
* group.target = $GENC
* insert ISOtoGENCMapping(ABW, Aruba, ABW, Aruba)
* insert ISOtoGENCMapping(AFG, Afghanistan, AFG, Afghanistan)
* insert ISOtoGENCMapping(AGO, Angola, AGO, Angola)
* insert ISOtoGENCMapping(AIA, Anguilla, AIA, Anguilla)
* insert ISOtoGENCMapping(ALB, Albania, ALB, Albania)
* insert ISOtoGENCMapping(AND, Andorra, AND, Andorra)
* insert ISOtoGENCMapping(ARE, United Arab Emirates, ARE, United Arab Emirates)
* insert ISOtoGENCMapping(ARG, Argentina, ARG, Argentina)
* insert ISOtoGENCMapping(ARM, Armenia, ARM, Armenia)
* insert ISOtoGENCMapping(ASM, American Samoa, ASM, American Samoa)
* insert ISOtoGENCMapping(ATA, Antarctica, ATA, Antarctica)
* insert ISOtoGENCMapping(ATF, French Southern Territories, ATF, French Southern and Antarctic Lands)
* insert ISOtoGENCMapping(ATG, Antigua and Barbuda, ATG, Antigua and Barbuda)
* insert ISOtoGENCMapping(AUS, Australia, AUS, Australia)
* insert ISOtoGENCMapping(AUT, Austria, AUT, Austria)
* insert ISOtoGENCMapping(AZE, Azerbaijan, AZE, Azerbaijan)
* insert ISOtoGENCMapping(BDI, Burundi, BDI, Burundi)
* insert ISOtoGENCMapping(BEL, Belgium, BEL, Belgium)
* insert ISOtoGENCMapping(BEN, Benin, BEN, Benin)
* insert ISOtoGENCMapping(BES, Bonaire\, Sint Eustatius and Saba, BES, Bonaire\, Sint Eustatius\, and Saba)
* insert ISOtoGENCMapping(BFA, Burkina Faso, BFA, Burkina Faso)
* insert ISOtoGENCMapping(BGD, Bangladesh, BGD, Bangladesh)
* insert ISOtoGENCMapping(BGR, Bulgaria, BGR, Bulgaria)
* insert ISOtoGENCMapping(BHR, Bahrain, BHR, Bahrain)
* insert ISOtoGENCMapping(BHS, Bahamas, BHS, Bahamas\, The)
* insert ISOtoGENCMapping(BIH, Bosnia and Herzegovina, BIH, Bosnia and Herzegovina)
* insert ISOtoGENCMapping(BLM, Saint Barthélemy, BLM, Saint Barthelemy)
* insert ISOtoGENCMapping(BLR, Belarus, BLR, Belarus)
* insert ISOtoGENCMapping(BLZ, Belize, BLZ, Belize)
* insert ISOtoGENCMapping(BMU, Bermuda, BMU, Bermuda)
* insert ISOtoGENCMapping(BOL, Bolivia\, Plurinational State of, BOL, Bolivia)
* insert ISOtoGENCMapping(BRA, Brazil, BRA, Brazil)
* insert ISOtoGENCMapping(BRB, Barbados, BRB, Barbados)
* insert ISOtoGENCMapping(BRN, Brunei Darussalam, BRN, Brunei)
* insert ISOtoGENCMapping(BTN, Bhutan, BTN, Bhutan)
* insert ISOtoGENCMapping(BVT, Bouvet Island, BVT, Bouvet Island)
* insert ISOtoGENCMapping(BWA, Botswana, BWA, Botswana)
* insert ISOtoGENCMapping(CAF, Central African Republic, CAF, Central African Republic)
* insert ISOtoGENCMapping(CAN, Canada, CAN, Canada)
* insert ISOtoGENCMapping(CCK, Cocos (Keeling\) Islands, CCK, Cocos (Keeling\) Islands)
* insert ISOtoGENCMapping(CHE, Switzerland, CHE, Switzerland)
* insert ISOtoGENCMapping(CHL, Chile, CHL, Chile)
* insert ISOtoGENCMapping(CHN, China, CHN, China)
* insert ISOtoGENCMapping(CIV, Côte d'Ivoire, CIV, Côte d'Ivoire)
* insert ISOtoGENCMapping(CMR, Cameroon, CMR, Cameroon)
* insert ISOtoGENCMapping(COD, Congo\, the Democratic Republic of the, COD, Congo (Kinshasa\))
* insert ISOtoGENCMapping(COG, Congo, COG, Congo (Brazzaville\))
* insert ISOtoGENCMapping(COK, Cook Islands, COK, Cook Islands (the\))
* insert ISOtoGENCMapping(COL, Colombia, COL, Colombia)
* insert ISOtoGENCMapping(COM, Comoros, COM, Comoros)
* insert ISOtoGENCMapping(CPV, Cabo Verde, CPV, Cape Verde)
* insert ISOtoGENCMapping(CRI, Costa Rica, CRI, Costa Rica)
* insert ISOtoGENCMapping(CUB, Cuba, CUB, Cuba)
* insert ISOtoGENCMapping(CUW, Curaçao, CUW, Curaçao)
* insert ISOtoGENCMapping(CXR, Christmas Island, CXR, Christmas Island)
* insert ISOtoGENCMapping(CYM, Cayman Islands, CYM, Cayman Islands (the\))
* insert ISOtoGENCMapping(CYP, Cyprus, CYP, Cyprus)
* insert ISOtoGENCMapping(CZE, Czechia, CZE, Czech Republic)
* insert ISOtoGENCMapping(DEU, Germany, DEU, Germany)
* insert ISOtoGENCMapping(DJI, Djibouti, DJI, Djibouti)
* insert ISOtoGENCMapping(DMA, Dominica, DMA, Dominica)
* insert ISOtoGENCMapping(DNK, Denmark, DNK, Denmark)
* insert ISOtoGENCMapping(DOM, Dominican Republic, DOM, Dominican Republic (the\))
* insert ISOtoGENCMapping(DZA, Algeria, DZA, Algeria)
* insert ISOtoGENCMapping(ECU, Ecuador, ECU, Ecuador)
* insert ISOtoGENCMapping(EGY, Egypt, EGY, Egypt)
* insert ISOtoGENCMapping(ERI, Eritrea, ERI, Eritrea)
* insert ISOtoGENCMapping(ESH, Western Sahara, ESH, Western Sahara)
* insert ISOtoGENCMapping(ESP, Spain, ESP, Spain)
* insert ISOtoGENCMapping(EST, Estonia, EST, Estonia)
* insert ISOtoGENCMapping(ETH, Ethiopia, ETH, Ethiopia)
* insert ISOtoGENCMapping(FIN, Finland, FIN, Finland)
* insert ISOtoGENCMapping(FJI, Fiji, FJI, Fiji)
* insert ISOtoGENCMapping(FLK, Falkland Islands (Malvinas\), FLK, Falkland Islands (Islas Malvinas\))
* insert ISOtoGENCMapping(FRA, France, FRA, France)
* insert ISOtoGENCMapping(FRO, Faroe Islands, FRO, Faroe Islands (the\))
* insert ISOtoGENCMapping(FSM, Micronesia\, Federated States of, FSM, Micronesia\, Federated States of)
* insert ISOtoGENCMapping(GAB, Gabon, GAB, Gabon)
* insert ISOtoGENCMapping(GBR, United Kingdom, GBR, United Kingdom (the\))
* insert ISOtoGENCMapping(GEO, Georgia, GEO, Georgia)
* insert ISOtoGENCMapping(GGY, Guernsey, GGY, Guernsey)
* insert ISOtoGENCMapping(GHA, Ghana, GHA, Ghana)
* insert ISOtoGENCMapping(GIB, Gibraltar, GIB, Gibraltar)
* insert ISOtoGENCMapping(GIN, Guinea, GIN, Guinea)
* insert ISOtoGENCMapping(GLP, Guadeloupe, GLP, Guadeloupe)
* insert ISOtoGENCMapping(GMB, Gambia, GMB, Gambia\, The)
* insert ISOtoGENCMapping(GNB, Guinea-Bissau, GNB, Guinea-Bissau)
* insert ISOtoGENCMapping(GNQ, Equatorial Guinea, GNQ, Equatorial Guinea)
* insert ISOtoGENCMapping(GRC, Greece, GRC, Greece)
* insert ISOtoGENCMapping(GRD, Grenada, GRD, Grenada)
* insert ISOtoGENCMapping(GRL, Greenland, GRL, Greenland)
* insert ISOtoGENCMapping(GTM, Guatemala, GTM, Guatemala)
* insert ISOtoGENCMapping(GUF, French Guiana, GUF, French Guiana)
* insert ISOtoGENCMapping(GUM, Guam, GUM, Guam)
* insert ISOtoGENCMapping(GUY, Guyana, GUY, Guyana)
* insert ISOtoGENCMapping(HKG, Hong Kong, HKG, Hong Kong)
* insert ISOtoGENCMapping(HMD, Heard Island and McDonald Islands, HMD, Heard Island and McDonald Islands)
* insert ISOtoGENCMapping(HND, Honduras, HND, Honduras)
* insert ISOtoGENCMapping(HRV, Croatia, HRV, Croatia)
* insert ISOtoGENCMapping(HTI, Haiti, HTI, Haiti)
* insert ISOtoGENCMapping(HUN, Hungary, HUN, Hungary)
* insert ISOtoGENCMapping(IDN, Indonesia, IDN, Indonesia)
* insert ISOtoGENCMapping(IMN, Isle of Man, IMN, Isle of Man)
* insert ISOtoGENCMapping(IND, India, IND, India)
* insert ISOtoGENCMapping(IOT, British Indian Ocean Territory, IOT, British Indian Ocean Territory)
* insert ISOtoGENCMapping(IRL, Ireland, IRL, Ireland)
* insert ISOtoGENCMapping(IRN, Iran\, Islamic Republic of, IRN, Iran)
* insert ISOtoGENCMapping(IRQ, Iraq, IRQ, Iraq)
* insert ISOtoGENCMapping(ISL, Iceland, ISL, Iceland)
* insert ISOtoGENCMapping(ISR, Israel, ISR, Israel)
* insert ISOtoGENCMapping(ITA, Italy, ITA, Italy)
* insert ISOtoGENCMapping(JAM, Jamaica, JAM, Jamaica)
* insert ISOtoGENCMapping(JEY, Jersey, JEY, Jersey)
* insert ISOtoGENCMapping(JOR, Jordan, JOR, Jordan)
* insert ISOtoGENCMapping(JPN, Japan, JPN, Japan)
* insert ISOtoGENCMapping(KAZ, Kazakhstan, KAZ, Kazakhstan)
* insert ISOtoGENCMapping(KEN, Kenya, KEN, Kenya)
* insert ISOtoGENCMapping(KGZ, Kyrgyzstan, KGZ, Kyrgyzstan)
* insert ISOtoGENCMapping(KHM, Cambodia, KHM, Cambodia)
* insert ISOtoGENCMapping(KIR, Kiribati, KIR, Kiribati)
* insert ISOtoGENCMapping(KNA, Saint Kitts and Nevis, KNA, Saint Kitts and Nevis)
* insert ISOtoGENCMapping(KOR, Korea\, Republic of, KOR, Korea\, South)
* insert ISOtoGENCMapping(KWT, Kuwait, KWT, Kuwait)
* insert ISOtoGENCMapping(LAO, Lao People's Democratic Republic, LAO, Laos)
* insert ISOtoGENCMapping(LBN, Lebanon, LBN, Lebanon)
* insert ISOtoGENCMapping(LBR, Liberia, LBR, Liberia)
* insert ISOtoGENCMapping(LBY, Libya, LBY, Libya)
* insert ISOtoGENCMapping(LCA, Saint Lucia, LCA, Saint Lucia)
* insert ISOtoGENCMapping(LIE, Liechtenstein, LIE, Liechtenstein)
* insert ISOtoGENCMapping(LKA, Sri Lanka, LKA, Sri Lanka)
* insert ISOtoGENCMapping(LSO, Lesotho, LSO, Lesotho)
* insert ISOtoGENCMapping(LTU, Lithuania, LTU, Lithuania)
* insert ISOtoGENCMapping(LUX, Luxembourg, LUX, Luxembourg)
* insert ISOtoGENCMapping(LVA, Latvia, LVA, Latvia)
* insert ISOtoGENCMapping(MAC, Macao, MAC, Macau)
* insert ISOtoGENCMapping(MAF, Saint Martin (French part\), MAF, Saint Martin)
* insert ISOtoGENCMapping(MAR, Morocco, MAR, Morocco)
* insert ISOtoGENCMapping(MCO, Monaco, MCO, Monaco)
* insert ISOtoGENCMapping(MDA, Moldova\, Republic of, MDA, Moldova)
* insert ISOtoGENCMapping(MDG, Madagascar, MDG, Madagascar)
* insert ISOtoGENCMapping(MDV, Maldives, MDV, Maldives)
* insert ISOtoGENCMapping(MEX, Mexico, MEX, Mexico)
* insert ISOtoGENCMapping(MHL, Marshall Islands, MHL, Marshall Islands)
* insert ISOtoGENCMapping(MKD, Macedonia\, the former Yugoslav Republic of, MKD, Macedonia)
* insert ISOtoGENCMapping(MLI, Mali, MLI, Mali)
* insert ISOtoGENCMapping(MLT, Malta, MLT, Malta)
* insert ISOtoGENCMapping(MMR, Myanmar, MMR, Burma)
* insert ISOtoGENCMapping(MNE, Montenegro, MNE, Montenegro)
* insert ISOtoGENCMapping(MNG, Mongolia, MNG, Mongolia)
* insert ISOtoGENCMapping(MNP, Northern Mariana Islands, MNP, Northern Mariana Islands)
* insert ISOtoGENCMapping(MOZ, Mozambique, MOZ, Mozambique)
* insert ISOtoGENCMapping(MRT, Mauritania, MRT, Mauritania)
* insert ISOtoGENCMapping(MSR, Montserrat, MSR, Montserrat)
* insert ISOtoGENCMapping(MTQ, Martinique, MTQ, Martinique)
* insert ISOtoGENCMapping(MUS, Mauritius, MUS, Mauritius)
* insert ISOtoGENCMapping(MWI, Malawi, MWI, Malawi)
* insert ISOtoGENCMapping(MYS, Malaysia, MYS, Malaysia)
* insert ISOtoGENCMapping(MYT, Mayotte, MYT, Mayotte)
* insert ISOtoGENCMapping(NAM, Namibia, NAM, Namibia)
* insert ISOtoGENCMapping(NCL, New Caledonia, NCL, New Caledonia)
* insert ISOtoGENCMapping(NER, Niger, NER, Niger (the\))
* insert ISOtoGENCMapping(NFK, Norfolk Island, NFK, Norfolk Island)
* insert ISOtoGENCMapping(NGA, Nigeria, NGA, Nigeria)
* insert ISOtoGENCMapping(NIC, Nicaragua, NIC, Nicaragua)
* insert ISOtoGENCMapping(NIU, Niue, NIU, Niue)
* insert ISOtoGENCMapping(NLD, Netherlands, NLD, Netherlands)
* insert ISOtoGENCMapping(NOR, Norway, NOR, Norway)
* insert ISOtoGENCMapping(NPL, Nepal, NPL, Nepal)
* insert ISOtoGENCMapping(NRU, Nauru, NRU, Nauru)
* insert ISOtoGENCMapping(NZL, New Zealand, NZL, New Zealand)
* insert ISOtoGENCMapping(OMN, Oman, OMN, Oman)
* insert ISOtoGENCMapping(PAK, Pakistan, PAK, Pakistan)
* insert ISOtoGENCMapping(PAN, Panama, PAN, Panama)
* insert ISOtoGENCMapping(PCN, Pitcairn, PCN, Pitcairn Islands)
* insert ISOtoGENCMapping(PER, Peru, PER, Peru)
* insert ISOtoGENCMapping(PHL, Philippines, PHL, Philippines)
* insert ISOtoGENCMapping(PLW, Palau, PLW, Palau)
* insert ISOtoGENCMapping(PNG, Papua New Guinea, PNG, Papua New Guinea)
* insert ISOtoGENCMapping(POL, Poland, POL, Poland)
* insert ISOtoGENCMapping(PRI, Puerto Rico, PRI, Puerto Rico)
* insert ISOtoGENCMapping(PRK, Korea\, Democratic People's Republic of, PRK, Korea\, North)
* insert ISOtoGENCMapping(PRT, Portugal, PRT, Portugal)
* insert ISOtoGENCMapping(PRY, Paraguay, PRY, Paraguay)
* insert ISOtoGENCMapping(PSE, Palestine\, State of, PSE, Palestinian Territory)
* insert ISOtoGENCMapping(PYF, French Polynesia, PYF, French Polynesia)
* insert ISOtoGENCMapping(QAT, Qatar, QAT, Qatar)
* insert ISOtoGENCMapping(REU, Réunion, REU, Reunion)
* insert ISOtoGENCMapping(ROU, Romania, ROU, Romania)
* insert ISOtoGENCMapping(RUS, Russian Federation, RUS, Russia)
* insert ISOtoGENCMapping(RWA, Rwanda, RWA, Rwanda)
* insert ISOtoGENCMapping(SAU, Saudi Arabia, SAU, Saudi Arabia)
* insert ISOtoGENCMapping(SDN, Sudan, SDN, Sudan (the\))
* insert ISOtoGENCMapping(SEN, Senegal, SEN, Senegal)
* insert ISOtoGENCMapping(SGP, Singapore, SGP, Singapore)
* insert ISOtoGENCMapping(SGS, South Georgia and the South Sandwich Islands, SGS, South Georgia and South Sandwich Islands)
* insert ISOtoGENCMapping(SHN, Saint Helena\, Ascension and Tristan da Cunha, SHN, Saint Helena\, Ascension\, and Tristan da Cunha)
* insert ISOtoGENCMapping(SLB, Solomon Islands, SLB, Solomon Islands (the\))
* insert ISOtoGENCMapping(SLE, Sierra Leone, SLE, Sierra Leone)
* insert ISOtoGENCMapping(SLV, El Salvador, SLV, El Salvador)
* insert ISOtoGENCMapping(SMR, San Marino, SMR, San Marino)
* insert ISOtoGENCMapping(SOM, Somalia, SOM, Somalia)
* insert ISOtoGENCMapping(SPM, Saint Pierre and Miquelon, SPM, Saint Pierre and Miquelon)
* insert ISOtoGENCMapping(SRB, Serbia, SRB, Serbia)
* insert ISOtoGENCMapping(SSD, South Sudan, SSD, South Sudan)
* insert ISOtoGENCMapping(STP, Sao Tome and Principe, STP, Sao Tome and Principe)
* insert ISOtoGENCMapping(SUR, Suriname, SUR, Suriname)
* insert ISOtoGENCMapping(SVK, Slovakia, SVK, Slovakia)
* insert ISOtoGENCMapping(SVN, Slovenia, SVN, Slovenia)
* insert ISOtoGENCMapping(SWE, Sweden, SWE, Sweden)
* insert ISOtoGENCMapping(SWZ, Swaziland, SWZ, Swaziland)
* insert ISOtoGENCMapping(SXM, Sint Maarten (Dutch part\), SXM, Sint Maarten)
* insert ISOtoGENCMapping(SYC, Seychelles, SYC, Seychelles)
* insert ISOtoGENCMapping(SYR, Syrian Arab Republic, SYR, Syria)
* insert ISOtoGENCMapping(TCA, Turks and Caicos Islands, TCA, Turks and Caicos Islands (the\))
* insert ISOtoGENCMapping(TCD, Chad, TCD, Chad)
* insert ISOtoGENCMapping(TGO, Togo, TGO, Togo)
* insert ISOtoGENCMapping(THA, Thailand, THA, Thailand)
* insert ISOtoGENCMapping(TJK, Tajikistan, TJK, Tajikistan)
* insert ISOtoGENCMapping(TKL, Tokelau, TKL, Tokelau)
* insert ISOtoGENCMapping(TKM, Turkmenistan, TKM, Turkmenistan)
* insert ISOtoGENCMapping(TLS, Timor-Leste, TLS, Timor-Leste)
* insert ISOtoGENCMapping(TON, Tonga, TON, Tonga)
* insert ISOtoGENCMapping(TTO, Trinidad and Tobago, TTO, Trinidad and Tobago)
* insert ISOtoGENCMapping(TUN, Tunisia, TUN, Tunisia)
* insert ISOtoGENCMapping(TUR, Turkey, TUR, Turkey)
* insert ISOtoGENCMapping(TUV, Tuvalu, TUV, Tuvalu)
* insert ISOtoGENCMapping(TWN, Taiwan\, Province of China, TWN, Taiwan)
* insert ISOtoGENCMapping(TZA, Tanzania\, United Republic of, TZA, Tanzania)
* insert ISOtoGENCMapping(UGA, Uganda, UGA, Uganda)
* insert ISOtoGENCMapping(UKR, Ukraine, UKR, Ukraine)
* insert ISOtoGENCMapping(URY, Uruguay, URY, Uruguay)
* insert ISOtoGENCMapping(USA, United States of America, USA, United States)
* insert ISOtoGENCMapping(UZB, Uzbekistan, UZB, Uzbekistan)
* insert ISOtoGENCMapping(VAT, Holy See, VAT, Vatican City)
* insert ISOtoGENCMapping(VCT, Saint Vincent and the Grenadines, VCT, Saint Vincent and the Grenadines)
* insert ISOtoGENCMapping(VEN, Venezuela\, Bolivarian Republic of, VEN, Venezuela)
* insert ISOtoGENCMapping(VGB, Virgin Islands\, British, VGB, Virgin Islands\, British)
* insert ISOtoGENCMapping(VIR, Virgin Islands\, U.S., VIR, Virgin Islands\, U.S.)
* insert ISOtoGENCMapping(VNM, Viet Nam, VNM, Vietnam)
* insert ISOtoGENCMapping(VUT, Vanuatu, VUT, Vanuatu)
* insert ISOtoGENCMapping(WLF, Wallis and Futuna, WLF, Wallis and Futuna)
* insert ISOtoGENCMapping(WSM, Samoa, WSM, Samoa)
* insert ISOtoGENCMapping(YEM, Yemen, YEM, Yemen)
* insert ISOtoGENCMapping(ZAF, South Africa, ZAF, South Africa)
* insert ISOtoGENCMapping(ZMB, Zambia, ZMB, Zambia)
* insert ISOtoGENCMapping(ZWE, Zimbabwe, ZWE, Zimbabwe)