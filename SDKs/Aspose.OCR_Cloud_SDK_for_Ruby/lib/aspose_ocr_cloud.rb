require 'aspose_storage_cloud'

# Common files
require_relative 'aspose_ocr_cloud/api_client'
require_relative 'aspose_ocr_cloud/api_error'
require_relative 'aspose_ocr_cloud/version'
require_relative 'aspose_ocr_cloud/configuration'

# Models
require_relative 'aspose_ocr_cloud/models/base_object'
require_relative 'aspose_ocr_cloud/models/ocr_response'
require_relative 'aspose_ocr_cloud/models/parts_info'
require_relative 'aspose_ocr_cloud/models/pages_info'
require_relative 'aspose_ocr_cloud/models/part_info'
require_relative 'aspose_ocr_cloud/models/page'

# APIs
require_relative 'aspose_ocr_cloud/api/ocr_api'

module AsposeOCRCloud
  class << self
    # Configure sdk using block.
    # AsposeOCRCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
