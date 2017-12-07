#ExStart:
require 'aspose_ocr_cloud'

class ExtractText

  include AsposeOCRCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @ocr_api = OcrApi.new
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
  def extract_text_from_images
   file_name = "Sampleocr.bmp"
   upload_file(file_name)

   response = @ocr_api.get_recognize_document(file_name)
  end

end

extractText = ExtractText.new()
puts extractText.get_recognize_document
#ExEnd: