docker run -d --name elk  -p 5601:5601 -p 9200:9200  -p 5044:5044 \
-v elk-data:/var/lib/elasticsearch \
-v /etc/logstash:/etc/logstash \
-v /etc/elasticsearch/elasticsearch.yml:/etc/elasticsearch/elasticsearch.yml \
-v /var/log/elasticsearch:/var/log/elasticsearch \
-v /var/log/logstash:/var/log/logstash \
  sebp/elk