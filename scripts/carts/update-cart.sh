#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="bALpM5A3mDmL3DHmz+b7nlEm7wtL2o5/1iS/peqp6E8=--orN1D2tmcu29isZ4/IcvNjeE2Ec+WWofCxdjryskLbU="
ID="592ef22a54bd0424b1d8efce"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Action: changeQuantity" \
  --data '{
    "cart": {
      "totalPrice": "15",
      "products": [{
        "sku": "5",
        "quantity": "3000",
        "name": "Book",
        "price": "5"
      }]
    }
  }'

echo
