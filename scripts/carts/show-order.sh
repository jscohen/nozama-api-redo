#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="cVaoegSor0TBfPn8cxpt6rfYjpNmKu4/kw5UdAFA3is=--Qw/gzyRHXYCMpt5wrcvcxcudTFLtnOKoDY4a10rxuIg="
ID="591aff95e30c01180fd5e62e"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
