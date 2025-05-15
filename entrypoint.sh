#!/bin/bash

# Automatically detect the host IP (assumes default gateway is host)
HOST_IP=10.148.228.239
export DISPLAY=${HOST_IP}:0
export LIBGL_ALWAYS_INDIRECT=1

echo "DISPLAY set to $DISPLAY"
echo "Starting: $@"

# Execute the passed command
exec "$@"