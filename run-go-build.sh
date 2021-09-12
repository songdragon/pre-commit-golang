#!/usr/bin/env bash
FILES=$(go list ./...  | grep -v /vendor/)
exec go -tags dynamic build $FILES
