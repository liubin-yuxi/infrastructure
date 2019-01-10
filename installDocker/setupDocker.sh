mkdir -p /etc/systemd/system/docker.service.d

path=/etc/systemd/system/docker.service.d/http-proxy.conf

echo ' [Service] ' >> $path
echo ' ExecStart=' >> $path
echo ' ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:14567 -H unix:///var/run/docker.sock ' >> $path

systemctl daemon-reload
systemctl restart docker
ps -ef | grep docker
