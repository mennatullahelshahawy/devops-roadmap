#!/bin/bash

LOG_DIR="$1"

ARCHIVE_DIR="archives"

rm -d "$ARCHIVE_DIR"
mkdir "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

sudo tar -czf "$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz" -C "$LOG_DIR" . 
