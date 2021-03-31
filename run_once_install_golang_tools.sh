#!/bin/sh
set -euxo pipefail

# golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | \
  sh -s -- -b $(go env GOPATH)/bin v1.39.0

# ginkgo
go get -u github.com/onsi/ginkgo/ginkgo

# gomega
go get -u github.com/onsi/gomega

