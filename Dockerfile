FROM golang:1.11.0 as dev_env

# goa
RUN go get -u goa.design/goa/...
# dep 依存関係管理
RUN go get -u github.com/golang/dep/cmd/dep
# migrationツール
RUN go get -u -d github.com/golang-migrate/migrate/cli
WORKDIR $GOPATH/src/github.com/golang-migrate/migrate/cli
RUN dep ensure
RUN go build -tags 'mysql' -o /usr/local/bin/migrate github.com/golang-migrate/migrate/cli
# DBスキーマからGO構造体を作るツール
RUN go get github.com/smallnest/gen

WORKDIR /go/src/goa_api
ADD go/src/goa_api/. .
