#!/bin/bash
set -x
curl --verbose -X POST \
    -H"Content-Type: application/json" \
    -H"Connection: keep-alive" \
    -H"Accept: application/json" \
    --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' \
    http://localhost:8545
set +x