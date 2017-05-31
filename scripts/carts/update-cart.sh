#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="7PjtlC2jNTwe5pxlV9o/RzSgGfF79qKLC4mk/DteBPg=--kmWkO75Qvk+62OPSY4EnHM7eDidvvzGGsZnkpPkqWcQ="
ID="592ed1b68d606f16fba051af"

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
        "quantity": "3",
        "name": "Book",
        "price": "5"
      }]
    }
  }'

echo
