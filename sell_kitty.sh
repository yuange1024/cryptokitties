#!/bin/bash

# gas Price,单位 GWEI
GAS_PRICE_GWEI=2


# 替换为你的钱包地址
MY_WALLET_ADDR='0xccae423d668f848866427089e8527474abcd1234'

# 替换为你的钱包私钥
MY_WALLET_PRIVATE_KEY=''

# nonce 值,可以从etherscan.io 查看,查看最近一条自己发起的交易,取该交易的nonce值 + 1 作为初始值
nonce=1345

# 替换下面代码中的kitty_id、starting_price_eth、ending_price_eth、duration_days 等参数值
kitty_id=60000
starting_price_eth=0.009
ending_price_eth=0.002
duration_days=7
curl "http://127.0.0.1:18080/create_sale_auction/?kitty_id=${kitty_id}&starting_price_eth=${starting_price_eth}&ending_price_eth=${ending_price_eth}&duration_days=${duration_days}&gas_price_gwei=${GAS_PRICE_GWEI}&my_wallet_addr=${MY_WALLET_ADDR}&my_wallet_private_key=${MY_WALLET_PRIVATE_KEY}&nonce=${nonce}"
echo ""
echo ""


kitty_id=60001
starting_price_eth=0.009
ending_price_eth=0.002
duration_days=7
nonce=$(( $nonce + 1 ))

curl "http://127.0.0.1:18080/create_sale_auction/?kitty_id=${kitty_id}&starting_price_eth=${starting_price_eth}&ending_price_eth=${ending_price_eth}&duration_days=${duration_days}&gas_price_gwei=${GAS_PRICE_GWEI}&my_wallet_addr=${MY_WALLET_ADDR}&my_wallet_private_key=${MY_WALLET_PRIVATE_KEY}&nonce=${nonce}"
echo ""
echo ""


kitty_id=60002
starting_price_eth=0.009
ending_price_eth=0.002
duration_days=7
nonce=$(( $nonce + 1 ))
curl "http://127.0.0.1:18080/create_sale_auction/?kitty_id=${kitty_id}&starting_price_eth=${starting_price_eth}&ending_price_eth=${ending_price_eth}&duration_days=${duration_days}&gas_price_gwei=${GAS_PRICE_GWEI}&my_wallet_addr=${MY_WALLET_ADDR}&my_wallet_private_key=${MY_WALLET_PRIVATE_KEY}&nonce=${nonce}"
echo ""
echo ""

