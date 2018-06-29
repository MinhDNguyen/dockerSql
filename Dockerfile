FROM mysql:5.5

LABEL maintainer "Minh Nguyen <ndminh9x@gmail.com>"

ENV MYSQL_DATABASE=freeswitch \
    MYSQL_ROOT_PASSWORD=nt9user

ADD sql/freeswitch.sql /docker-entrypoint-initdb.d

EXPOSE 3306
