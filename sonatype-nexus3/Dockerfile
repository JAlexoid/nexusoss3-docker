FROM       jalexoid/ubuntu-java8:16.04-8u111
MAINTAINER Aleksandr Panzin <alex@panz.in>


ENV NEXUS_VERSION 3.1.0-04

RUN mkdir -p /opt/sonatype/
RUN wget -v -O nexus-3-unix.tar.gz  http://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz
RUN tar xvzf nexus-3-unix.tar.gz -C /tmp
RUN mv /tmp/nexus-${NEXUS_VERSION} /opt/sonatype/nexus && rm -rf /tmp/nexus-${NEXUS_VERSION}

RUN sed -ibak -e 's#=data#=/data#g' /opt/sonatype/nexus/bin/nexus.vmoptions


RUN useradd -r -u 200 -m -c "nexus role account" -d /data -s /bin/false nexus

VOLUME /data
RUN chown -R nexus:nexus /opt/sonatype/
RUN chown -R nexus:nexus /data

EXPOSE 8081
WORKDIR /opt/sonatype/nexus
USER nexus
ENV CONTEXT_PATH /
ENV MAX_HEAP 1024m
ENV MIN_HEAP 512m
ENV JAVA_OPTS -server -Djava.net.preferIPv4Stack=true

CMD ./bin/nexus run
