.DEFAULT_GOAL := build

fmt: prerequisites
	go fmt ./...
.PHONY:fmt

lint: fmt
	golangci-lint run
.PHONY:lint

vet: lint
	go vet ./...
.PHONY:vet

build: vet
	go build hello.go
.PHONY:build

requirements:
	./requirements.sh
.PHONY: requirements

prerequisites: requirements

target: build

clean:
	rm hello


