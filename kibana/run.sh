#!/bin/bash

docker pull kibana:5.2.2
docker run -v $PWD/kibana.yml:/usr/share/kibana/config/kibana.yml -p 5601:5601 -d --link es_5:es_5 --name kibana_5 kibana:5.2.2
