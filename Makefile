build:
	@go build -o bin/zeonbank

run: build
	@./bin/zeonbank

test:
	@go test -v ./...
