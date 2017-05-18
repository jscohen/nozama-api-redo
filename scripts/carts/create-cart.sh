#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="uGjI/+w/DM0HQlIGE3HziAXjRt5eyKMJqH0/tsW4bX4=--3fKA+WKL60aA7g0yAXG7ota8O0+wVKHiBIDD5sx1960="
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
