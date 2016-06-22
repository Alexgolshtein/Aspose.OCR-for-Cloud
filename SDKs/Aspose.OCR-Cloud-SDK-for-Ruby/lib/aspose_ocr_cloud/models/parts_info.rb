module AsposeOCRCloud
  # 
  class PartsInfo < BaseObject
    attr_accessor :parts
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'parts' => :'Parts'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'parts' => :'Array<PartInfo>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Parts']
        if (value = attributes[:'Parts']).is_a?(Array)
          self.parts = value
        end
      end
      
    end

  end
end
