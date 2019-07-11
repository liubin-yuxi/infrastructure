apt-get install -yqq nginx

sh ./installDocker/installDocker.sh
sh ./installDocker/setupDocker.sh

sh ./ELK/filebeat6.5/installFileBeat.sh

copy ./ELK/filebeat6.5/filebeat.yml /etc/filebeat/

copy ./nginx.conf/nginx.conf /etc/nginx/
copy ./nginx.conf/app-ssl.conf /etc/nginx/sites-enabled/


echo "***********"
echo "then edit ./sed-api-ssl.sh and run ./sed-api-ssl.sh"
echo "then edit ./sed-filebeat.sh and run ./sed-filebeat.sh"
echo "***********"