var fs = require('fs');
var StorageApi = require('asposestoragecloud');
var OcrApi = require('../lib/OcrApi');
var assert = require('assert');

var AppSID = 'XXX'; //sepcify App SID
var AppKey = 'XXX'; //sepcify App Key
var config = {'appSid':AppSID,'apiKey':AppKey , 'debug' : true};
var data_path = './data/';

var storageApi = new StorageApi(config); 
var ocrApi = new OcrApi(config);
var nodeunit = require('nodeunit');

exports.testPostOcrFromUrlOrContent = function(test){
	
	test.expect(3);
	
	var name =  "Sampleocr.bmp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		ocrApi.PostOcrFromUrlOrContent(null, "english", null, data_path+name, function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Text !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};

exports.testGetRecognizeDocument = function(test){
	
	test.expect(3);
	
	var name =  "Sampleocr.bmp";
	var storage = null;
	var folder= null;

	storageApi.PutCreate(name, null, null, data_path + name , function(responseMessage) {
		
		test.equal(responseMessage.status, 'OK', '');	
		ocrApi.GetRecognizeDocument(name, null, null, null, null, null, null, storage, folder,  function(responseMessage) {
			if(config.debug){console.log('status:', responseMessage.status);}
			if(config.debug){console.log('body:', responseMessage.body);}
			test.equal(responseMessage.status, 'OK', '');
			test.ok(responseMessage.body !== null && typeof responseMessage.body.Text !== 'undefined', "response body assertion should pass");
			test.done();
		});
	});
	
};