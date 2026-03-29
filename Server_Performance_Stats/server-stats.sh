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
