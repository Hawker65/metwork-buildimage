NAME=metwork-buildimage
DOCKER_USERNAME=hawker65

build:
	docker build -t ${DOCKER_USERNAME}/$(NAME):latest -f ./centos7/Dockerfile ./
	docker build -t ${DOCKER_USERNAME}/$(NAME):centos7 -f ./centos7/Dockerfile ./
	docker build -t ${DOCKER_USERNAME}/$(NAME):centos6 -f ./centos6/Dockerfile ./

release:
	if test "${DOCKER_PASSWORD}" != ""; then docker login -e="${DOCKER_EMAIL}" -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"; docker push ${DOCKER_USERNAME}/$(NAME); fi
