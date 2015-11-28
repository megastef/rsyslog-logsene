#!/bin/bash
sed -i "s/TOKEN_GOES_HERE/$LOGSENE_TOKEN/g" /etc/rsyslog.conf
rsyslogd -n 
