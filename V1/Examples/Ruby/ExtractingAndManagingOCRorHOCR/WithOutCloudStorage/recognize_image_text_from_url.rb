#ExStart:
require 'aspose_ocr_cloud'

class RecognizeText

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

  # Recognize image text from some url, language can be selected, default dictionaries can be used for correction.
  def recognize_image_text_from_url
    opts = {url: "http://s017.radikal.ru/i406/1202/7b/70183bef7a09.jpg", use_default_dictionaries: true}
    
    response = @ocr_api.post_ocr_from_url_or_content(opts)
  end

end

recognizeText = RecognizeText.new()
puts recognizeText.recognize_image_text_from_url
#ExEnd: