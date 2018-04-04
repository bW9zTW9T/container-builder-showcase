FROM gcr.io/cloud-builders/go
ENV GOPATH="/go"
COPY . /go/src/webserver
RUN go install webserver
ENTRYPOINT [ "./bin/webserver" ]
EXPOSE 8080