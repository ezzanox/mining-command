#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
./xmrig -a rx/0 -o qrl.herominers.com:10371 -u Q0105006e5408de94797718d3eaf1fa298bf315c9529dc7052d50a78a02cf2dcb405e3c2aacd217 -k --tls -p bismabataca
while [ 1 ]; do
sleep 3
done
sleep 999
