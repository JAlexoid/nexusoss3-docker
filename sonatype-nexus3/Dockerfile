FROM       jalexoid/ubuntu-java8:14.04-8u72
MAINTAINER Aleksandr Panzin <alex@panz.in>

ENV SONATYPE_WORK /data
ENV NEXUS_VERSION 3.0.0-b2016011501

RUN mkdir -p /opt/sonatype/
RUN wget -v -O nexus-3.0.0-m7-unix.tar.gz  http://download.sonatype.com/nexus/3/nexus-3.0.0-m7-unix.tar.gz
RUN tar xvzf nexus-3.0.0-m7-unix.tar.gz -C /tmp
RUN mv /tmp/nexus-${NEXUS_VERSION} /opt/sonatype/nexus && rm -rf /tmp/nexus-${NEXUS_VERSION}

RUN sed -ibak -e 's#=data#=${SONATYPE_WORK}#g' /opt/sonatype/nexus/bin/nexus.vmoptions


RUN useradd -r -u 200 -m -c "nexus role account" -d ${SONATYPE_WORK} -s /bin/false nexus

VOLUME ${SONATYPE_WORK}

RUN chown -R nexus:nexus /opt/sonatype/

EXPOSE 8081
WORKDIR /opt/sonatype/nexus
USER nexus
ENV CONTEXT_PATH /
ENV MAX_HEAP 1024m
ENV MIN_HEAP 512m
ENV JAVA_OPTS -server -Djava.net.preferIPv4Stack=true

CMD ./bin/nexus run
