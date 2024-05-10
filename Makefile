
.PHONY: build
build:
	@go build -o bin/zeonbank

.PHONY: run
run: build
	@JWT_SECRET=hunter9999 ./bin/zeonbank

.PHONY: test
test:
	@go test -v ./...

.PHONY: database-up
database-up:
	@docker run --name some-postgres -e POSTGRES_PASSWORD=zeonbank -p 5432:5432 -d postgres
