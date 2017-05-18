#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="DBMQnDlPwOPrVSXcE5Rn32l9vjrxJVCKm6GG+U2/Obs=--EPq524lCe2brHiKlyJ8ScpXz6+XOrgBp5Z8q2IJ2IfA="
OWNERID="591a1170519ff5b86f9182a7"

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
