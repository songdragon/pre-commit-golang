#!/usr/bin/env bash
FILES=$(go list ./...  | grep -v /vendor/)
# exec go build -tags dynamic $FILES 会失败不知道为啥。。
exec GOARCH=arm64 go build -tags=dynamic $FILES
