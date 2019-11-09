apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install -y docker-ce

#sudo groupadd docker     #添加docker用户组
#sudo gpasswd -a jenkins docker     #将登陆用户加入到docker用户组中
newgrp docker     #更新用户组
docker ps  


echo 'DOCKER_OPTS="--registry-mirror=https://docker.mirrors.ustc.edu.cn"' >> /etc/default/docker

# curl -sSL https://get.daocloud.io/docker | sh