FROM mariadb:10.1.31

RUN apt-get update & apt-get upgrade -y

ENV MYSQL_USER=arinal \
    MYSQL_PASSWORD=arin4l\
    MYSQL_DATABASE=usermanagementdb \
    MYSQL_ROOT_PASSWORD=Secret

COPY *.sql /docker-entrypoint-initdb.d/
