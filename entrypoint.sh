#!/bin/bash
set -e
echo "Mounting tmpfs volume of size: ${TMPFS_SIZE}m"
mount -t tmpfs -o size=${TMPFS_SIZE}m tmpfs /data/db

exec "$@"
