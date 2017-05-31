#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="myOXL/sdjWPredlPbwIru0T+Fd2w0NGxwyD0eW4Kml0=--4zgQmB/V2EuS6kKOyRezABXvx43G/MMCp/VyT2gIuJ0="
OWNERID="5925e58a99415624cddde3c0"

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
