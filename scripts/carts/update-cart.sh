#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="JRTlRdXvpbQUr0P3FgO/gEkYSggYe58kFborRScJP94=--1txx5/m7oJ6lRWpeKMxVGDaNQPdxrm6pcDR2ttvcafg="
ID="591db0f881e8605dce5f85ed"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Action: updatePrice" \
  --data '{
    "cart": {
      "totalPrice": "50",
      "products": [{
        "sku": "5",
        "quantity": "3",
        "name": "Book",
        "price": "5"
      }]
    }
  }'

echo
