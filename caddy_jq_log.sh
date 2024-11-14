docker inspect --format='{{.LogPath}}' Caddy | sudo xargs tail -f | jq -C -r 'select(.log | fromjson | .msg != "aborting with incomplete response") | .log | fromjson | .'
