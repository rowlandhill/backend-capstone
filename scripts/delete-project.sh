#!/bin/bash
ID=48
TOKEN="BAhJIiVjYmUzNTY2ODYxNDNlZmI1NzE5MjAxOGM0MTExNTlmYQY6BkVG--4d4def7607fb49277d7064a2b607fdd42ce09ad8"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects/:id"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
