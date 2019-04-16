FROM        ubuntu
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY node_exporter /bin/node_exporter

EXPOSE      9110

RUN apt update && apt install dmidecode
#USER        nobody
ENTRYPOINT  [ "/bin/node_exporter" ]
