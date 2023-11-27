# frozen_string_literal: true

class FakeController < ApplicationController
  # rubocop:disable Metrics/MethodLength
  def index
    render json: {
      "id": 123_456_789,
      "productId": 1,
      "quantity": 10,
      "price": 100.00,
      "totalPrice": 1000.00,
      "customerId": 1000,
      "createdAt": '2023-11-21T16:53:00Z',
      "updatedAt": '2023-11-21T16:53:00Z',
      "shippingAddress": {
        "name": 'Fulano de Tal',
        "address": 'Rua das Flores, 100',
        "city": 'São Paulo',
        "state": 'SP',
        "country": 'Brasil',
        "zipCode": '01234-567'
      },
      "billingAddress": {
        "name": 'Fulano de Tal',
        "address": 'Rua das Flores, 100',
        "city": 'São Paulo',
        "state": 'SP',
        "country": 'Brasil',
        "zipCode": '01234-567'
      },
      "paymentMethod": 'cartão de crédito',
      "paymentDetails": {
        "cardNumber": '1234-5678-9012-3456',
        "expirationDate": '01/24',
        "cvv": '123'
      }
    }
  end
  # rubocop:enable Metrics/MethodLength
end
