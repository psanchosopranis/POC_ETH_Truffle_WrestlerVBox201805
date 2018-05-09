#!/bin/bash
set -x
curl --verbose -X POST \
    -H"Content-Type: application/json" \
    -H"Connection: keep-alive" \
    -H"Accept: application/json" \
    --data '{"jsonrpc":"2.0","id":2,"method":"eth_accounts","params":[]}' \
    http://localhost:8545
set +x