<?php

namespace Aspose\OCR;

use Aspose\OCR\ApiException as Exception;
use Aspose\OCR\ApiClient;

class OcrApi {

    function __construct() {
        $this->apiClient = new ApiClient();
    }

    /**
     * GetRecognizeDocument
     * Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
     * name, string: Name of the file to recognize. (required)

     * language, string: Language of the document. (optional)

     * rectX, int: Top left point X coordinate of  to recognize text inside. (optional)

     * rectY, int: Top left point Y coordinate of  to recognize text inside. (optional)

     * rectWidth, int: Width of  to recognize text inside. (optional)

     * rectHeight, int: Height of  to recognize text inside. (optional)

     * useDefaultDictionaries, bool: Use default dictionaries for result correction. (optional)

     * storage, string: Image's storage. (optional)

     * folder, string: Image's folder. (optional)

     * @return OCRResponse
     */
    public function GetRecognizeDocument($name, $language = null, $rectX = null, $rectY = null, $rectWidth = null, $rectHeight = null, $useDefaultDictionaries = null, $storage = null, $folder = null) {
        // verify required params are set
        if ($name == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/ocr/{name}/recognize/?appSid={appSid}&amp;language={language}&amp;rectX={rectX}&amp;rectY={rectY}&amp;rectWidth={rectWidth}&amp;rectHeight={rectHeight}&amp;useDefaultDictionaries={useDefaultDictionaries}&amp;storage={storage}&amp;folder={folder}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "GET";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'application/json';

        if ($name != null) {
            $resourcePath = str_replace("{" . "name" . "}", $this->apiClient->toQueryValue($name), $resourcePath);
        } else {
            $resourcePath = str_replace("&name={" . "name" . "}", "", $resourcePath);
        }
        if ($language != null) {
            $resourcePath = str_replace("{" . "language" . "}", $this->apiClient->toQueryValue($language), $resourcePath);
        } else {
            $resourcePath = str_replace("&language={" . "language" . "}", "", $resourcePath);
        }
        if ($rectX != null) {
            $resourcePath = str_replace("{" . "rectX" . "}", $this->apiClient->toQueryValue($rectX), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectX={" . "rectX" . "}", "", $resourcePath);
        }
        if ($rectY != null) {
            $resourcePath = str_replace("{" . "rectY" . "}", $this->apiClient->toQueryValue($rectY), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectY={" . "rectY" . "}", "", $resourcePath);
        }
        if ($rectWidth != null) {
            $resourcePath = str_replace("{" . "rectWidth" . "}", $this->apiClient->toQueryValue($rectWidth), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectWidth={" . "rectWidth" . "}", "", $resourcePath);
        }
        if ($rectHeight != null) {
            $resourcePath = str_replace("{" . "rectHeight" . "}", $this->apiClient->toQueryValue($rectHeight), $resourcePath);
        } else {
            $resourcePath = str_replace("&rectHeight={" . "rectHeight" . "}", "", $resourcePath);
        }
        if ($useDefaultDictionaries != null) {
            $resourcePath = str_replace("{" . "useDefaultDictionaries" . "}", $this->apiClient->toQueryValue($useDefaultDictionaries), $resourcePath);
        } else {
            $resourcePath = str_replace("&useDefaultDictionaries={" . "useDefaultDictionaries" . "}", "", $resourcePath);
        }
        if ($storage != null) {
            $resourcePath = str_replace("{" . "storage" . "}", $this->apiClient->toQueryValue($storage), $resourcePath);
        } else {
            $resourcePath = str_replace("&storage={" . "storage" . "}", "", $resourcePath);
        }
        if ($folder != null) {
            $resourcePath = str_replace("{" . "folder" . "}", $this->apiClient->toQueryValue($folder), $resourcePath);
        } else {
            $resourcePath = str_replace("&folder={" . "folder" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OCRResponse');
        return $responseObject;
    }

    /**
     * PostOcrFromUrlOrContent
     * Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction.
     * url, string: The image file url. (optional)

     * language, string: Language of the document. (optional)

     * useDefaultDictionaries, bool: Use default dictionaries for result correction. (optional)

     * file, File:  (required)

     * @return OCRResponse
     */
    public function PostOcrFromUrlOrContent($url = null, $language = null, $useDefaultDictionaries = null, $file) {
        // verify required params are set
        if ($file == '') {
            throw new Exception("missing required params");
        }
        //parse inputs
        $resourcePath = "/ocr/recognize/?appSid={appSid}&amp;url={url}&amp;language={language}&amp;useDefaultDictionaries={useDefaultDictionaries}";
        //$resourcePath = str_replace("{format}", "json", $resourcePath);
        $resourcePath = str_replace("toFormat={toFormat}", "format={format}", str_replace("/?", "?", str_replace("&amp;", "&", str_replace("\\*", "", $resourcePath))));
        $method = "POST";
        $queryParams = array();
        $headerParams = array();
        $headerParams['Accept'] = 'application/xml,application/json';
        $headerParams['Content-Type'] = 'multipart/form-data';

        if ($url != null) {
            $resourcePath = str_replace("{" . "url" . "}", $this->apiClient->toQueryValue($url), $resourcePath);
        } else {
            $resourcePath = str_replace("&url={" . "url" . "}", "", $resourcePath);
        }
        if ($language != null) {
            $resourcePath = str_replace("{" . "language" . "}", $this->apiClient->toQueryValue($language), $resourcePath);
        } else {
            $resourcePath = str_replace("&language={" . "language" . "}", "", $resourcePath);
        }
        if ($useDefaultDictionaries != null) {
            $resourcePath = str_replace("{" . "useDefaultDictionaries" . "}", $this->apiClient->toQueryValue($useDefaultDictionaries), $resourcePath);
        } else {
            $resourcePath = str_replace("&useDefaultDictionaries={" . "useDefaultDictionaries" . "}", "", $resourcePath);
        }
        //make the API Call
        if (!isset($body)) {
            $body = null;
        }
        if (isset($file)) {
            $body = $file;
        }
        $response = $this->apiClient->callAPI($resourcePath, $method, $queryParams, $body, $headerParams);

        if (!$response) {
            return null;
        }

        $responseObject = $this->apiClient->deserialize($response, 'OCRResponse');
        return $responseObject;
    }

}
