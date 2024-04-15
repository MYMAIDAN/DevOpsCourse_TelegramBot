VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)


fmt: 
	gofmt -w .

build:
	go build -ldflags "-X 'mbot/cmd.Version=${VERSION}'"