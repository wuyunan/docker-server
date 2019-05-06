#!/bin/bash
docker run -d -p 443:8989 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 8989 -k wuyunan+ -m aes-256-cfb