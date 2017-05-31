#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
ID="5925e58a99415624cddde3c0"
TOKEN="Kc9SBWjwn8SIWk4AAdcK+WPgPImdhQXxOq9suecZrq8=--BKobo+9iyH2V5CoqgWOpnqlC111MUd4/fw1cBQs5QOs="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
