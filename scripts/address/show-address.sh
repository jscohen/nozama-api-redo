#!/bin/bash

API="http://localhost:4741"
URL_PATH="/addresses"
TOKEN="9z2Y4gak8wl5AmRuSG7mx5jwAewQYuGZrwLTkM27phs=--MZ/cvtlLoQ4GfYieqc/kiqhCzVyeSZadLeu4QepknOg="
ID="592f1ed871aa12119f7a7250"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
