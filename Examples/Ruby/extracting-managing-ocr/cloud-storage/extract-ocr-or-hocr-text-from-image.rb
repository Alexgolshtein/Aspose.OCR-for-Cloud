require 'aspose_ocr_cloud'

include AsposeStorageCloud
include AsposeOCRCloud
 
configFile = File.expand_path("../../../data/config.json", __FILE__);
configProps = JSON.parse( IO.read(configFile, encoding: 'utf-8') )
data_path = File.expand_path("../../../data/", __FILE__);
out_path = configProps['out_folder'];
  
#ExStart:1
AsposeApp.app_key_and_sid(configProps['api_key'], configProps['app_sid'])
AsposeOCRCloud::Configuration.debugging = false
AsposeOCRCloud::Configuration.temp_folder_path = out_path
AsposeStorageCloud::Configuration.temp_folder_path = out_path

#Instantiate Aspose.Storage API SDK 
@storageApi = StorageApi.new

#Instantiate Aspose.OCR API SDK
@ocrApi = OcrApi.new

#Set the image file name
name = 'Sampleocr.bmp';

#Set the language of the document
language = 'English';

#Set the spelling correction is used
use_default_dictionaries = 'true';

opts = {language: language, use_default_dictionaries: use_default_dictionaries}

#Upload file to aspose cloud storage 
response = @storageApi.put_create(name, File.open(data_path + "/" << name,"rb"){ |io| io.read } )

#invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
response = @ocrApi.get_recognize_document(name, opts)

if response.status == "OK"
  print "Text :: " + response.text
  print "\n\nExtract OCR or HOCR Text from Images, Done!"
end
#ExEnd:1
