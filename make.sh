#!/usr/bin/env bash

if [[ -z $1 ]]
then
	echo "Usage: $(basename $0) <build|tool|lint|clean>"
	exit 1
fi

if [[ $1 == "build" ]]
then
	go build -v .
elif [[ $1 == "tool" ]]
then
	go vet ./...
	[[ $? -eq 0 ]]  && gofmt -w .
elif [[ $1 == "lint" ]]
then
	golint ./...
elif [[ $1 == "clean" ]]
then
	rm -rf golang-gin-app
	go clean -i .
fi