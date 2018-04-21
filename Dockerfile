FROM java:alpine
MAINTAINER Tomokazu Tantaka <relics9@gmail.com>

ENV VERSION 6.2.4

EXPOSE 9200 9300

RUN apk --no-cache add bash

COPY elasticsearch-6.2.4 /elasticsearch
RUN adduser -D -u 1000 elasticsearch
RUN chown elasticsearch -R elasticsearch/

RUN mkdir /var/tmp/elasticsearch
RUN chmod 777 /var/tmp/elasticsearch
ENV ES_TMPDIR /var/tmp/elasticsearch

CMD ["su", "elasticsearch", "/elasticsearch/bin/elasticsearch"]
