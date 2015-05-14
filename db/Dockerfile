# docker build -t xco/db .

FROM percona
RUN mkdir /db_dump
ENV MYSQL_DATABASE=sprut
ADD ./support/import_dump.sh /tmp/