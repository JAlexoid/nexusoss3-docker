#!/bin/sh

docker build -t jalexoid/ubuntu-java8:16.04-8u101 ./ubuntu-trusty-java8 
docker build -t jalexoid/sonatype-nexus:3.0.1-01 ./sonatype-nexus3
