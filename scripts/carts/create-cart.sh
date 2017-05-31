#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="bALpM5A3mDmL3DHmz+b7nlEm7wtL2o5/1iS/peqp6E8=--orN1D2tmcu29isZ4/IcvNjeE2Ec+WWofCxdjryskLbU="
OWNERID="591de455d9e65d72ad095f38"

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
