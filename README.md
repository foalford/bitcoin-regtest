# bitcoin-regtest
A regtest private net

## Build
docker build -t foalford/bitcoin-regtest:1.2 .
docker push foalford/bitcoin-regtest:1.2 

## Run
docker run -d -p 18444:18444 -p 18332:18332 -p 22:2200 foalford/bitcoin-regtest /sbin/my_init  --enable-insecure-key


   `ssh -i insecure_key root@<IP>`
