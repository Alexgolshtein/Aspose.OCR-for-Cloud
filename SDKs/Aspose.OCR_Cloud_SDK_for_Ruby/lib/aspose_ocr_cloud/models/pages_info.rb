module AsposeOCRCloud
  # 
  class PagesInfo < BaseObject
    attr_accessor :pages
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'pages' => :'Pages'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'pages' => :'Array<Page>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'Pages']
        if (value = attributes[:'Pages']).is_a?(Array)
          self.pages = value
        end
      end
      
    end

  end
end
