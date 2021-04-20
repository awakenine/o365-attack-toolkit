FROM golang:1.14

RUN apt-get update && apt-get install -y go-dep 

WORKDIR /go/src/o365-attack-toolkit
COPY . .
RUN dep ensure
RUN go build

CMD ["/go/src/o365-attack-toolkit/o365-attack-toolkit"]