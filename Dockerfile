FROM golang:alpine AS build

WORKDIR /go/src/github.com/justincormack/multiarch-actions
COPY . .
RUN go build
RUN mv multiarch-actions /usr/local/bin/

FROM scratch
COPY --from=build /usr/local/bin /usr/local/bin/

CMD ["/usr/local/bin/multiarch-actions"]
