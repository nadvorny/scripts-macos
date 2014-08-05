#!/bin/sh

natd -interface en1
ipfw -f flush
ipfw add divert natd ip from any to any via en1
ipfw add pass all from any to any
sysctl -w net.inet.ip.forwarding=1
