#!/bin/bash
rm -rf /var/run/apache2/apache2.pid
# Replace environment COLLECTD_WRITEHTTP_HOST
cp /etc/collectd/configs/collectd-config.conf.tpl /etc/collectd/collectd.conf.tpl
envtpl /etc/collectd/collectd.conf.tpl

supervisord -n
