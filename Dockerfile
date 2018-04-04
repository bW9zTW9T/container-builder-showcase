FROM gcr.io/cloud-builders/go
ENV GOPATH=/go
COPY . /go/src/webserver
RUN go get webserver
ENTRYPOINT [ "./bin/webserver" ]
EXPOSE 8080