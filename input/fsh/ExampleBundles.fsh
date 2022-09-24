Instance: 4723af4d-a25f-4dbe-a63b-b0a23305067a
InstanceOf: CMCeCTDDocument32p10
Title: "FHIR Document example of 32p10"
Description: "FHIR document bundle with the CMC eCTD 32p10 profiles"
Usage: #example

* type = #document
* timestamp = "2022-07-03T22:12:21Z"
//Composition
* entry[Composition].fullUrl = "Bundle/Composition/3a1ed58f-77bb-44b0-a24f-75ad7ef64c58"
* entry[Composition].resource = 3a1ed58f-77bb-44b0-a24f-75ad7ef64c58
//MedicinalProductDefinition
* entry[MedicinalProductDefinition].fullUrl = "Bundle/MedicinalProductDefinition/29a5d46d-23b9-476a-991d-67e3bc8676a0"
* entry[MedicinalProductDefinition].resource = 29a5d46d-23b9-476a-991d-67e3bc8676a0
* entry[MedicinalProductContainer].fullUrl = "Bundle/MedicinalProductContainer/8af426fd-5cea-4908-8dc5-b73f70b0e89f"
* entry[MedicinalProductContainer].resource = 8af426fd-5cea-4908-8dc5-b73f70b0e89f
 //   Ingredient 1..* and
* entry[Ingredient].fullUrl = "Bundle/Ingredient/f5fabcb5-eb22-424e-85f1-9489aa269d39"
* entry[Ingredient].resource = f5fabcb5-eb22-424e-85f1-9489aa269d39
* entry[Ingredient].fullUrl = "Bundle/Ingredient/79a09fd7-04c2-4077-ba45-69e31562b9c3"
* entry[Ingredient].resource = 79a09fd7-04c2-4077-ba45-69e31562b9c3
 //  SubstanceDefinition 1..* and
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/01df3194-eef7-4d9f-95f8-21f64ee1d6cb"
* entry[SubstanceDefinition].resource = 01df3194-eef7-4d9f-95f8-21f64ee1d6cb
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/6aef96c1-c9c2-4fd5-a3df-a4e66bea7380"
* entry[SubstanceDefinition].resource = 6aef96c1-c9c2-4fd5-a3df-a4e66bea7380
 //   Organization 1..* and
* entry[Organization].fullUrl = "Bundle/Organization/17177734-4328-4f76-9b88-c014a9abc9e3"
* entry[Organization].resource = 17177734-4328-4f76-9b88-c014a9abc9e3
 //   DocumentReference 0..*
* entry[DocumentReference].fullUrl = "Bundle/DocumentReference/5abefb38-4325-4609-bc3f-61fd62c6f90e"
* entry[DocumentReference].resource = 5abefb38-4325-4609-bc3f-61fd62c6f90e
* entry[DocumentReference].fullUrl = "Bundle/SubstanceDefinition/DocumentReference/fe3f13c1-f0ac-4b40-8024-f4386e290dfc"
* entry[DocumentReference].resource = fe3f13c1-f0ac-4b40-8024-f4386e290dfc

Instance: 692a0fa0-cd2c-4ad8-bd6b-7879326103f3
InstanceOf: CMCeCTDDocument32S10
Title: "FHIR Document example of 32S10"
Description: "FHIR document bundle with the CMC eCTD 32S10 profiles"
Usage: #example

* type = #document
* timestamp = "2022-07-06T22:30:21Z"
//Composition 1
* entry[Composition].fullUrl = "Bundle/Composition/b55b8d97-63c5-433c-95cf-812af58aa5fb"
* entry[Composition].resource = b55b8d97-63c5-433c-95cf-812af58aa5fb
//  SubstanceDefinition 1..*
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/942fcdc9-8ab9-4f52-be6d-af549117d462"
* entry[SubstanceDefinition].resource = 942fcdc9-8ab9-4f52-be6d-af549117d462
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1"
* entry[SubstanceDefinition].resource = 4dd0bb7a-6507-4df5-b2a1-f0d78ee6bba1
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/SubstanceDefinition/54f18826-92fb-4afa-bbc8-fdefabbd027f"
* entry[SubstanceDefinition].resource = 54f18826-92fb-4afa-bbc8-fdefabbd027f
//    Organization
* entry[Organization].fullUrl = "Bundle/Organization/17177734-4328-4f76-9b88-c014a9abc9e3"
* entry[Organization].resource = 17177734-4328-4f76-9b88-c014a9abc9e3
//   DocumentReference 0..*
* entry[DocumentReference].fullUrl = "Bundle/SubstanceDefinition/DocumentReference/fe3f13c1-f0ac-4b40-8024-f4386e290dfc"
* entry[DocumentReference].resource = fe3f13c1-f0ac-4b40-8024-f4386e290dfc

Instance: e3618267-93d5-4ace-ba76-6be510e54546
InstanceOf: CMCeCTDDocument32P32
Title: "FHIR Document example of 32P32"
Description: "FHIR document bundle with the CMC eCTD 32P32 profiles"
Usage: #example

//^text = "future stylesheet content"
* type = #document
* timestamp = "2022-08-06T10:30:21Z"
//Composition
* entry[Composition].fullUrl = "Bundle/Composition/1c353afe-cfa0-48e0-abba-b4e3ddc66208"
* entry[Composition].resource = 1c353afe-cfa0-48e0-abba-b4e3ddc66208
//
* entry[MedicinalProductDefinition].fullUrl = "Bundle/MedicinalProductDefinition/fb333dbd-4b8c-4006-8888-5d9849ef1f9b"
* entry[MedicinalProductDefinition].resource = fb333dbd-4b8c-4006-8888-5d9849ef1f9b
//    Organization
* entry[Organization].fullUrl = "Bundle/Organization/17177734-4328-4f76-9b88-c014a9abc9e3"
* entry[Organization].resource = 17177734-4328-4f76-9b88-c014a9abc9e3
//ActivityDefinition 1..* and
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/367ec3e3-65c6-4358-9ec1-054b669e0c36"
* entry[ActivityDefinition].resource = 367ec3e3-65c6-4358-9ec1-054b669e0c36
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/b6cc4cf0-666c-4b17-98b3-303ea87fdd74"
* entry[ActivityDefinition].resource = b6cc4cf0-666c-4b17-98b3-303ea87fdd74
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/1ebf5cbd-4c34-4d21-8b16-b21e849173ba"
* entry[ActivityDefinition].resource = 1ebf5cbd-4c34-4d21-8b16-b21e849173ba
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/e2714f5f-ae0e-4936-86ac-f3574bfbfd45"
* entry[ActivityDefinition].resource = e2714f5f-ae0e-4936-86ac-f3574bfbfd45
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/24f96097-e317-4b8f-8267-23a42c9afcd1"
* entry[ActivityDefinition].resource = 24f96097-e317-4b8f-8267-23a42c9afcd1
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/4d611344-0693-44cb-a0a3-cc404463fd34"
* entry[ActivityDefinition].resource = 4d611344-0693-44cb-a0a3-cc404463fd34
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/e336b548-4ea0-4eb3-9f71-5fd624b60e9f"
* entry[ActivityDefinition].resource = e336b548-4ea0-4eb3-9f71-5fd624b60e9f
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/ca679c3a-b940-4fe4-b454-ba25986d5567"
* entry[ActivityDefinition].resource = ca679c3a-b940-4fe4-b454-ba25986d5567
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/f7c69b8a-9c97-480c-b040-9bdba4f8a0d1"
* entry[ActivityDefinition].resource = f7c69b8a-9c97-480c-b040-9bdba4f8a0d1
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/021f7509-feba-49df-9288-f8db04bd6792"
* entry[ActivityDefinition].resource = 021f7509-feba-49df-9288-f8db04bd6792
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/8625a4fe-0484-4da0-8791-8d16997a5cac"
* entry[ActivityDefinition].resource = 8625a4fe-0484-4da0-8791-8d16997a5cac
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/29bb9464-86dd-4293-b2af-e535ec7de830"
* entry[ActivityDefinition].resource = 29bb9464-86dd-4293-b2af-e535ec7de830
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/b233147f-72ce-446a-abf2-5c01fe09be66"
* entry[ActivityDefinition].resource = b233147f-72ce-446a-abf2-5c01fe09be66
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/7528d67d-f15d-4094-baa5-a1d2b73596da"
* entry[ActivityDefinition].resource = 7528d67d-f15d-4094-baa5-a1d2b73596da
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/b58bb8fa-7c7c-42a9-ac27-84978f2c683e"
* entry[ActivityDefinition].resource = b58bb8fa-7c7c-42a9-ac27-84978f2c683e
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/d842946c-7f37-417b-ab88-ef13038b9bb5"
* entry[ActivityDefinition].resource = d842946c-7f37-417b-ab88-ef13038b9bb5
* entry[ActivityDefinition].fullUrl = "Bundle/ActivityDefinition/b3da720c-c063-4afc-a1a1-57bc545dbe1a"
* entry[ActivityDefinition].resource = b3da720c-c063-4afc-a1a1-57bc545dbe1a
//   Ingredient 1..*
* entry[Ingredient].fullUrl = "Bundle/Ingredient/0ee6ed41-894b-492b-bbca-955494fadb94"
* entry[Ingredient].resource = 0ee6ed41-894b-492b-bbca-955494fadb94
* entry[Ingredient].fullUrl = "Bundle/Ingredient/2abd3e0c-96ec-4287-abee-592ab0251018"
* entry[Ingredient].resource = 2abd3e0c-96ec-4287-abee-592ab0251018
* entry[Ingredient].fullUrl = "Bundle/Ingredient/390e8312-1a86-4b6e-af5c-1cc98a1e481d"
* entry[Ingredient].resource = 390e8312-1a86-4b6e-af5c-1cc98a1e481d
* entry[Ingredient].fullUrl = "Bundle/Ingredient/7a77bed2-3b5e-4722-b442-5aa3f3f64210"
* entry[Ingredient].resource = 7a77bed2-3b5e-4722-b442-5aa3f3f64210
* entry[Ingredient].fullUrl = "Bundle/Ingredient/0dc2fa8f-89ed-44b2-b835-b4e5d3a8d78a"
* entry[Ingredient].resource = 0dc2fa8f-89ed-44b2-b835-b4e5d3a8d78a
* entry[Ingredient].fullUrl = "Bundle/Ingredient/88ce020c-846c-463d-8e33-babdfe80c947"
* entry[Ingredient].resource = 88ce020c-846c-463d-8e33-babdfe80c947
* entry[Ingredient].fullUrl = "Bundle/Ingredient/7c310723-134d-425a-9aff-60462e4c567a"
* entry[Ingredient].resource = 7c310723-134d-425a-9aff-60462e4c567a
* entry[Ingredient].fullUrl = "Bundle/Ingredient/54b2180a-ba32-45c4-884b-670ffa28e9af"
* entry[Ingredient].resource = 54b2180a-ba32-45c4-884b-670ffa28e9af
* entry[Ingredient].fullUrl = "Bundle/Ingredient/e30e4e0b-365f-4cf4-b6f8-00c7ca2dc934"
* entry[Ingredient].resource = e30e4e0b-365f-4cf4-b6f8-00c7ca2dc934
* entry[Ingredient].fullUrl = "Bundle/Ingredient/4ca2742c-416c-465e-916d-fa1990911489"
* entry[Ingredient].resource = 4ca2742c-416c-465e-916d-fa1990911489
* entry[Ingredient].fullUrl = "Bundle/Ingredient/862ce93d-8743-42ab-84de-be28d8300df8"
* entry[Ingredient].resource = 862ce93d-8743-42ab-84de-be28d8300df8
* entry[Ingredient].fullUrl = "Bundle/Ingredient/a5084f22-ffbf-4268-a240-0d203c499cc5"
* entry[Ingredient].resource = a5084f22-ffbf-4268-a240-0d203c499cc5
* entry[Ingredient].fullUrl = "Bundle/Ingredient/71a6de11-4229-4228-97c6-68e1d6acb78b"
* entry[Ingredient].resource = 71a6de11-4229-4228-97c6-68e1d6acb78b
* entry[Ingredient].fullUrl = "Bundle/Ingredient/be37ba6a-f009-4ec0-92f0-2abb8d78a6a1"
* entry[Ingredient].resource = be37ba6a-f009-4ec0-92f0-2abb8d78a6a1
* entry[Ingredient].fullUrl = "Bundle/Ingredient/085a514e-b5cb-4e65-b5ab-3180e4aceba0"
* entry[Ingredient].resource = 085a514e-b5cb-4e65-b5ab-3180e4aceba0
* entry[Ingredient].fullUrl = "Bundle/Ingredient/2ab2018b-f387-48f9-8cd0-0ca9346acf2d"
* entry[Ingredient].resource = 2ab2018b-f387-48f9-8cd0-0ca9346acf2d
* entry[Ingredient].fullUrl = "Bundle/Ingredient/a9f265fe-90ae-4e78-ae81-3dacabe9ae7a"
* entry[Ingredient].resource = a9f265fe-90ae-4e78-ae81-3dacabe9ae7a
//SubstanceDefinition 1..*
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/54388f31-3469-4fb4-b7c2-d785cb042d1d"
* entry[SubstanceDefinition].resource = 54388f31-3469-4fb4-b7c2-d785cb042d1d
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/868a2f83-b9ba-4ece-b238-11e0afe222ee"
* entry[SubstanceDefinition].resource = 868a2f83-b9ba-4ece-b238-11e0afe222ee
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/171f0414-6999-47fa-b792-67510f9e33cc"
* entry[SubstanceDefinition].resource = 171f0414-6999-47fa-b792-67510f9e33cc
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/46667123-2b0f-4dfe-aebe-79f8ddcc58dd"
* entry[SubstanceDefinition].resource = 46667123-2b0f-4dfe-aebe-79f8ddcc58dd
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/4bb4aeb0-47c2-4c90-ac13-041fb6a36ce2"
* entry[SubstanceDefinition].resource = 4bb4aeb0-47c2-4c90-ac13-041fb6a36ce2
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/d4e21b68-6ec4-4ab2-9615-89aceb6de25e"
* entry[SubstanceDefinition].resource = d4e21b68-6ec4-4ab2-9615-89aceb6de25e
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/a1ad301f-356b-4010-9d61-8e01af0a3f38"
* entry[SubstanceDefinition].resource = a1ad301f-356b-4010-9d61-8e01af0a3f38
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf"
* entry[SubstanceDefinition].resource = a54f81ae-e4cd-41a3-a3f1-2a00171e9ccf
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/b91053b7-f87c-4baa-9dfd-33619e8c9d72"
* entry[SubstanceDefinition].resource = b91053b7-f87c-4baa-9dfd-33619e8c9d72
* entry[SubstanceDefinition].fullUrl = "Bundle/SubstanceDefinition/6a064012-5b43-489d-bd07-4c0cc1da593e"
* entry[SubstanceDefinition].resource = 6a064012-5b43-489d-bd07-4c0cc1da593e



