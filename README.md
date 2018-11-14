# nodeos

## tested env

+ ubuntu 16.04 x64

## compile and install eos

```bash
mkdir /home/eos-sources
cd /home/eos-sources

git clone https://github.com/EOS-Mainnet/eos.git --recursive
cd eos

git checkout mainnet-1.4.2
git submodule update --init --recursive

./eosio_build.sh -s "EOS"
./eosio_install.sh
```

## install nodeos and wallet

```bash
./install.sh
```

## configure

+ set alias `alias cleos='cleos -u http://127.0.0.1:8888 --wallet-url http://127.0.0.1:3000'`
+ enable them `systemctl enable nodeos-wallet; systemctl enable nodeos`
+ start wallet `systemctl start nodeos-wallet`
+ import private key by `cleos wallet import <YOUR_PRIVKEY>`
+ your producer name: producer-name = YOUR_BP_NAME
+ created producer keypair: private-key = YOUR_BLOCK_SIGN_PUB_KEY=KEY:YOUR_BLOCK_SIGN_PRIV_KEY
+ server address: p2p-server-address = YOUR_ENDPOINT_IP_ADDRESS:9876
+ replace p2p-peer-address list with fresh generated on monitor site: [eosnodes.privex.io](https://eosnodes.privex.io/?config=1)
+ open firewall for all ports []

## init and start

+ start wallet by `systemctl start nodeos-wallet`
+ start nodeos by `systemctl start nodeos`

## enable auto start

+ `systemctl enable nodeos-wallet`
+ `systemctl enable nodeos`

## ref

+ [EOS-MainNet](https://github.com/CryptoLions/EOS-MainNet)