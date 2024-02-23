###  Diagrams and General Notes on Bundles

Each of the Composition profiles is contained in a specified bundle of the document type. They each have a page under the eCTD Profiles tab. The example bundles are not specific to any particular product and should not be examined for any sense of chemical or biological science. All examples are fictitious but sometimes based on real chemical compounds. All sources were augmented with values required by this standard or altered with more current names or completely additional data to illustrate a profile feature. All attempts were made to produce realistic content and challenge formatting within XML. Some element examples have been added into the mix to demonstrate their syntax. The diagram below contains a legend for the Composition profile diagrams.

<div>{%include legend.svg%}</div>

For more information about the profiles found in any of the diagrams, look on the [Artifacts page](Artifacts.html) for details about the specific requirements. 

### Referencing Bundled Resources

All entries in the bundle must have an identifier to support the ability for them to be referenced within the document. Unless there is a unique identifier and system available, provide a Uniform Resource Identifier (URI): Generic Syntax as the identifier. More information is available at: [https://datatracker.ietf.org/doc/html/rfc3986/](https://datatracker.ietf.org/doc/html/rfc3986/). The system should be entered as “urn:ietf:rfc:3986”.

Although FHIR allows for multiple ways to reference other resources, they are not all appropriate for the PQ/CMC use case because the receiving endpoint is not a FHIR server. Resources cannot be referenced using a URL to a server. They must be added in a bundle together with the other resources required by the composition to have everything available in one XML file.

### Narrative Generation

Human readable representation or visualization of the content of the PQ/CMC Bundles is required. The location for this in the narrative element of the text element for the domainResource of the Composition which is required for document type Bundle resources. Some PQ/CMC bundles involve complex data and relies on many resources to convey meaningful content. Because the Composition resource provides the context for all the other resources in the Bundle it is preferred to enter all the human readable content in the Narrative of Composition. The Composition Narrative will embody the whole (including the Resources in the Bundle it refers to), so that it represents the full document. All other resources shall have the status value="empty". 

The div element within the narrative is limited to XHTML content. This is a restricted set of formatting directions. A narrative transform has been developed that formats valid XML files for each of the Bundle profiles. The narrative transform can be downloaded on the Downloads page. Its use is not required, however any other means of creating the narrative must display all content for each bundle that this transform supports. If the data is displayed in a table, and an alternative representation is used, an alternative narrative must present those elements in a table. The narrative transform is an HTML page with javaSripts. It reads the file, displays its process and previews the inserted human readable XHTML. After review, a user can save the file. It only saves to the download directory. The examples of the Bundle resources are displayed with their respective styles. The downloadable examples and those accessible from the Artifacts page have the IG default build style applied. Any content in the any div.text element is cleared and replaced by the narrative transform. Saved XML files may be opened in any browser to view the content; however Firefox and Chrome are suggested.

### Markdown Supported by Narrative Transform

There are many elements defined by the markdown datatype. The sytlesheets are restricted to GitHub flavor of Markdown. Line feeds must be double spaces. Not all markdown features are supported.
#### Supported
* Headers <h1>, <h2> and <h3>
* Emphasis
* Unordered Lists with asterisk only
* Ordered Lists
* Links
* Blockqoutes
* Backslash Escapses: restricted to asterisk, underscore, curly braces, Parenthesis, plus sign and minus sign

#### Not Supported
* Emoji
* Fenced Code Blocks
* Images -  Images should be entered according to the profile Base64DocumentReference. The text associated with the image can refer to it.
* Issue References
* Task Lists
* Tables - These have not been tested. Use at your own risk and test with the narrative transform
* Username Mentions

#### Narrative Transform Steps

* Download from the [Downloads page](downloads.html).  Respond “Keep” if the files system objects to saving the download. Unblock the zipfile.
* UnZip the file. 
* Open Transform.html in a browser. The page displays as shown below.

<table style="margin: 0px auto;"><tr><td><img src="emptyxmlStyler_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold"> Narrative Transform HTML Page </p>

* Click on “Choose file” then select a bundle file. The Narrative Transform detects the bundle type. All bundles in this IG are supported.
* The Narrative Transform does not validate the bundle. If the XML is not displayed, an error message appears. If this happens, check the XML file.
* The transformed XML bundle will show in the text area. Verify that this is the bundle and save the updated file by clicking the “Save XML Bundle file” at the bottom of the page. You may have to scroll down the page to see the button.
* Enter a new file name for the new XML bundle file.
* Confirm by clicking “OK”. Note: Due to Cross-Origin Resource Sharing (CORS), the phrase “This page says” cannot be changed. 
* To process another bundle, simply click on “Choose file” and select the bundle file.

<table style="margin: 0px auto;"><tr><td><img src="fill_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold">  Narrative Transform Text Area and Save Button  </p>

* To process another file, simply open another file.

### Versioning of Bundles
Any versioning of bundles is for the application sponsor's usage.  The status of all bundles is "active". The eCTD software will replace all prior bundles versions and the latest bundle will be the current version.

### Examples

Bundle examples contain one instance of a profile when the cardinality for that profile is one, and two instances of a profile when the cardinality is one to many. There are many bundles that will contain ten or more entries of the same type of profile, such as product composition, batch formula, quality specifications and stability reports.

Although JSON is supported by FHIR and this IG, bundles will be submitted within the eCTD in XML format.

