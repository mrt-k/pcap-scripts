#! /usr/bin/env python
from __future__ import print_function
import GeoIP
import sys

gi = GeoIP.new(GeoIP.GEOIP_MEMORY_CACHE)
print("%s\t%s" % (sys.argv[1], gi.country_name_by_name(sys.argv[1])) )
#print(gi.country_name_by_addr(sys.argv[1]))
