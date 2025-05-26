#!/bin/bash

# CPU usage calculation
usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print int(usage)}')

# CPU frequency in GHz (from /proc/cpuinfo)
freq=$(awk -F: '/cpu MHz/ {gsub(/ /,"",$2); printf "%.2f", $2/1000; exit}' /proc/cpuinfo)

echo " CPU ${freq}GHz (${usage}%)"
