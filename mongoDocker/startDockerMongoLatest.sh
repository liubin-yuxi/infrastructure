#docker run -d  -p 27017:27017 -v $PWD/mongo/db:/data/db -v $PWD/mongo/logs/mongo.log:/data/logs/mongo.log -v /var/run/docker.sock:/var/run/docker.sock mongo:latest


docker run -d  -p 27017:27017 -v $PWD/mongo:/data -v /var/run/docker.sock:/var/run/docker.sock mongo:latest