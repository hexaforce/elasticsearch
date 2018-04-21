# elasticsearch

## Docker Hub 
[hexaforce/elasticsearch](https://hub.docker.com/r/hexaforce/elasticsearch/)

## ES_TMPDIR 
/var/tmp/elasticsearch  

## Build 
docker build -t hexaforce/elasticsearch .  

## Push
docker push hexaforce/elasticsearch  

## Run
docker run -it -d -p 9200:9200 -p 9300:9300 hexaforce/elasticsearch  
