#!/bin/bash

# Signer Address
if [[ -z "${SIGNER_ADDRESS}" ]]; then
  echo "ENV=SIGNER_ADDRESS MUST be set. i.e, SIGNER_ADDRESS=0x...."
  exit 1
fi
echo SIGNER: $SIGNER_ADDRESS

# Chain Provider
if [[ -z "${CHAIN_PROVIDER}" ]]; then
  echo "ENV=CHAIN_PROVIDER must be set.i,e,  CHAIN_PROVIDER=https://mainnet.infura.io/v3/<your_api_key>"
  exit 1
fi
echo CHAIN PROVIDER: $CHAIN_PROVIDER

# Faux. Chain
npx ganache-cli \
--fork $CHAIN_PROVIDER \
--unlock $SIGNER_ADDRESS \
--keepAliveTimeout 3600000 \
--networkId 3001 \
--gasLimit 10000000
