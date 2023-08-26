BIN_DIR := $(CURDIR)/bin

all: build test

build: build-helloworld

build-%:
	@ go build -o $(BIN_DIR)/$* $(CURDIR)/cmd/$*

test:
	@ go test -coverpkg=./... ./...

cover:
	@ go test -coverpkg=./... -coverprofile=./coverage.out ./...
	@ go tool cover -o coverage.html -html=./coverage.out

run: run-helloworld

run-%: build-%
	@ $(BIN_DIR)/$*

clean:
	@ rm -f $(BIN_DIR)/*

clean-%:
	@ rm -f $(BIN_DIR)/$*
