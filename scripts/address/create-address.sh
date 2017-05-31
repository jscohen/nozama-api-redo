#!/bin/bash

API="http://localhost:4741"
URL_PATH="/addresses"
TOKEN="CjECYQOM9sab//PdlCUmxIGw7VP0FHiUGNKlGssdNiw=--h1E5DrKTwj8RVnlCiD4sW8/TwGTcrBXO8m4rnCXrADQ="

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
