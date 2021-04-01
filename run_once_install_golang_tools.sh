#!/usr/bin/env bash
set -euxo pipefail
export PATH=$PATH:$HOME/go/bin

# golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | \
  sh -s -- -b $(go env GOPATH)/bin v1.39.0

# ginkgo
go get -u github.com/onsi/ginkgo/ginkgo

# gomega
go get -u github.com/onsi/gomega

# gopls, the go language server.
GO111MODULE=on go get golang.org/x/tools/gopls@latest

