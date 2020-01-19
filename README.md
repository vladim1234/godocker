# godocker
Example create docker image witch golang binary file

build: 

#CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

#create image:

docker build -t example-scratch -f Dockerfile .

image run:

#docker run -it -p 9001:9001 example-scratch



Example run Percona DB:

docker run -d --restart=always --name percona_1 -v /opt/percona/:/var/lib/mysql/ -e MYSQL_ROOT_PASSWORD=secret -p 127.0.0.1:3306:3306 percona:latest

Example run MariaDB:

docker run -d --restart=always --name mariadb_1 -v /opt/mariadb/data:/var/lib/mysql -v /opt/mariadb/etc:/etc/mysql/conf.d -v /opt/mariadb/logs:/var/lib/mysql/logs -e MYSQL_ROOT_PASSWORD=secret -p 127.0.0.1:3306:3306 mariadb:10.3
