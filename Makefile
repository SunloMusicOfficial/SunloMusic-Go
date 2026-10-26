.PHONY: run build clean

run:
	go run ./cmd/sunlo

build:
	CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o sunlo ./cmd/sunlo

clean:
	rm -f sunlo
