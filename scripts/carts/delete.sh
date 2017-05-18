#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="DBMQnDlPwOPrVSXcE5Rn32l9vjrxJVCKm6GG+U2/Obs=--EPq524lCe2brHiKlyJ8ScpXz6+XOrgBp5Z8q2IJ2IfA="
ID="591cede7354a5251d9032834"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
