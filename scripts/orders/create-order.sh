#!/bin/bash

API="http://localhost:4741"
URL_PATH="/orders"
NAME="Ryan"
ADDRESS="8733 55th ST SW"
STATE="MA"
COUNTRY="USA"
ZIP="03222"
TYPE="VISA"
TRANSID=1324343434343
TOTAL=1000
SKU=654554434356788786656786565776756554
QUANTITY=1
PRODUCTNAME="Ant"
PRICE=1000
OWNERID="591a2fb9c8e06f0d4a1a0c12"
TOKEN="FlygpBt4cco38QLeNZ3CkshhdK3zadzAWeC562Il3Ns=--fewt3OgLgjeEad1STRfBba+Zy3A3bKKixfQ+vmGmJXY="

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "order": {
      "shippingAddress": {
        "recipientName": "'"${NAME}"'",
        "address": "'"${ADDRESS}"'",
        "state": "'"${STATE}"'",
        "country": "'"${COUNTRY}"'",
        "zip": "'"${ZIP}"'"
      },
      "paymentDetails": {
        "cardType": "'"${TYPE}"'",
        "transID": "'"${TRANSID}"'",
        "totalPrice": "'"${TOTAL}"'"
      },
      "products": [{
        "sku": "'"${SKU}"'",
        "quantity": "'"${QUANTITY}"'",
        "name": "'"${PRODUCTNAME}"'",
        "price": "'"${PRICE}"'"
      }],
      "_owner": "'"${OWNERID}"'"
    }
  }'

echo
