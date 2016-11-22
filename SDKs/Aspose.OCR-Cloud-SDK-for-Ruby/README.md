# Aspose.OCR Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud OCR APIs](http://www.aspose.com/cloud/ocr-api.aspx) in your Ruby web apps.

## How to use the SDK?

The complete source code is available in this repository folder, you can either directly use it in your project or use [Maven](http://maven.apache.org/). For more details, please visit our [documentation](http://www.aspose.com/docs/display/ocrcloud/Available+SDKs).


## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_ocr_cloud'

class OCRUsage
  
  include AsposeOCRCloud
  include AsposeStorageCloud
	
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @ocr_api = OcrApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new
    response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
  end
  
  def get_recognize_document
    #Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
    file_name = "Sampleocr.bmp"
    upload_file(file_name)
    
    response = @ocr_api.get_recognize_document(file_name)
  end
  
end
```
## Unit Tests
Aspose OCR SDK includes a suite of unit tests within the [test](https://github.com/asposeocr/Aspose_OCR_Cloud/blob/master/SDKs/Aspose.OCR_Cloud_SDK_for_Ruby/test/ocr_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose OCR SDK.

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).

