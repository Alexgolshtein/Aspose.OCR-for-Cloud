module AsposeOCRCloud
  # 
  class Page < BaseObject
    attr_accessor :page_text, :parts
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'page_text' => :'PageText',
        
        # 
        :'parts' => :'Parts'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'page_text' => :'String',
        :'parts' => :'Array<PartInfo>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'PageText']
        self.page_text = attributes[:'PageText']
      end
      
      if attributes[:'Parts']
        if (value = attributes[:'Parts']).is_a?(Array)
          self.parts = value
        end
      end
      
    end

  end
end
