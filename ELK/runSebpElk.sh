docker run --name elk  -p 5601:5601 -p 9200:9200  -p 5044:5044 \
-v elk-data:/var/lib/elasticsearch \
-v /etc/logstash:/etc/logstash \
-v /etc/elasticsearch:/etc/elasticsearch \
 sebp/elk