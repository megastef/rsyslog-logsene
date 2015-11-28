FROM ubuntu:trusty
RUN apt-get update && apt-get install software-properties-common python-software-properties -y && \
    add-apt-repository ppa:adiscon/v8-stable && apt-get update 
RUN apt-get upgrade -y
# rsyslog-mmjsonparse rsyslog-mmutf8fix rsyslog-imptcp 
RUN apt-get install rsyslog  rsyslog-elasticsearch rsyslog-gnutls rsyslog-mmjsonparse rsyslog-mmutf8fix rsyslog-imptcp rsyslog-relp gnutls-bin -y
COPY rsyslog.conf /etc/rsyslog.conf
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
VOLUME /dev
VOLUME /var/log
ENTRYPOINT ["./entrypoint.sh"]
