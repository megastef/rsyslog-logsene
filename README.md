# rsyslog-logsene docker file

This is a pre-configured rsyslog server in a Docker container, ready to ship logs to [Logsene](https://www.sematext.com/logsene/)
- UDP/TCP/RELP input
- Elasticsearch bulk inserts 
- HTTPS

Very efficient, secure, easy to use ...


# Installation

```
git clone https://github.com/megastef/rsyslog-logsene.git
cd rsyslog-logsene
docker build -t sematext/rsyslog-logsene .
```

# Usage

```
docker run -d -e LOGSENE_TOKEN=TOKEN -p1514:514 sematext/rsyslog-logsene 
```