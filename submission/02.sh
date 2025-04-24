# How many new outputs were created by block 243,825?
bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblock $(bitcoin-cli -conf=$HOME/.bitcoin/bitcoin.conf getblockhash 243825) 2 | jq '.tx | map(.vout | length) | add'
