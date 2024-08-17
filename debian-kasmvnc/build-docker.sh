# docker login <registry-url>

# DOCKER_REGISTRY=<registry-url>
DOCKER_FROM_TAG=debian-kasm-vnc:latest
DOCKER_TO_TAG=debian-kasm-vnc:latest

docker build -t $DOCKER_FROM_TAG .
# docker image tag $DOCKER_FROM_TAG $DOCKER_REGISTRY/$DOCKER_TO_TAG
# docker image push $DOCKER_REGISTRY/$DOCKER_TO_TAG
