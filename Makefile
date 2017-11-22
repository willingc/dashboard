all: build test

deps:
	godep save github.com/willingc/dashboard/...

build: deps
	godep go install github.com/willingc/dashboard/...

test: deps
	godep go test . ./cmd/... ./triage/...
