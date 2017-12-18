#!/usr/bin/env python

import struct

m = 0b10101010
key = 0b00001111

print "m is {0:b}".format(m)
print "key is {0:b}".format(key)
print "m ^ key is {0:b}".format(m^key)
