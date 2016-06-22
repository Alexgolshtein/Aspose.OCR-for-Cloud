# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_ocr_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_ocr_cloud"
  s.version     = AsposeOCRCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/ocr-api.aspx"
  s.summary     = %q{Aspose.OCR for Cloud}
  s.description = %q{Aspose.OCR for Cloud is a cloud-based REST API for optical character recognition and document scanning. It allows you to scan documents and recognize characters. Recognize text in English and other languages, and recognize text in only part of an image. Aspose.OCR for Cloud supports a variety of fonts in different styles, like regular, bold, and italic, and different image formats. You can use Aspose.OCR for Cloud in many scenarios, for example, extracting text and saving to a database.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'
  s.add_runtime_dependency 'aspose_storage_cloud', '~> 1.0', '>= 1.0.0'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
