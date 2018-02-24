curl --data-binary '{"jsonrpc":"1.0","id":"curltext","method":"getpeerinfo","params":[]}' -H 'content-type:text/plain;' http://someuser:somepassword@127.0.0.1:55003/ > peers.txt
# alternative call:
# curl --user someuser:somepassword --data-binary '{"jsonrpc":"1.0","id":"curltext","method":"getinfo","params":[]}' -H 'content-type:text/plain;' http://127.0.0.1:55003

# alternative 2: use wagerr-cli
