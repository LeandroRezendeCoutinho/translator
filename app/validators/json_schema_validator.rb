# frozen_string_literal: true

class JsonSchemaValidator < ActiveModel::Validator
  SCHEMA = {
    'type' => 'object',
    'required' => %w[url header config],
    'properties' => {
      'url' => { 'type' => 'string' },
      'header' => { 'type' => 'object' },
      'config' => {
        'type' => 'array',
        'minItems' => 1,
        'items' => {
          'type' => 'object',
          'required' => %w[from to],
          'properties' => {
            'from' => { 'type' => 'string' },
            'to' => { 'type' => 'string' },
            'function' => { 'type' => 'string' }
          }
        }
      }
    }
  }.freeze

  def validate(record)
    errors = JSON::Validator.fully_validate(SCHEMA, record.schema.to_json, errors_as_objects: true)
    return if errors.empty?

    record.errors.add(:schema, message: errors)
  end
end
