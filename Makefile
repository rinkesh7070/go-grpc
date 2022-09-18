all: protoc client server

protoc:
	@echo "Generating Go files"
	cd src/proto && protoc --go_out=. --go-grpc_out=. ./data.proto

server: protoc
	@echo "Building server"
	go build -o server \
		github.com/rinkesh7070/go-grpc/src/server

client: protoc
	@echo "Building client"
	go build -o client \
		github.com/rinkesh7070/go-grpc/src/client

.PHONY: client server protoc