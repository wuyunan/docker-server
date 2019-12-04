yum install docker git

systemctl restart docker

git clone https://github.com/wuyunan/docker-server.git

cd docker-server/kcptun
  
chmod +x kcptun-docker.sh && ./kcptun-docker.sh 