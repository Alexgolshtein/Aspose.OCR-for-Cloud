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

// Set X and Y coordinate to recognize text inside..
var rectX = 150;
var rectY = 100;

//Set Width and Height to recognize text inside.
var rectWidth = 1000;
var rectHeight = 300;

//Set the spelling correction is used.
var useDefaultDictionaries = true;

// Set 3rd party cloud storage server (if any)
var storage = null;

// Set folder location at cloud storage (if any)
var folder = null;

try {
	//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image        
	ocrApi.GetRecognizeDocument(name, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		console.log("Text :: " + responseMessage.body.Text);
		console.log("Extract OCR or HOCR Text from a specific Block, Done!");
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1