FROM postgres:12.2
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.utf8

COPY ./setup.sh /docker-entrypoint-initdb.d/setup.sh
RUN chmod 0666 /docker-entrypoint-initdb.d/setup.sh
