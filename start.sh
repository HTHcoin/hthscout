#!/bin/bash
export PATH="$PATH:/opt/elixir/bin"
export SECRET_KEY_BASE="U8DeCvTG1LLHKA61v6ECzLsQuJ9URedTrjnWhjyjbnNBAZOpyVSd0DAquiBCriUh"
export DATABASE_URL="postgresql://postgres:Cale7112@localhost:5432/blockscout"
export STATS__FORCE_UPDATE_ON_START="true"
export ETHEREUM_JSONRPC_VARIANT="geth"
export ETHEREUM_JSONRPC_HTTP_URL="http://127.0.0.1:7118"
export ETHEREUM_JSONRPC_TRACE_URL="http://localhost:7118"
export ETHEREUM_JSONRPC_TRANSPORT="http"
export NETWORK="HelpTheHomeless"
export SUBNETWORK="HTH"
export BLOCKSCOUT_HOST="http://206.189.231.104:4100"
export BLOCKSCOUT_PROTOCOL="http"
export PORT=4000
export COIN="HTH"
export COIN_NAME="HTH"
export CHAIN_SPEC_PATH="/root/market/go-chain/genesis.json"
export API_URL="http://127.0.0.1:4100/api/stats"
export CHAIN_TYPE="ethereum"
export CHAIN_ID="7118"
export JSON_RPC="http://127.0.0.1:7118"
export FIRST_BLOCK="0"
export TRACE_FIRST_BLOCK="0"
export GAS_PRICE="true"
export TXS_STATS_ENABLED="true"
export SHOW_PRICE_CHART="true"
export SHOW_PRICE_CHART_LEGEND="true"
export SHOW_TX_CHART="true"

mix phx.server


