# frozen_string_literal: true

class SchemaService
  SCHEMA = {
    'type' => 'object',
    'required' => %w[url headers configs],
    'properties' => {
      'url' => {
        'type' => 'string'
      },
      'headers' => {
        'type' => 'object'
      },
      'configs' => {
        'type' => 'array'
      }
    }
  }.freeze

  def self.schema_valid?(value)
    return false if value.nil? || value.empty?

    begin
      JSON::Validator.validate!(SCHEMA, value)
    rescue JSON::Schema::ValidationError
      false
    end
  end
end
