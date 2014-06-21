#!/bin/bash
sudo docker run -p 9200:9200 -p 9300:9300 -p 24224:24224 -p 80:80 -v /data:/data  -name monitoring_instance6 -i -t monitoring

