#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
ID="591a0ce7ce684c4828f03d24"
TOKEN="diYu/nG2zxckLY4CIs4Rm4r0gJ4uMg2X3+UrvMZodqM=--mPqfY/yFXDvzOuCJ9IYG2WX6NbBl/cSic4daWM5xz2E="
OLDPW="gosox"
NEWPW="gosox"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
