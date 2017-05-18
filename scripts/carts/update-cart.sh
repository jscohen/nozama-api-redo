#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="DBMQnDlPwOPrVSXcE5Rn32l9vjrxJVCKm6GG+U2/Obs=--EPq524lCe2brHiKlyJ8ScpXz6+XOrgBp5Z8q2IJ2IfA="
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
