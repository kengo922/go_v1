FROM golang:1.9.2

ENV SRC_DIR=/go/src/github.com/mohohewo/

ENV GOBIN=/go/bin

WORKDIR $GOBIN

ADD . $SRC_DIR

RUN cd /go/src/;

# mysql のドライバ
RUN go get github.com/go-sql-driver/mysql;

RUN go get github.com/gorilla/mux;

RUN go install github.com/mohohewo/;

ENTRYPOINT ["./mohohewo"]

EXPOSE 8080
