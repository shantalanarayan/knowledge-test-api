# Ex: TOKEN=tokengoeshere ID=idgoeshere sh curl-scripts/topics/show.sh

curl "http://localhost:4741/topics/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
