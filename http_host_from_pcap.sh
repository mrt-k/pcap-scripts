#!/bin/sh
tshark -r $1 -T fields -e http.host | sed '/^$/d'  | sort | uniq -c | sort -nr > log/http_host.log
cat log/http_host.log
