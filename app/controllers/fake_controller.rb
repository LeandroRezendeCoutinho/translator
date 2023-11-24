# frozen_string_literal: true

class FakeController < ApplicationController
  # rubocop:disable Metrics/MethodLength
  def index
    render json: {
      "id": 123_456_789,
      "product_id": 1,
      "quantity": 10,
      "price": 100.00,
      "total_price": 1000.00,
      "customer_id": 1000,
      "created_at": '2023-11-21T16:53:00Z',
      "updated_at": '2023-11-21T16:53:00Z',
      "shipping_address": {
        "name": 'Fulano de Tal',
        "address": 'Rua das Flores, 100',
        "city": 'São Paulo',
        "state": 'SP',
        "country": 'Brasil',
        "zip_code": '01234-567'
      },
      "billing_address": {
        "name": 'Fulano de Tal',
        "address": 'Rua das Flores, 100',
        "city": 'São Paulo',
        "state": 'SP',
        "country": 'Brasil',
        "zip_code": '01234-567'
      },
      "payment_method": 'cartão de crédito',
      "payment_details": {
        "card_number": '1234-5678-9012-3456',
        "expiration_date": '01/24',
        "cvv": '123'
      }
    }
  end
  # rubocop:enable Metrics/MethodLength
end
