# what is the coinbase tx in this block 243,834
bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblock $(bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblockhash 243834) 2 | jq -r '.tx[0].txid'
