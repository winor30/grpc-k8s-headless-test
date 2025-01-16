
build-client:
	@echo "Building client..."
	go build -o bin/client client/client.go

build-server:
	@echo "Building server..."
	go build -o bin/server server/server.go

build: build-client build-server

run-server:
	@echo "Starting server..."
	go run server/server.go &

run-client:
	@echo "Starting client..."
	go run client/client.go

run: run-server run-client
