GO_CC=go
BUILD_DIR=./bin

all:
	rm -f ${BUILD_DIR}/nmpro ${BUILD_DIR}/hello
	GO111MODULE=on ${GO_CC} build -ldflags "-s -w" -o ${BUILD_DIR}/nmpro cmd/nmpro/*.go
	GO111MODULE=on ${GO_CC} build -ldflags "-s -w" -o ${BUILD_DIR}/hello cmd/hello/*.go

clean:
	rm -rf ${BUILD_DIR}/nmpro ${BUILD_DIR}/hello

.PHONY: all clean
