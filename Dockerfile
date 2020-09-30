FROM golang

WORKDIR /go/src/github.com/justincormack/multiarch-actions
COPY . .
RUN go build
RUN mv multiarch-actions /usr/local/bin/
WORKDIR /

CMD /usr/local/bin/multiarch-actions
