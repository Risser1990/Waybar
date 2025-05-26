#!/bin/bash
read used total <<< $(free -b | awk '/Mem:/ {print $3, $2}')
used_gb=$(awk "BEGIN {printf \"%.2f\", $used / (1024*1024*1024)}")
percent=$(awk "BEGIN {printf \"%d\", ($used / $total) * 100}")
echo "󰍛 Ram: ${used_gb}G (${percent}%)"
