module AsposeOCRCloud
  # 
  class PartInfo < BaseObject
    attr_accessor :text
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'text' => :'Text'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'text' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Text']
        self.text = attributes[:'Text']
      end
      
    end

  end
end
