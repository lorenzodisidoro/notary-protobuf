#!/bin/sh

go get -u github.com/lorenzodisidoro/notary-protobuf

cd $GOPATH/src/github.com/lorenzodisidoro/notary-protobuf
protoc -I . ./service.proto --go_out=plugins=grpc:.
