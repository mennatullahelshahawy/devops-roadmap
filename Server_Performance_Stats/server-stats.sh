#!/bin/bash
echo "==== System Monitoring ===="
echo ""

echo "CPU Usage:"
top -bn1

echo ""
echo "Memory Usage:"
echo "In Use"
free | grep Mem | awk '{print $3/$2*100.0}'
echo "Free"
free | grep Mem | awk '{print $4/$2*100.0}'

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 CPU usage processes"
ps aux --sort=-%cpu | head -n6

echo ""
echo "Top 5 Memory Usage processes"
ps aux --sort=-%mem | head -n6

