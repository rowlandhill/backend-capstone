#!/bin/bash

STRING="TITLE" TEXT="DESCRIPTION" TOKEN="BAhJIiViZWJkNTRkOWFjYjJiOWYxNTRlZjllMzRiYjViZDNkOAY6BkVG--136f2619669ec71c2d49dd0cdbcf4a63b5339458"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "project": {
      "title": "'"${STRING}"'",
      "description": "'"${TEXT}"'"
    }
  }'

echo
