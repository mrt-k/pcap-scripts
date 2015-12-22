#!/bin/sh
tshark -r $1 -T fields -e ip.src -e ip.dst -e dns.qry.name -Y "dns.flags.response eq 0" | sort | uniq > log/dns_query_from_pcap.log
cat log/dns_query_from_pcap.log
