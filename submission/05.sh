# How many satoshis did this transaction pay for fee?: b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb
bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getrawtransaction b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb 2 | jq -r '(([.vin[].prevout.value] | add) - ([.vout[].value] | add)) * 100000000 | floor'
