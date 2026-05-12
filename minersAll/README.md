# BTCC GPU Miner Quick Start

This folder contains a minimal Windows solo-mining bundle for BTCC.

## Files

- `bitcoin.conf`: node RPC and peer config
- `BTCC.bat`: starts `ccminer.exe` against the local BTCC node
- `ccminer.exe`: SHA256d miner
- `vcruntime140.dll`: runtime dependency for `ccminer.exe`
- `bbb5277d-0369-4acd-a665-bd3f52d6c965.png`: address creation reference screenshot

## How To Use

1. Put `bitcoin.conf` in the BTCC data directory used by your node.
2. Start the BTCC node and wait until it is fully synced.
3. Check that the RPC values in `bitcoin.conf` match the values in `BTCC.bat`.
4. If you need help creating a wallet address, refer to `bbb5277d-0369-4acd-a665-bd3f52d6c965.png` in this folder.
5. Double-click `BTCC.bat` to start mining.

## Current RPC Settings

`bitcoin.conf` in this folder uses:

```ini
rpcuser=user
rpcpassword=pass
rpcport=28476
port=18465
chain=main
```

`BTCC.bat` connects with:

```bat
ccminer.exe -a sha256d -o http://127.0.0.1:28476 -O user:pass --coinbase-addr=CQAircEejHZYzjRCt4kvEeBqkYXSVKQPjm --no-getwork --no-longpoll --segwit
```

These values must stay aligned:

- `rpcuser`
- `rpcpassword`
- `rpcport`

## Reward Address

The mining reward address is currently hardcoded in `BTCC.bat`:

```text
CQAircEejHZYzjRCt4kvEeBqkYXSVKQPjm
```

This address is a BTCC mainnet legacy `P2PKH` address (Base58 format, starts with `C`).

If you want rewards sent to another wallet, edit the `--coinbase-addr=` value in `BTCC.bat`.

Recommended:

- Use your own BTCC mainnet wallet address.
- A legacy `P2PKH` address is the safest choice for compatibility with this batch setup.
- Do not use a Ledger address unless Ledger explicitly supports the BTCC chain and address format you are using.

## Notes

- This bundle is for local solo mining through `getblocktemplate`.
- The node must have RPC enabled.
- `--segwit` is required for this chain.
- If Windows Defender or another antivirus flags `ccminer.exe`, add an allow rule first.

## Chinese Notes

- 把这个目录里的 `bitcoin.conf` 放到 BTCC 节点的数据目录。
- 先启动节点并同步完成，再双击 `BTCC.bat`。
- 创建地址时可以参考本目录里的 `![alt text](image.png).png` 图片。
- `bitcoin.conf` 里的 `rpcuser`、`rpcpassword`、`rpcport` 必须和 `BTCC.bat` 保持一致。
- 挖矿奖励地址写死在 `BTCC.bat` 的 `--coinbase-addr` 参数里，这个地址替换成自己的。
- 当前这个 `CLbAC...` 地址是 BTCC 主网 `P2PKH` 旧地址，不是 Ledger 专用地址。
- 建议填自己的 BTCC 主网钱包地址。除非 Ledger 明确支持 BTCC，否则不要直接填 Ledger 地址。

打赏地址：CQAircEejHZYzjRCt4kvEeBqkYXSVKQPjm
