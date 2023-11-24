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