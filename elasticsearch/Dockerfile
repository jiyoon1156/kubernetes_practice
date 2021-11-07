FROM docker.elastic.co/elasticsearch/elasticsearch:7.15.1

ENV ES_JAVA_OPTS "-Xms512m -Xmx512m"

COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/

EXPOSE 9200
