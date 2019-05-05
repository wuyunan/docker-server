#!/bin/bash
mkdir -p ~/rabbitmq/data
docker stack deploy -c ./stack.yml rabbitmq
