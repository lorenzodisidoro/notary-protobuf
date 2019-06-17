#!/bin/sh

go get -u github.com/vulpemventures/notary-protobuf

cd $GOPATH/src/github.com/vulpemventures/notary-protobuf
protoc -I . ./service.proto --go_out=plugins=grpc:.
