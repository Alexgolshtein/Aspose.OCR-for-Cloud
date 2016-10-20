  using System;
  using System.Collections.Generic;
  using System.Text.RegularExpressions;
  using Com.Aspose.OCR;
  using Com.Aspose.OCR.Model;
  namespace Com.Aspose.OCR.Api {
    public class OcrApi {
      string basePath;
      private readonly ApiInvoker apiInvoker = ApiInvoker.GetInstance();

      public OcrApi(String apiKey, String appSid, String basePath )
      {
	apiInvoker.apiKey = apiKey;
        apiInvoker.appSid = appSid;
        this.basePath = basePath;
      }

      public ApiInvoker getInvoker() {
        return apiInvoker;
      }

      // Sets the endpoint base url for the services being accessed
      public void setBasePath(string basePath) {
        this.basePath = basePath;
      }

      // Gets the endpoint base url for the services being accessed
      public String getBasePath() {
        return basePath;
      }

      /// <summary>
      /// Recognize image text, language and text region can be selected, default dictionaries can be used for correction. Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
      /// </summary>
      /// <param name="name"></param>
      /// <param name="language"></param>
      /// <param name="rectX"></param>
      /// <param name="rectY"></param>
      /// <param name="rectWidth"></param>
      /// <param name="rectHeight"></param>
      /// <param name="useDefaultDictionaries"></param>
      /// <param name="storage"></param>
      /// <param name="folder"></param>
      /// <returns></returns>
      public OCRResponse GetRecognizeDocument (string name, string language, int? rectX, int? rectY, int? rectWidth, int? rectHeight, bool? useDefaultDictionaries, string storage, string folder) {
        // create path and map variables
        var ResourcePath = "/ocr/{name}/recognize/?appSid={appSid}&amp;language={language}&amp;rectX={rectX}&amp;rectY={rectY}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;useDefaultDictionaries={useDefaultDictionaries}&amp;storage={storage}&amp;folder={folder}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (name == null ) {
           throw new ApiException(400, "missing required params");
        }
        if (name == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])name=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "name" + "}", apiInvoker.ToPathValue(name)); 
		}
        if (language == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])language=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "language" + "}", apiInvoker.ToPathValue(language)); 
		}
        if (rectX == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectX=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectX" + "}", apiInvoker.ToPathValue(rectX)); 
		}
        if (rectY == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectY=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectY" + "}", apiInvoker.ToPathValue(rectY)); 
		}
        if (rectWidth == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectWidth=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectWidth" + "}", apiInvoker.ToPathValue(rectWidth)); 
		}
        if (rectHeight == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])rectHeight=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "rectHeight" + "}", apiInvoker.ToPathValue(rectHeight)); 
		}
        if (useDefaultDictionaries == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])useDefaultDictionaries=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "useDefaultDictionaries" + "}", apiInvoker.ToPathValue(useDefaultDictionaries)); 
		}
        if (storage == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])storage=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "storage" + "}", apiInvoker.ToPathValue(storage)); 
		}
        if (folder == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])folder=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "folder" + "}", apiInvoker.ToPathValue(folder)); 
		}
        try {
          if (typeof(OCRResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            return (OCRResponse) ApiInvoker.deserialize(response, typeof(OCRResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "GET", queryParams, null, headerParams, formParams);
            if(response != null){
               return (OCRResponse) ApiInvoker.deserialize(response, typeof(OCRResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      /// <summary>
      /// Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction. Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction.
      /// </summary>
      /// <param name="url"></param>
      /// <param name="language"></param>
      /// <param name="useDefaultDictionaries"></param>
      /// <param name="file"></param>
      /// <returns></returns>
      public OCRResponse PostOcrFromUrlOrContent (string url, string language, bool? useDefaultDictionaries, byte[] file) {
        // create path and map variables
        var ResourcePath = "/ocr/recognize/?appSid={appSid}&amp;url={url}&amp;language={language}&amp;useDefaultDictionaries={useDefaultDictionaries}".Replace("{format}","json");
		ResourcePath = Regex.Replace(ResourcePath, "\\*", "").Replace("&amp;", "&").Replace("/?", "?").Replace("toFormat={toFormat}", "format={format}");

        // query params
        var queryParams = new Dictionary<String, String>();
        var headerParams = new Dictionary<String, String>();
        var formParams = new Dictionary<String, object>();

        // verify required params are set
        if (!(file == null ^ url == null)) {
           throw new ApiException(400, "missing required params");
        }
        if (url == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])url=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "url" + "}", apiInvoker.ToPathValue(url)); 
		}
        if (language == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])language=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "language" + "}", apiInvoker.ToPathValue(language)); 
		}
        if (useDefaultDictionaries == null){
		  ResourcePath = Regex.Replace(ResourcePath, @"([&?])useDefaultDictionaries=", "");
		}else{
		  ResourcePath = ResourcePath.Replace("{" + "useDefaultDictionaries" + "}", apiInvoker.ToPathValue(useDefaultDictionaries)); 
		}
        if (file != null){
         if(file is byte[]) {
		 
			 var docFile = new FileInfo();
             docFile.file = file;
             docFile.MimeType = "application/octet-stream";
             formParams.Add("file", docFile);
         } else {
           //string paramStr = (file is DateTime) ? ((DateTime)(object)file).ToString("u") : Convert.ToString(file);
		    string paramStr = Convert.ToString(file);
           formParams.Add("file", paramStr);
         }
		}
        try {
          if (typeof(OCRResponse) == typeof(ResponseMessage)) {
            var response = apiInvoker.invokeBinaryAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            return (OCRResponse) ApiInvoker.deserialize(response, typeof(OCRResponse));
          } else {
            var response = apiInvoker.invokeAPI(basePath, ResourcePath, "POST", queryParams, null, headerParams, formParams);
            if(response != null){
               return (OCRResponse) ApiInvoker.deserialize(response, typeof(OCRResponse));
            }
            else {
              return null;
            }
          }
        } catch (ApiException ex) {
          if(ex.ErrorCode == 404) {
          	return null;
          }
          else {
            throw ex;
          }
        }
      }
      }
    }
