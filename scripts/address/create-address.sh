#!/bin/bash

API="http://localhost:4741"
URL_PATH="/addresses"
TOKEN="9zs4WUxy90VElCN2m2ynb00Z81NBZwbieYDouKH4REA=--7Voi2hC/cbuYxllRgh3pPVmRkQIfQu7cSTp8rC38U/0="

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "address": {
      "street": "5 Main Street",
      "city": "New York",
      "zip": "02135",
      "state": "NY",
      "country": "USA"
    }
  }'

echo
