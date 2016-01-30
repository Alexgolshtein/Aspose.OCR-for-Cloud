require "uri"

module AsposeOCRCloud
  class OcrApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url The image file url.
    # @option opts [String] :language Language of the document.
    # @option opts [BOOLEAN] :use_default_dictionaries Use default dictionaries for result correction.
    # @option opts [File] :file 
    # @return [OCRResponse]
    def post_ocr_from_url_or_content(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: OcrApi#post_ocr_from_url_or_content ..."
      end
      
      # resource path
      path = "/ocr/recognize".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'url'] = opts[:'url'] if opts[:'url']
      query_params[:'language'] = opts[:'language'] if opts[:'language']
      query_params[:'useDefaultDictionaries'] = opts[:'use_default_dictionaries'] if opts[:'use_default_dictionaries']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = opts[:'file'] if opts[:'file']

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OCRResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: OcrApi#post_ocr_from_url_or_content. Result: #{result.inspect}"
      end
      return result
    end

    # Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
    # 
    # @param name Name of the file to recognize.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language Language of the document.
    # @option opts [Integer] :rect_x Top left point X coordinate of Rectangle to recognize text inside.
    # @option opts [Integer] :rect_y Top left point Y coordinate of Rectangle to recognize text inside.
    # @option opts [Integer] :rect_width Width of Rectangle to recognize text inside.
    # @option opts [Integer] :rect_height Height of Rectangle to recognize text inside.
    # @option opts [BOOLEAN] :use_default_dictionaries Use default dictionaries for result correction.
    # @option opts [String] :storage Image&#39;s storage.
    # @option opts [String] :folder Image&#39;s folder.
    # @return [OCRResponse]
    def get_recognize_document(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: OcrApi#get_recognize_document ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling get_recognize_document" if name.nil?
      
      # resource path
      path = "/ocr/{name}/recognize".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'language'] = opts[:'language'] if opts[:'language']
      query_params[:'rectX'] = opts[:'rect_x'] if opts[:'rect_x']
      query_params[:'rectY'] = opts[:'rect_y'] if opts[:'rect_y']
      query_params[:'rectWidth'] = opts[:'rect_width'] if opts[:'rect_width']
      query_params[:'rectHeight'] = opts[:'rect_height'] if opts[:'rect_height']
      query_params[:'useDefaultDictionaries'] = opts[:'use_default_dictionaries'] if opts[:'use_default_dictionaries']
      query_params[:'storage'] = opts[:'storage'] if opts[:'storage']
      query_params[:'folder'] = opts[:'folder'] if opts[:'folder']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml', 'text/javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OCRResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: OcrApi#get_recognize_document. Result: #{result.inspect}"
      end
      return result
    end
  end
end




