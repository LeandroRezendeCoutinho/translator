# frozen_string_literal: true

class Config < ApplicationRecord
  validates_with JsonSchemaValidator, on: :create
end
