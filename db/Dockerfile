# docker build -t xco/db .

FROM percona
RUN mkdir /db_dump
ADD ./support/import_dump.sh /tmp/
ADD ./support/create_database.sh /tmp/