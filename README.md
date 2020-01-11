# godocker
Example create docker image witch golang binary file

build 

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

create image 

docker build -t example-scratch -f Dockerfile .

image run

docker run -it -p 9001:9001 example-scratch

