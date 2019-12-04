#!/bin/bash

IP=`vultr-cli server list|awk '{if($1!="ID"){print $2}}'`
echo $IP
user_host=root@${IP}
#ssh-keyscan -H ${host}

ssh-keyscan -t rsa -H $IP >> ~/.ssh/known_hosts
scp init.sh ${user_host}:.
ssh ${user_host} ./init.sh