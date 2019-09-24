#!/bin/sh

cd "${WORKSPACE}"/spring-boot-websocket-chat-demo
mvn clean install -DskipTests
cp "${WORKSPACE}"/spring-boot-websocket-chat-demo/target/*.jar "${WORKSPACE}"/websocket-demo-0.0.1-SNAPSHOT.jar
cp "${WORKSPACE}"/spring-boot-websocket-chat-demo/setenv.sh "${WORKSPACE}"/setenv.sh
