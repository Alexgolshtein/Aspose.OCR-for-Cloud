import asposeocrcloud
from asposeocrcloud.OcrApi import OcrApi
from asposeocrcloud.OcrApi import ApiException

import asposestoragecloud 
from asposestoragecloud.StorageApi import StorageApi
from asposestoragecloud.StorageApi import ResponseMessage

import ConfigParser

config = ConfigParser.ConfigParser()
config.readfp(open(r'../../data/config.properties'))
apiKey = config.get('AppConfig', 'api_key')
appSid = config.get('AppConfig', 'app_sid')
out_folder = config.get('AppConfig', 'out_folder')
data_folder = "../../data/" #resouece data folder

#ExStart:1
#Instantiate Aspose.Storage API SDK
storage_apiClient = asposestoragecloud.ApiClient.ApiClient(apiKey, appSid, False)
storageApi = StorageApi(storage_apiClient)

#Instantiate Aspose.OCR API SDK
api_client = asposeocrcloud.ApiClient.ApiClient(apiKey, appSid, False)
ocrApi = OcrApi(api_client);

#Set the image file name
name = 'Sampleocr.bmp';

#Set the language of the document
language = 'English';

#Set the spelling correction is used
useDefaultDictionaries = 'true';

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)
    
    #invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
    response = ocrApi.GetRecognizeDocument(name, language=language,useDefaultDictionaries=useDefaultDictionaries )
    
    if response.Status == 'OK':
        print "Text :: " + response.Text     
        
        print "\n\nExtract OCR or HOCR Text from Images, Done!"
                        
except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message    
#ExEnd:1    