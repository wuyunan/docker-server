#!/bin/bash
docker run redis \
--name myredis \
-p 6379:6379 \
-d redis-server