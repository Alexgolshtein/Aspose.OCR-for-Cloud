var fs = require('fs');
var assert = require('assert');
var OcrApi = require('asposeocrcloud');

var configProps = require('../../data/config.json');
var data_path = '../../data/';

var AppSID = configProps.app_sid;
var AppKey = configProps.api_key;
var outFolder = configProps.out_folder;

// ExStart:1
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};

//Instantiate Aspose.OCR API SDK
var ocrApi = new OcrApi(config);

// Set the image file name 
var name = "Sampleocr.bmp";

//Set the image file url. 
var url = "https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";

// Set the language of the document.
var language = "English";

//Set the spelling correction is used.
var useDefaultDictionaries = true;

try {
	//invoke Aspose.OCR Cloud SDK API to extract image text from url  
	ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, null, function(responseMessage) {
		assert.equal(responseMessage.status, 'OK');
		console.log("Text :: " + responseMessage.body.Text);
		console.log("Extract OCR or HOCR Text from Images without using Storage, Done!");
	});

}catch (e) {
  console.log("exception in example");
  console.log(e);
}
//ExEnd:1