VERSION=0.0.1
IMAGE_NAME=airflow-hello-world-go
IMAGE_REPO=ericbutera
IMAGE_TAG=${VERSION}
MAIN=main.go

.PHONY: build
build:
	go build -o bin/app

.PHONY: clean
clean:
	rm bin/*

.PHONY: image-build
image-build:
	docker build -t ${IMAGE_REPO}/${IMAGE_NAME}:${IMAGE_TAG} .

.PHONY: image-push
 image-push:
	docker push ${IMAGE_REPO}/${IMAGE_NAME}:${IMAGE_TAG}

.PHONY: docker-run
docker-run:
	docker run --rm ${IMAGE_NAME}

.PHONY: help
help:
	echo "Usage: make [target]"

.PHONY: tidy
tidy:
	go mod tidy

.PHONY: test
test:
	go test ./...

.PHONY: run
run:
	go run ${MAIN}