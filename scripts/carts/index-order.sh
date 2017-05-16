#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="cVaoegSor0TBfPn8cxpt6rfYjpNmKu4/kw5UdAFA3is=--Qw/gzyRHXYCMpt5wrcvcxcudTFLtnOKoDY4a10rxuIg="

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
