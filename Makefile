NAME=metwork-buildimage
DOCKER_USERNAME=hawker65

build:
	docker build -t ${DOCKER_USERNAME}/$(NAME):latest -f ./metwork_dependencies/Dockerfile ./

release:
	if test "${DOCKER_PASSWORD}" != ""; then docker login -e="${DOCKER_EMAIL}" -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"; docker push ${DOCKER_USERNAME}/$(NAME):latest; fi
