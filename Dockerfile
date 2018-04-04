FROM gcr.io/cloud-builders/go
WORKDIR /home/container-builder-showcase
# ENV GOPATH=/home/container-builder-showcase
# RUN go get -u github.com/kataras/iris
COPY . .
RUN go build main
ENTRYPOINT [ "./webserver" ]