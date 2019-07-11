domain=
crt=
key=
app=
port=

sed -i "s/#domain/$domain/g" /etc/nginx/api-ssl.conf
sed -i "s/#crt/$crt/g" /etc/nginx/api-ssl.conf
sed -i "s/#key/$key/g" /etc/nginx/api-ssl.conf
sed -i "s/#app/$app/g" /etc/nginx/api-ssl.conf
sed -i "s/#port/$port/g" /etc/nginx/api-ssl.conf


# test for unix 
#sed -i '' "s/#crt/$crt/g" ./nginx.conf/api-ssl.conf1