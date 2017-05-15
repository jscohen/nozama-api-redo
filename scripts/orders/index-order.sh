#!/bin/bash

API="http://localhost:4741"
URL_PATH="/users"
TOKEN="FlygpBt4cco38QLeNZ3CkshhdK3zadzAWeC562Il3Ns=--fewt3OgLgjeEad1STRfBba+Zy3A3bKKixfQ+vmGmJXY="

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
