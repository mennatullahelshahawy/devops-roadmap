#!/bin/bash

LOG_FILE=${1:-sample.log}

echo "Analyzing NGINX log file: $LOG_FILE"
echo "-------------------------------------"

# Top 5 IP addresses
echo "Top 5 IP Addresses:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
echo ""

# Top 5 requested paths
echo "Top 5 Requested Paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
echo ""

# Top 5 status codes
echo "Top 5 Status Codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
echo ""

# Top 5 user agents
echo "Top 5 User Agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
echo ""