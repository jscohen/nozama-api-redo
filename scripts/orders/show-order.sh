#!/bin/bash

API="http://localhost:4741"
URL_PATH="/users"
TOKEN="FlygpBt4cco38QLeNZ3CkshhdK3zadzAWeC562Il3Ns=--fewt3OgLgjeEad1STRfBba+Zy3A3bKKixfQ+vmGmJXY="
ID="591a2f2ac8e06f0d4a1a0c11"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
