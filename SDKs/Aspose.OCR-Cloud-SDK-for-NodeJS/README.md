# Aspose.OCR Cloud SDK for Node.js

This repository contains Aspose.OCR Cloud SDK for Node.js source code. This SDK allows you to work with Aspose.OCR Cloud REST APIs in your Node.js applications quickly and easily. 

<p align="center">
  <a title="Download complete Aspose.OCR for Cloud source code" href="https://github.com/asposeocr/Aspose_ocr_Cloud/archive/master.zip">
	<img src="https://raw.github.com/AsposeExamples/java-examples-dashboard/master/images/downloadZip-Button-Large.png" />
  </a>
</p>
## How to use the SDK?

The complete source code is available in this repository folder, you can either directly use it in your project or use NPM. For more details, please visit our [documentation](http://www.aspose.com/docs/display/ocrcloud/Available+SDKs).


## Quick SDK Tutorial
```javascript
var fs = require('fs');
var assert = require('assert');
var StorageApi =require("asposestoragecloud")
var OcrApi = require("asposeocrcloud");

var AppSID = 'XXX'; //specify App SID
var AppKey = 'XXX'; //specify App Key
var config = {'appSid':AppSID,'apiKey':AppKey};
var data_path = '../data/';

try {
//Instantiate Aspose.Storage API SDK
var storageApi = new StorageApi(config);

//Instantiate Aspose.OCR API SDK
var ocrApi = new OcrApi(config);

//set input file name
var name =  "Sampleocr.bmp";
var storage = null;
var folder = null;

//upload file to aspose cloud storage
storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
	assert.equal(responseMessage.status, 'OK');
	//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
	ocrApi.GetRecognizeDocument(name, null, null, null, null, null, null, storage, folder, function(responseMessage) {
			assert.equal(responseMessage.status, 'OK');		
			console.log("Text :: " + responseMessage.body.Text);
			});
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
```

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).
