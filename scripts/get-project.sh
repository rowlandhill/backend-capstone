# #!/bin/bash
# ID=16
#
# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/projects"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request GET \
#   --header "Authorization: Token token=$TOKEN"
#   --data '{
#     "project": [
#   {
#   "id": 1,
#   "title": "TEST",
#   "description": "THIS IS WHERE THE DESCRIPTION GOES"
#   }
#   ]
# },
# echo

#!/bin/bash

TOKEN="BAhJIiVkMzE5OGI2MmRhNDQ5OGI0NTlkNTU5MDA2MzgyODNhNwY6BkVG--167403f6f33ee3dee83c39c81bf2f6106eea39c4"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/projects"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
