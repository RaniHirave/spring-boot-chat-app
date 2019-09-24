IMAGE_TAG=spring-boot-websocket-chat-demo
sh "${WORKSPACE}"/spring-boot-websocket-chat-demo/generateDockerFile.sh $IMAGE_TAG > DockerFile
docker build -t $IMAGE_TAG -f DockerFile .
sh "${WORKSPACE}"/spring-boot-websocket-chat-demo/run-Container.sh $IMAGE_TAG

