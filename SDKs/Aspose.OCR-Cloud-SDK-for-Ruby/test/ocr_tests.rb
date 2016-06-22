require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_ocr_cloud'

class OCRTests < Minitest::Test
	include MiniTest::Assertions
	include AsposeOCRCloud
	include AsposeStorageCloud
	
	def setup
            #Get App key and App SID from https://cloud.aspose.com
            AsposeApp.app_key_and_sid("", "")
	    @ocr_api = OcrApi.new
	end

	def teardown
	end

	def upload_file(file_name)
            @storage_api = StorageApi.new
	    response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
	    assert(response, message="Failed to upload {file_name} file.")
	end

	def test_post_ocr_from_url_or_content
	    opts = {url: "http://s017.radikal.ru/i406/1202/7b/70183bef7a09.jpg", use_default_dictionaries: true}
        
            response = @ocr_api.post_ocr_from_url_or_content(opts)
	    assert(response, message="Failed to recognize image text from some url if provided or from the request body content.")
	end
    
        def test_get_recognize_document
    	    file_name = "Sampleocr.bmp"
    	    upload_file(file_name)

    	    response = @ocr_api.get_recognize_document(file_name)
    	    assert(response, message="Failed to recognize image text.")
        end

end
