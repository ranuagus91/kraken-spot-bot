BINARY := krakenspot
VERSION := 0.1.0

.PHONY: build test clean

build:
	go build -ldflags "-X main.version=$(VERSION)" -o bin/$(BINARY) ./cmd/krakenspot

test:
	go test ./...

clean:
	rm -rf bin/
