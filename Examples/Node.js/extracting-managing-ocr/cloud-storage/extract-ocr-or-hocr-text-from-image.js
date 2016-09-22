var fs = require('fs');
var assert = require('assert');
var OcrApi = require('asposeocrcloud');
var StorageApi = require('asposestoragecloud');

var configProps = require('../../data/config.json');
var data_path = '../../data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var outFolder = configProps.out_folder;

// ExStart:1
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

//Instantiate Aspose.Storage API SDK
var storageApi = new StorageApi(config);

//Instantiate Aspose.OCR API SDK
var ocrApi = new OcrApi(config);

// Set the image file name 
var name = "Sampleocr.bmp";

// Set the language of the document.
var language = "English";

//Set the spelling correction is used.
var useDefaultDictionaries = true;

// Set 3rd party cloud storage server (if any)
var storage = null;

// Set folder location at cloud storage (if any)
var folder = null;

try {
	//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image        
	ocrApi.GetRecognizeDocument(name, language, null, null, null, null, useDefaultDictionaries, storage, folder, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		console.log("Text :: " + responseMessage.body.Text);
		console.log("Extract OCR or HOCR Text from Images, Done!");
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1