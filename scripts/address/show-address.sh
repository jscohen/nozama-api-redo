#!/bin/bash

API="http://localhost:4741"
URL_PATH="/addresses"
TOKEN="EQaq6rRtXxs80C3llrrltviJtAnX2s/uOU46C3YRH6M=--+rSdC+aku4wmmPVfMP2xnr8I/TFAB2L5NPXT0rHzlIc="

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
