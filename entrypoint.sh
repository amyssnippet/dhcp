#!/bin/bash

# Get IP and PORT from env or args
IP="${1:-127.0.0.1}"
PORT="${2:-6379}"

# Optional: Show Ray version and environment
echo "Ray Version: $(ray --version)"
echo "Starting Ray with address: $IP:$PORT"

# Start Ray node
ray start --address="$IP:$PORT" --block
if [ $? -ne 0 ]; then
    echo "Failed to start Ray node."
    exit 1
fi