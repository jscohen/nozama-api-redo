#!/bin/bash

API="http://localhost:4741"
URL_PATH="/addresses"
TOKEN="B40GTMYQIh+Yxa9RkHBCX/LjrhgCiWO0ljO2PF1QyGI=--MMwrGD4h0w4SsjkwskfiCnmmZyAGwcozj0ZAs1E4FpQ="
ID="592f143dedfec5303d785c90"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
