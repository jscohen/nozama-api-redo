#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="+8cPPtBogqsKnrAonjNTXx+7YR71xRr5BioTMEYTtpg=--cbDbL32ZpSeeqqMaqjoWxbyLWR5qYcbrYkrXN2NV2ZY="
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
