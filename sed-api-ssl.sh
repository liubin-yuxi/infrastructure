domain=
crt=
key=
app=
port=

fname=/etc/nginx/sites-enabled/api-ssl.conf

sed -i "s/#domain/$domain/g" $fname
sed -i "s/#crt/$crt/g" $fname
sed -i "s/#key/$key/g" $fname
sed -i "s/#app/$app/g" $fname
sed -i "s/#port/$port/g" $fname


# test for unix 
#sed -i '' "s/#crt/$crt/g" ./nginx.conf/api-ssl.conf1