## Development docker image for buildkite-agent
FROM golang:1.11
ENV GO111MODULE=on
WORKDIR /go/src/github.com/buildkite/agent
COPY . .
RUN go build -i -o /go/bin/buildkite-agent github.com/buildkite/agent
CMD ["buildkite-agent", "start"]
