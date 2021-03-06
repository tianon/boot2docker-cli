# Dockerfile to cross compile boot2docker-cli

FROM golang:1.3-cross

WORKDIR /go/src/github.com/boot2docker/boot2docker-cli

# Download (but not install) dependencies
RUN go get github.com/BurntSushi/toml
RUN go get github.com/ogier/pflag 

ADD . /go/src/github.com/boot2docker/boot2docker-cli

CMD ["make", "all"]
