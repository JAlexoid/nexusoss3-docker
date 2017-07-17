#!/bin/sh

docker build -t jalexoid/ubuntu-java8:16.04-8u131 ./ubuntu-xenial-java8
docker build -t jalexoid/sonatype-nexus:3.4.0-02 ./sonatype-nexus3
docker tag jalexoid/sonatype-nexus:3.4.0-02 jalexoid/sonatype-nexus:latest
