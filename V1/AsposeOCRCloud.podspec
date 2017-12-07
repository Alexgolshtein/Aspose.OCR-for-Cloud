Pod::Spec.new do |s|
  s.name         = "AsposeOCRCloud"
  s.version      = "1.0.0"
  s.summary      = "Aspose.OCR for Cloud"
  s.description  = <<-DESC
                   Aspose.OCR for Cloud is a cloud-based REST API for optical character recognition and document scanning. It allows you to scan documents and recognize characters. Recognize text in English and other languages, and recognize text in only part of an image. Aspose.OCR for Cloud supports a variety of fonts in different styles, like regular, bold, and italic, and different image formats. You can use Aspose.OCR for Cloud in many scenarios, for example, extracting text and saving to a database. 
                   DESC

  s.homepage     = "http://www.aspose.com/cloud/ocr-api.aspx"
  s.license = { :type => 'MIT', :file => 'LICENSE'}
  s.author = { "M. Sohail Ismail" => "muhammad.sohail@aspose.com" }
  s.social_media_url = "https://www.facebook.com/asposeplugins/"
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/asposeocr/Aspose_OCR_Cloud.git", :tag => "1.0.0" }
  
  s.subspec 'model' do |ss|
      ss.source_files = 'SDKs/Aspose.OCR_Cloud_SDK_for_Objective_C/Aspose.OCR_Cloud_SDK_for_Objective_C/ocr/model/*.{h,m}'
  end
  s.subspec 'api' do |ss|
      ss.dependency 'AsposeOCRCloud/model'
      ss.source_files = 'SDKs/Aspose.OCR_Cloud_SDK_for_Objective_C/Aspose.OCR_Cloud_SDK_for_Objective_C/ocr/api/*.{h,m}'
  end
  
  s.dependency "AFNetworking", "~> 2.0"
  s.dependency "JSONModel", "~> 1.1"
  s.dependency "ISO8601", "~> 0.3"
  s.dependency "AsposeStorageCloud"

  s.requires_arc = true

end