#!/bin/sh
cp -u /etc/php5/php-fpm.conf ${fpmcfg}
/usr/bin/php-fpm5 --fpm-config ${fpmcfg} --allow-to-run-as-root --nodaemonize
