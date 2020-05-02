FROM postgres:12.2
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.utf8
ENV GOSU_VERSION 1.11

RUN apt-get update && apt-get install -y iputils-ping net-tools

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

ADD ./gosu /usr/bin/
RUN chmod +x /usr/bin/gosu

CMD ["gosu", "postgres", "postgres"]
