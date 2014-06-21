Docker-Fluentd-Kibana
====================

## Log analitycs using Fluentd, Elasticsearch and Kibana

This container comes built with Fluentd for log processing, Elasticsearch for log storeage and Kibana for log analytics.
Nginx is also installed and configured for Kibana.

## Exposed ports

 - 80 Nginx http
 - 443 Nginx https
 - 9200 Elasticsearch http
 - 9300 Elasticsearch transport
 - 24224 Fluentd

Nginx is confirgured to proxy elastic search port 9200 to 80 which avoids some proxies blocking high ports.
Kibana comes shipped with a config to use port 80 for elastic search so its ready to go.

## Volumes

 - /data - Elasticsearch
 - /var/log - Nginx, Fluentd, Elasticsearch

## Running the image

First step is to pull the image:

    docker pull hbussell/docker-fluentd-kibana

Run the image:

Note you may want to change the volume -v parameter to set a different data directory used by Elasticsearch.

    sudo docker run -p 9200:9200 -p 9300:9300 -p 24224:24224 -p 80:80 -p 443 -v /data:/data  -name docker_fluentd_kibana_inst -i -t docker_fluentd_kibana

