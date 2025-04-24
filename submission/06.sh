# Only one tx in block 243,821 signals opt-in RBF. What is its txid?
bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblock $(bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblockhash 243821) 2 | jq -r '.tx[] | select(.vin[].sequence < 4294967294) | .txid'
