#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="7PjtlC2jNTwe5pxlV9o/RzSgGfF79qKLC4mk/DteBPg=--kmWkO75Qvk+62OPSY4EnHM7eDidvvzGGsZnkpPkqWcQ="
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
