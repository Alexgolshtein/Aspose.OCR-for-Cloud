require 'aspose_ocr_cloud'

class ExtractOCRorHOCR

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

  def get_recognize_document
    file_name = "Sampleocr.bmp"
    upload_file(file_name)

    language = "English"
    rect_x = 150
    rect_y = 100
    rect_width = 1000
    rect_height = 300
    use_default_dictionaries = true

    response = @ocr_api.get_recognize_document(file_name, {language: language, rect_x: rect_x, rect_y: rect_y, rect_width: rect_width, rect_height: rect_height, use_default_dictionaries: use_default_dictionaries})
  end

end

extractOCRorHOCR = ExtractOCRorHOCR.new()
puts extractOCRorHOCR.get_recognize_document