#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="JRTlRdXvpbQUr0P3FgO/gEkYSggYe58kFborRScJP94=--1txx5/m7oJ6lRWpeKMxVGDaNQPdxrm6pcDR2ttvcafg="
OWNERID="591c546ede82881d5aee02af"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "cart": {
      "totalPrice": "5",
      "products": [{
        "sku": "5",
        "quantity": "1",
        "name": "Book",
        "price": "5"
      }],
      "_owner": "'"${OWNERID}"'"
    }
  }'

echo
