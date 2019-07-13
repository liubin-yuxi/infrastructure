apt-get install -yqq nginx
mkdir -p /etc/nginx/cert


sh ./installDocker/installDocker.sh
sh ./installDocker/setupDocker.sh

sh ./ELK/filebeat6.5/installFileBeat.sh

cp ./ELK/filebeat6.5/filebeat.yml /etc/filebeat/

cp ./nginx.conf/nginx.conf /etc/nginx/
cp ./nginx.conf/api-ssl.conf /etc/nginx/sites-enabled/


echo "***********"
echo "then edit ./sed-api-ssl.sh and run ./sed-api-ssl.sh"
echo "then edit ./sed-filebeat.sh and run ./sed-filebeat.sh"
echo "***********"