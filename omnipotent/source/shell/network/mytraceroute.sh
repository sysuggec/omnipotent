#!/bin/bash

traceroute -q 1 -n $1 |awk '{print $2}' |xargs bash iptool.sh
