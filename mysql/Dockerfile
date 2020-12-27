FROM mysql:5.7
RUN /bin/cp -fp /usr/share/zoneinfo/Japan /etc/localtime
ENV TZ "Asia/Tokyo"

RUN apt-get update -y && \
    apt-get install -y locales && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=ja_JP.UTF-8
