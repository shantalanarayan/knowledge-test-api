#!/bin/bash

curl "http://localhost:4741/topics" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "topic": {
      "title": "'"${TITLE}"'",
      "question": "'"${QUESTION}"'",
      "answer": "'"${ANSWER}"'"
    }
  }'

echo
