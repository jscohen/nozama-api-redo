#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="URgRC5JxmaTkU51OfobZpYaecfwfoDFKx1RNkXQex2E=--tgFGFfZk9SnD0JSBNLir/y9YqZs6sWBYl+3tlIrLiIs="
ID="591b58bd7152bd38e18619af"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Action: addQuantity" \
  --data '{
    "cart": {
      "products": [{
        "quantity": "8",
        "sku": "5"
      }]
    }
  }'

echo
