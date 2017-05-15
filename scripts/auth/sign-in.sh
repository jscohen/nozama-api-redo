#!/bin/bash
API="http://localhost:4741"
URL_PATH="/sign-in"
EMAIL="deedee.forte@yahoo.com"
PASSWORD="gosox"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
echo
