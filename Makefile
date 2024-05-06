APP := $(shell basename $(shell git remote get-url origin))
REGISTRY := ghcr.io/mykhailo-maidan
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux #linux darwin windows
TARGETARCH=amd64 #amd64 arm64

fmt: 
	gofmt -w .

get:
	go get
build: fmt get 
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o mbot -ldflags "-X 'mbot/cmd.Version=${VERSION}'"

## Build for the linux target 
linux: TARGETARCH = amd64
linux: TARGETOS = linux

linux: build 

## Build for the macos target
macos: TARGETARCH=arm64
macos: TARGETOS=darwin

macos: build 


##Build for the windows target
windows: TARGETARCH=amd64
windows: TARGETOS=windows

windows: build 

arm: TARGETARCH=arm64
arm: TARGETOS=linux
arm: build

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-amd64  --build-arg TARGETARCH=amd64

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-amd64


clean:
	rm mbot
	docker rmi ${REGISTRY}/${APP}:${VERSION}-amd64
