BIN_DIR := $(CURDIR)/bin

all: build test

build: build-helloworld

build-%:
	@ go build -o $(BIN_DIR)/$* $(CURDIR)/cmd/$*

test:
	@ go test -coverpkg=./... ./...

run: run-helloworld

run-%: build-%
	@ $(BIN_DIR)/$*

clean:
	@ rm -f $(BIN_DIR)/*

clean-%:
	@ rm -f $(BIN_DIR)/$*
