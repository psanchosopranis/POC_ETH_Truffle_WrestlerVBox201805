#!/bin/bash
set -x
curl --verbose -X POST \
    -H"Content-Type: application/json" \
    -H"Connection: keep-alive" \
    -H"Accept: application/json" \
    --data '{"jsonrpc":"2.0","id":1,"method":"net_version","params":[]}' \
    http://localhost:8545
set +x