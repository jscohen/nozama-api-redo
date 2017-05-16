#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="6/tNZj8NdNylH/tcEJH1urA6Fgvakx+q4euruBq2XB8=--AetSPKCy9ZVp1tONuvAyVLbBR6czdYgd9u1eI8/610E="
OWNERID="591a1170519ff5b86f9182a7"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "cart": {
      "products": [{
        "sku": "2",
        "quantity": "2",
        "name": "Book",
        "price": "5"
      },
      {
        "sku": "M0000001"
      }],
      "_owner": "'"${OWNERID}"'"
    }
  }'

echo
