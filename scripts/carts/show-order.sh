#!/bin/bash

API="http://localhost:4741"
URL_PATH="/carts"
TOKEN="uGjI/+w/DM0HQlIGE3HziAXjRt5eyKMJqH0/tsW4bX4=--3fKA+WKL60aA7g0yAXG7ota8O0+wVKHiBIDD5sx1960="
ID="591e005c94ae06814dac59da"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
