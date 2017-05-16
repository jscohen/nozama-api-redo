#!/bin/bash

API="http://localhost:4741"
URL_PATH="/products"
ID="591b05bac1f9414af94757ce"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET
