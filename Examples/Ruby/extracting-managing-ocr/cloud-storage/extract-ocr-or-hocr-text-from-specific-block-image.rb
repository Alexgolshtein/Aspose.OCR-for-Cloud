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

#Set X and Y coordinate to recognize text inside
rect_x = 150;
rect_y = 100;

#Set Width and Height to recognize text inside
rect_width = 1000;
rect_height = 300;

#Set the spelling correction is used
use_default_dictionaries = 'true';


opts = {language: language, rect_x: rect_x, rect_y: rect_y, rect_width: rect_width, rect_height: rect_height, use_default_dictionaries: use_default_dictionaries}

#Upload file to aspose cloud storage 
response = @storageApi.put_create(name, File.open(data_path + "/" << name,"rb"){ |io| io.read } )

#invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
response = @ocrApi.get_recognize_document(name, opts)

if response.status == "OK"
  print "Text :: " + response.text
  print "\n\nExtract OCR or HOCR Text from a specific Block, Done!"
end
#ExEnd:1
