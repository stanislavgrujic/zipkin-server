#!/bin/sh

# get normal zipkin server
curl -sSL https://zipkin.io/quickstart.sh | bash -s

# Build eureka module
mvn clean install

# Rename the jar so it is easier
mv target/eureka-1.0-SNAPSHOT-module.jar eureka.jar
