docker   rm `docker ps -a | grep Exited | awk '{print $1}'`  
docker   rmi -f  `docker images | grep '<none>' | awk '{print $3}'`  