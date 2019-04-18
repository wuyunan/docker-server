#!/bin/bash
docker run \
--name zookeeper01 \
--restart always \
-d -v $(pwd)/zoo.cfg:/conf/zoo.cfg \
zookeeper