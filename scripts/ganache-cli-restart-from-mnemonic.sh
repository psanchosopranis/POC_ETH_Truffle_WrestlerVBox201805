#!/bin/bash
set -x
ganache-cli \
    --deterministic \
    --mnemonic "grunt turn amount mule siren favorite tenant bronze parent fit grit conduct" \
    --port 8545 \
    --hostname localhost \
    --networkId 4567890 \
    --gasPrice 100000000000 \
    --gasLimit 6721975 \
    --defaultBalanceEther 200 \
    --debug \
    --verbose
set +x