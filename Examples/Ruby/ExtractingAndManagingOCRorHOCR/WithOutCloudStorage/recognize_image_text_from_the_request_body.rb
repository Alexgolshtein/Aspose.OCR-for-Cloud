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
    response = @storage_api.put_create(file_name, File.open("../../data/" << file_name,"r") { |io| io.read } )
  end

  # Recognize image text from the request body content, language can be selected, default dictionaries can be used for correction.
  def recognize_image_text_from_the_request_body
    file_name = "Sampleocr.bmp"
    language = "english"
    use_default_dictionaries = true

    opts = {use_default_dictionaries: use_default_dictionaries, language: language, file: File.open("../../data/" << file_name,"r") { |io| io.read }}
    
    response = @ocr_api.post_ocr_from_url_or_content(opts)
  end

end

recognizeText = RecognizeText.new()
puts recognizeText.recognize_image_text_from_the_request_body