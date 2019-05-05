#!/bin/bash

docker run -d -p 8388:8388 -p 29900:29900/udp zetaplusae/shadowsocks-kcptun \
    -m 'aes-256-cfb' \
    -p 'wuyunan+' \
    -s "wuyunan" \
    -c 'aes'