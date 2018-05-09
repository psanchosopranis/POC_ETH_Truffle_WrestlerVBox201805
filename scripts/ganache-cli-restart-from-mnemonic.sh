#!/bin/bash
set -x
ganache-cli \
    --deterministic \
    --mnemonic "grunt turn amount mule siren favorite tenant bronze parent fit grit conduct" \
    --port 8545 \
    --hostname localhost \
    --gasPrice 20000000000 \
    --gasLimit 90000 \
    --defaultBalanceEther 200
set +x