#!/bin/sh

docker build -t jalexoid/ubuntu-java8:14.04-8u92 ./ubuntu-trusty-java8 
docker build -t jalexoid/sonatype-nexus:3.0.0-03 ./sonatype-nexus3
