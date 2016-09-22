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

#Set X and Y coordinate to recognize text inside
rectX = 150;
rectY = 100;

#Set Width and Height to recognize text inside
rectWidth = 1000;
rectHeight = 300;

#Set the spelling correction is used
useDefaultDictionaries = 'true';

try:
    #upload file to aspose cloud storage
    response = storageApi.PutCreate(name, data_folder + name)
    
    #invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
    response = ocrApi.GetRecognizeDocument(name,language=language,rectX=rectX,rectY=rectY,rectWidth=rectWidth,rectHeight=rectHeight,useDefaultDictionaries=useDefaultDictionaries )
    
    if response.Status == 'OK':
        print "Text :: " + response.Text     
        
        print "\n\nExtract OCR or HOCR Text from a specific Block, Done!"
                        
except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message    
#ExEnd:1    