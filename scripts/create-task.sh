#!/bin/bash

STRING="NAME" TEXT="DESCRIPTION" TOKEN="BAhJIiU2OWQ5ZGFhNmFiYWM3Y2FhYmIwM2I4MTFkNmQzZjIxYgY6BkVG--f924bbbb10d09574acb39c58783daab835a37243"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/tasks"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "task": {
      "name": "'"${STRING}"'",
      "description": "'"${TEXT}"'"
    }
  }'

echo
