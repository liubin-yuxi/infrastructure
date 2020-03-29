apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y update
apt-get -y install docker-ce

newgrp docker     #更新用户组
docker ps  


echo 'DOCKER_OPTS="--registry-mirror=https://docker.mirrors.ustc.edu.cn"' >> /etc/default/docker
