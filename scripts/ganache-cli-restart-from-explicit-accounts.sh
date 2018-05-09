#!/bin/bash
set -x
ganache-cli \
    --account="0xb7710c30d244ae266c870df61da808e73eeb7ddc1fb876a46970578aea1213ae,200" \
    --account="0xe6e1dcc6ac2d7031801b7ab6ecd5a728e3d299bf36a10355aa5e4ad4d91c0e93,200" \
    --account="0x31c30ab4eb11e1c2cc11efc21968c09adb7a48e195373b13888a83e47989d8b5,200" \
    --account="0xda383b821f2f782ef796564125ee034707a1a31e86e6a5b1e6f85373aabf2dc9,200" \
    --account="0x2645109b811a4d3b6a44af603401ab52f51bb9d33ba1a21ce1d748be0b84ffe1,200" \
    --account="0x1c531e3c1d12d81bcca38c5e929dcdb127cb5fe133c8dc4a472e3776653749be,200" \
    --account="0xc97ffdb76c97ac9dc1922f388f8f6c50961e1594f0d6ce16aaa91d0351a4f27b,200" \
    --account="0x3f987fad68af00f0c45288f3dbe50e8e7fb6f541191b54c617ad46acc4964c92,200" \
    --account="0x5f8f265645d54160fd8bc06db8f80f26a24d9e1256fe73e08405b1bc7e035adf,200" \
    --account="0xfeccbcceec04c903e9fd93390219425b61daf6dbe4bf24fdb5677c37f462f96c,200" \
    --secure -u 0 -u 1 -u 2 -u 3 -u 4 -u 5 -u 6 -u 7 -u 8 -u 9 \
    --port 8545 \
    --hostname localhost \
    --gasPrice 20000000000 \
    --gasLimit 90000
set +x




