# Hello World from Go

Demo app that prints hello world. The objective is to build a golang scratch container that can be ran from within an Airflow DAG.

## Demo

Run `make run` to see output.

## Image Commands

```sh
make image-build
make image-push
```

Notes:

- Image tag uses semvar tags
- Image is stored on [dockerhub](https://hub.docker.com/repository/docker/ericbutera/airflow-hello-world-go)

## TODO

- The [airflow go client](https://github.com/apache/airflow-client-go) has everything necessary to integrate with Airflow via OpenAPI spec.
