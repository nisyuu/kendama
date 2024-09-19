=begin
#国税庁API

#国税庁が提供するインボイス制度適格請求書発行事業者公表システムWeb-APIを使用するためのクライアントAPI(https://www.invoice-kohyo.nta.go.jp/web-api/index.html)

The version of the OpenAPI document: 1.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0

=end

require 'date'
require 'time'

module Kendama
  class ResponseBody
    # 最終更新年月日
    attr_accessor :last_update_date

    # 総件数
    attr_accessor :count

    # 分割番号
    attr_accessor :divide_number

    # 分割数
    attr_accessor :divide_size

    attr_accessor :announcement

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'last_update_date' => :'lastUpdateDate',
        :'count' => :'count',
        :'divide_number' => :'divideNumber',
        :'divide_size' => :'divideSize',
        :'announcement' => :'announcement'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'last_update_date' => :'Date',
        :'count' => :'String',
        :'divide_number' => :'String',
        :'divide_size' => :'String',
        :'announcement' => :'Array<Announcement>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Kendama::ResponseBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Kendama::ResponseBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'last_update_date')
        self.last_update_date = attributes[:'last_update_date']
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'divide_number')
        self.divide_number = attributes[:'divide_number']
      end

      if attributes.key?(:'divide_size')
        self.divide_size = attributes[:'divide_size']
      end

      if attributes.key?(:'announcement')
        if (value = attributes[:'announcement']).is_a?(Array)
          self.announcement = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@count.nil? && @count.to_s.length > 8
        invalid_properties.push('invalid value for "count", the character length must be smaller than or equal to 8.')
      end

      if !@count.nil? && @count.to_s.length < 1
        invalid_properties.push('invalid value for "count", the character length must be great than or equal to 1.')
      end

      if !@divide_number.nil? && @divide_number.to_s.length > 6
        invalid_properties.push('invalid value for "divide_number", the character length must be smaller than or equal to 6.')
      end

      if !@divide_number.nil? && @divide_number.to_s.length < 1
        invalid_properties.push('invalid value for "divide_number", the character length must be great than or equal to 1.')
      end

      if !@divide_size.nil? && @divide_size.to_s.length > 6
        invalid_properties.push('invalid value for "divide_size", the character length must be smaller than or equal to 6.')
      end

      if !@divide_size.nil? && @divide_size.to_s.length < 1
        invalid_properties.push('invalid value for "divide_size", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@count.nil? && @count.to_s.length > 8
      return false if !@count.nil? && @count.to_s.length < 1
      return false if !@divide_number.nil? && @divide_number.to_s.length > 6
      return false if !@divide_number.nil? && @divide_number.to_s.length < 1
      return false if !@divide_size.nil? && @divide_size.to_s.length > 6
      return false if !@divide_size.nil? && @divide_size.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if count.nil?
        fail ArgumentError, 'count cannot be nil'
      end

      if count.to_s.length > 8
        fail ArgumentError, 'invalid value for "count", the character length must be smaller than or equal to 8.'
      end

      if count.to_s.length < 1
        fail ArgumentError, 'invalid value for "count", the character length must be great than or equal to 1.'
      end

      @count = count
    end

    # Custom attribute writer method with validation
    # @param [Object] divide_number Value to be assigned
    def divide_number=(divide_number)
      if divide_number.nil?
        fail ArgumentError, 'divide_number cannot be nil'
      end

      if divide_number.to_s.length > 6
        fail ArgumentError, 'invalid value for "divide_number", the character length must be smaller than or equal to 6.'
      end

      if divide_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "divide_number", the character length must be great than or equal to 1.'
      end

      @divide_number = divide_number
    end

    # Custom attribute writer method with validation
    # @param [Object] divide_size Value to be assigned
    def divide_size=(divide_size)
      if divide_size.nil?
        fail ArgumentError, 'divide_size cannot be nil'
      end

      if divide_size.to_s.length > 6
        fail ArgumentError, 'invalid value for "divide_size", the character length must be smaller than or equal to 6.'
      end

      if divide_size.to_s.length < 1
        fail ArgumentError, 'invalid value for "divide_size", the character length must be great than or equal to 1.'
      end

      @divide_size = divide_size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          last_update_date == o.last_update_date &&
          count == o.count &&
          divide_number == o.divide_number &&
          divide_size == o.divide_size &&
          announcement == o.announcement
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [last_update_date, count, divide_number, divide_size, announcement].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Kendama.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
