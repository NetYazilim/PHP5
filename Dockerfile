FROM netyazilim/alpine-base:3.8
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

VOLUME /shared 
COPY entrypoint.sh /bin/entrypoint.sh
ENV fpmcfg "/etc/php5/php-fpm.conf"

RUN apk add --update --no-cache libressl php5-fpm php5-bz2 php5-curl php5-iconv php5-json php5-mysqli php5-mysql php5-pdo_mysql php5-pdo_pgsql php5-pgsql php5-soap php5-xml php5-zip php5-zlib
RUN sed -i '/^listen =/c listen = 9000' /etc/php5/php-fpm.conf
EXPOSE 9000
ENTRYPOINT ["/bin/entrypoint.sh"]

