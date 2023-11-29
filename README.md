# README

## Description
This POC is a concept to use json based schema for configuring and consuming data  
from any API and translate data from the configured schema.

### Schema definition

```json
{
    "url":"",
    "headers":{},
    "configs": {
        [
            {
                "from": "amount",
                "to": "value",
                "function": "function to be applied"
            },
            {
                "from": "address.streetAddress",
                "to": "address.street",
                "function": "function to be applied"
            }
        ]
    }
}

```

### How to create a config

```shell
curl --request POST \
  --url http://localhost:3000/configs \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: insomnia/2023.5.8' \
  --data '{
	"name": "Test",
	"schema": {
		"url": "localhost:3000/fake",
		"header": {},
		"config": [
			{
				"from": "id",
				"to": "id"			
			},
			{
				"from": "productId",
				"to": "product_id"			
			},
			{
				"from": "quantity",
				"to": "quantity"			
			},
			{
				"from": "price",
				"to": "amount"			
			},
			{
				"from": "customerId",
				"to": "customer_id"			
			},
			{
				"from": "paymentMethod",
				"to": "payment_method"			
			},
			{
				"from": "paymentDetails.cardNumber",
				"to": "payment_details.card_number"			
			},
			{
				"from": "paymentDetails.expirationDate",
				"to": "payment_details.expiration_date"			
			},
			{
				"from": "paymentDetails.cvv",
				"to": "payment_details.cvv"			
			}		
		]	
	}	
}'
```

### Example of data for the config above
```json
{
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
```