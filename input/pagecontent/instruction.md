tbd intro to page
### Document Bundle Graphs

The PQ/CMC Profile design and development of IG is being bound to the FHIR Build definition at [https://build.fhir.org/](https://build.fhir.org/) and NOT to the FHIR Release 4.5.0. 

###  Diagrams and General Notes on Bundles

Each of the Comopistion profiles is contained in a specified bundle of the document type. They each have a page under the eCTD Pofiles tab. The example bundles are not specific to any particuar product and should not be examined for any sense of chemical or biological science. Some examples are derived from an example of an acceptable FDA submission by Dr. Marcus Ferrone from Hyperpolarized MRI Technology Resource Center at the University of California at San Francisco, Patent application WO 2010/093854 and re-use data from the eStabilty Implementation Guide data. All sources were augmented with values required by this standard or altered with more current names or completely additional data to illustrate a profile feature. All attempts were made to produce realistic content and challenge formating within XML.  Some element examples have been added into the mix to demonstrate their syntax. This is a legend for those diagrams

<div>{%include legend.svg%}</div>

For more information about the profiles found in any of the diagrams, look on the [Artifacts page](Artifacts.html) for details about the specific requirements. 

### Narrative Generation

Human readable representation or visualization of the content of the PQ/CMC Bundles is required.   The location for this in the narrative element of the text element for the domainResource of the Composition which is required for document type Bundle resources.   Some PQ/CMC bundles involve complex data and relies on many resources to convey meaningful content.  Because the Composition resource provides the context for all the other resources in the Bundle it is preferred to enter all the human readable content in the Narrative of Composition.   The Composition Narrative will embody the whole (including the Resources in the Bundle it refers to), so that it represents the full document. All other resources shall have the status value="empty". 

The div element within the narrative is limited to XHTML content.  This is a restricted set of formatting directions.  A narrative transform has been developed that formats valid XML file for each of the Bundle profiles.  The narrative transform can be downloaded on the Downloads page.  Its use is not required, however all content that is displayed for each bundle is required.   If the data is displayed in a table, and an alternative representation is used, it must present those elements in a table.  The narrative transform is an HTML page with javaSripts. It reads the file, diplays its process and previews the inserted human readable XHTML.  After review a user can save the file.  It only saves to the download directory. The narrative transform  are free software and can be redistributed and/or modified under the terms of the GNU Lesser General Public License.  The examples of the Bundle resources are displayed with their respective styles.  The downloadable examples and those accessible from the Artifacts page have the IG default build style applied.  They open in any browser to view the content; (Firefox and Chrome are best).

### Markdown Supported by Narrative Transform

There are many elements defined by the markdown datatype.  The sytlesheets are restricted to GitHub flavor of Markdown. Line feeds must be double spaces.  Not all markdown features are supported.
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
* Images -  Images should be entered according to the profile Base64DocumentReference.  The text associated with the image can refer to it.
* Issue References
* Task Lists
* Tables - These have not been tested. Use at your own risk and test with the narrative transform
* Username Mentions

#### Narrative Transform Steps

* Download from the [Downloads page](downloads.html).  Repond "Keep" if the file system objects to saving. Unblock the zipfile.
* UnZip the file.
* Open Transform.html in a browser.  The page displays as below.

<table style="margin: 0px auto;"><tr><td><img src="emptyxmlStyler_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold"> Narrative Transform HTML Page </p>

* Click on "Choose file" then select at file.  The Narrative Transform detects the bundle type. All bundles in this IG are supported.
* File data will display.  The Narrative Transform does not validate.  If nothing displays, check the XML file.
* The tranformed XML file will show in the text area.  Verrify that this the file and save the updated file by clicking the "Save XML Button file" at the bottom of the page. Scroll down if necessary to see the button.  Tranformed file seen in text area with "Save XML Button file" button are shown below.
* Enter a new file name.
* Confirm by clicking "OK".  Note: Due to Cross-Origin Resource Sharing (CORS), the phrase "This page says" cannot be changed.

<table style="margin: 0px auto;"><tr><td><img src="fill_Transform.png" /></td></tr></table>

<p style="text-align: center; font-weight: bold">  Narrative Transform Text Area and Save Button  </p>

* To process another file, click Refresh at the top of the page.
### Referencing Bundled Resources

All entries in the bundle must have an identifer if they because they are referenced within the document.  Unless there is a unique identifier and system available, provide a Uniform Resource Identifier (URI): Generic Syntax as the identifer. More information is avabilabe at: [https://datatracker.ietf.org/doc/html/rfc3986/](https://datatracker.ietf.org/doc/html/rfc3986/).  The system should be entered as "urn:ietf:rfc:3986".

Althought FHIR allows for multiple ways to reference other resources, they are not all appropriate for the PQ/CMC use case because the receiving endpoint is not a FHIR server. Resources cannot be referenced using a URL to a server. They must be added in a bundle together with the other resources required by the composition to have everything available in one XML file.

### Versioning of Bundles
tbd write about eCTD and replace and versioning

### Examples

Bunle examples contain one instance of a profile when the cardinality for that profile is one and two when the cardinaltiy is one to many.  There are many bundles that will contain ten or more entries of the same type of profile, such as product composistion, batch formula, quality specifications and stability reports.  Althogh JSON is supported by FHIR and this IG, bundles will be submitted within the eCTD in XML format.

