#!/bin/sh

docker build -t jalexoid/ubuntu-java8:14.04-8u72 ./ubuntu-trusty-java8 
docker build -t jalexoid/sonatype-nexus:3.0.0-m7 ./sonatype-nexus3
