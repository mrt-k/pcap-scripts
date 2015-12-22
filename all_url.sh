#!/bin/sh
tshark -r $1 -Y http.request -T fields -e http.host -e http.request.uri | sed -e 's/?.*$//' | sed -e 's#^\(.*\)\t\(.*\)$#http://\1\2#' | sort | uniq -c | sort -rn > log/all_url.log
cat log/top_url.log
