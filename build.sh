#!/bin/sh

docker build -t jalexoid/ubuntu-java8:16.04-8u111 ./ubuntu-xenial-java8
docker build -t jalexoid/sonatype-nexus:3.1.0-04 ./sonatype-nexus3
docker tag jalexoid/sonatype-nexus:3.1.0-04 jalexoid/sonatype-nexus:latest
