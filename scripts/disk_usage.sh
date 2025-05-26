#!/bin/bash

# Get used and total disk space in human-readable format for path /
used=$(df -h / | awk 'NR==2 {print $3}')
total=$(df -h / | awk 'NR==2 {print $2}')

# Nerd Font icon for disk:  (U+F7C9)
echo " Disk:${used}/${total}"
