
DOCKER_IMAGE_NAME="my-nginx-with-lua"
DOCKER_IMAGE_TAG="latest"
DOCKER_CONTAINER_NAME="${DOCKER_IMAGE_NAME}-c"
DOCKER_CONTAINER_EXTERNAL_PORT=8080
NGINX_PORT=80

docker-build:
	@echo "Project docker build"
	docker build --build-arg ENABLED_MODULES="ndk lua njs" -t ${DOCKER_IMAGE_NAME} ./modules

docker-run:
	@echo "Project docker run"
	docker run --name ${DOCKER_CONTAINER_NAME} -d -p ${DOCKER_CONTAINER_EXTERNAL_PORT}:${NGINX_PORT} ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
	docker ps

docker-kill:
	docker stop ${DOCKER_CONTAINER_NAME}
	docker rm ${DOCKER_CONTAINER_NAME}

docker-shell:
	@echo "Project docker start shell to running container"
	docker exec -i -t ${DOCKER_CONTAINER_NAME} /bin/sh

clean:
