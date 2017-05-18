#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="+8cPPtBogqsKnrAonjNTXx+7YR71xRr5BioTMEYTtpg=--cbDbL32ZpSeeqqMaqjoWxbyLWR5qYcbrYkrXN2NV2ZY="
ID="591da77973e4f0585e59fbe6"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Action: changeQuantity" \
  --data '{
    "cart": {
      "totalPrice": "5",
      "products": [{
        "sku": "5",
        "quantity": "3",
        "name": "Book",
        "price": "5"
      }]
    }
  }'

echo
