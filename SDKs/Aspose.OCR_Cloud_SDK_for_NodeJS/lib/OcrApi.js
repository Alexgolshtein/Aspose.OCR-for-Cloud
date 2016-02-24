var path = require('path');
var fs = require('fs');
var apiClient = require('./api-client');


function OcrApi(config) {
	var self = this;
	
	apiClient = new apiClient(config);
	this.config = apiClient.config;
}


/**
* PostOcrFromUrlOrContent
* Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction.
*
* @param  (String) url  -  The image file url. (optional) 
* @param  (String) language  -  Language of the document. (optional) 
* @param  (Boolean) useDefaultDictionaries  -  Use default dictionaries for result correction. (optional) 
* @param  (File) file  -   (required) 
* @returns OCRResponse (Map)
*/
OcrApi.prototype.PostOcrFromUrlOrContent = function(url, language, useDefaultDictionaries, file, callback) {

    var self = this;
	   	
	
	var resourcePath = '/ocr/recognize/?appSid={appSid}&amp;url={url}&amp;language={language}&amp;useDefaultDictionaries={useDefaultDictionaries}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof url !== 'undefined' &&  url !== null && url!== ''){            
			resourcePath = resourcePath.replace("{" + "url" + "}" , url);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]url.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof language !== 'undefined' &&  language !== null && language!== ''){            
			resourcePath = resourcePath.replace("{" + "language" + "}" , language);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]language.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof useDefaultDictionaries !== 'undefined' &&  useDefaultDictionaries !== null && useDefaultDictionaries!== ''){            
			resourcePath = resourcePath.replace("{" + "useDefaultDictionaries" + "}" , useDefaultDictionaries);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]useDefaultDictionaries.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'POST'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	if(file !== 'undefined' && file !== null && file !== ''){
		postData = fs.readFileSync(file)
	}
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'multipart/form-data'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    
/**
* GetRecognizeDocument
* Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
*
* @param  (String) name  -  Name of the file to recognize. (required) 
* @param  (String) language  -  Language of the document. (optional) 
* @param  (String) rectX  -  Top left point X coordinate of  to recognize text inside. (optional) 
* @param  (String) rectY  -  Top left point Y coordinate of  to recognize text inside. (optional) 
* @param  (String) rectWidth  -  Width of  to recognize text inside. (optional) 
* @param  (String) rectHeight  -  Height of  to recognize text inside. (optional) 
* @param  (Boolean) useDefaultDictionaries  -  Use default dictionaries for result correction. (optional) 
* @param  (String) storage  -  Image&#39;s storage. (optional) 
* @param  (String) folder  -  Image&#39;s folder. (optional) 
* @returns OCRResponse (Map)
*/
OcrApi.prototype.GetRecognizeDocument = function(name, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder, callback) {

    var self = this;
	
	if( typeof name === 'undefined' || name === null && name === ''){
		throw new Error('missing required parameters.');
    }         	
		
	var resourcePath = '/ocr/{name}/recognize/?appSid={appSid}&amp;language={language}&amp;rectX={rectX}&amp;rectY={rectY}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;useDefaultDictionaries={useDefaultDictionaries}&amp;storage={storage}&amp;folder={folder}';
	
	resourcePath = resourcePath.replace(new RegExp('\\*', 'g'), "");
	resourcePath = resourcePath.replace(new RegExp('&amp;', 'g'), '&');
	resourcePath = resourcePath.replace('&amp;','&').replace("/?","?").replace("toFormat={toFormat}","format={format}").replace("{path}","{Path}");
	
	
	if(typeof name !== 'undefined' &&  name !== null && name!== ''){            
			resourcePath = resourcePath.replace("{" + "name" + "}" , name);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]name.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof language !== 'undefined' &&  language !== null && language!== ''){            
			resourcePath = resourcePath.replace("{" + "language" + "}" , language);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]language.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectX !== 'undefined' &&  rectX !== null && rectX!== ''){            
			resourcePath = resourcePath.replace("{" + "rectX" + "}" , rectX);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectX.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectY !== 'undefined' &&  rectY !== null && rectY!== ''){            
			resourcePath = resourcePath.replace("{" + "rectY" + "}" , rectY);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectY.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectWidth !== 'undefined' &&  rectWidth !== null && rectWidth!== ''){            
			resourcePath = resourcePath.replace("{" + "rectWidth" + "}" , rectWidth);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectWidth.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof rectHeight !== 'undefined' &&  rectHeight !== null && rectHeight!== ''){            
			resourcePath = resourcePath.replace("{" + "rectHeight" + "}" , rectHeight);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]rectHeight.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof useDefaultDictionaries !== 'undefined' &&  useDefaultDictionaries !== null && useDefaultDictionaries!== ''){            
			resourcePath = resourcePath.replace("{" + "useDefaultDictionaries" + "}" , useDefaultDictionaries);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]useDefaultDictionaries.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof storage !== 'undefined' &&  storage !== null && storage!== ''){            
			resourcePath = resourcePath.replace("{" + "storage" + "}" , storage);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]storage.*?(?=&|\\?|$)', 'g'), "");
		}
	
	if(typeof folder !== 'undefined' &&  folder !== null && folder!== ''){            
			resourcePath = resourcePath.replace("{" + "folder" + "}" , folder);
	}else{
		resourcePath = resourcePath.replace(new RegExp('[&?]folder.*?(?=&|\\?|$)', 'g'), "");
		}
	
	
	if(this.config.debug){console.log('resourcePath :: ' + resourcePath);}
	
    method = 'GET'
    queryParams = {}
    headerParams = {}
    formParams = {}
    files = {}
	postData = null;
    
	
	headerParams['Accept'] = 'application/xml,application/json'
    headerParams['Content-Type'] = 'application/json'

	return apiClient.InvokeAPI(resourcePath, method, queryParams, postData, headerParams, files, callback);
  }
    

module.exports = OcrApi


