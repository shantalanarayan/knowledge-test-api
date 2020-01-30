# Ex: TOKEN=tokengoeshere ID=idgoeshere TITLE=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/topics/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "topic": {
      "title": "'"${TITLE}"'"
    }
  }'

  echo
