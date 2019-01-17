


docker cp [containID]:/etc/pki/tls/certs/logstash-*.crt .

docker cp [containID]:/etc/pki/tls/private/logstash-*.key .

scp xxx.crt user@client_server_private_address:/tmp

#现在，在您的客户端服务器上，将ELK服务器的SSL证书复制到适当的位置（/etc/pki/tls/certs）：
#
#client$ sudo mkdir -p /etc/pki/tls/certs
#client$ sudo cp /tmp/logstash-forwarder.crt /etc/pki/tls/certs/