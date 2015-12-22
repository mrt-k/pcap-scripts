#!/bin/sh
tshark -r $1 -T fields -e ip.src -e http.user_agent -Y "http.user_agent" | sort | uniq > log/user_agent.log
cat log/user_agent.log
