#!/usr/bin/env bash

USERNAME="jagadesh1982"
PASSWORD="jagadesh1982@"
ORGANIZATION="containerasservice"
IMAGE="packer-ansible-example"

login_data() {
cat <<EOF
{
  "username": "$USERNAME",
  "password": "$PASSWORD"
}
EOF
}

TOKEN=`curl -s -H "Content-Type: application/json" -X POST -d "$(login_data)" "https://hub.docker.com/v2/users/login/" | jq -r .token`

curl --silent "https://hub.docker.com/v2/repositories/${ORGANIZATION}/${IMAGE}/tags" \
-X GET \
-H "Authorization: JWT ${TOKEN}" | grep "name"
