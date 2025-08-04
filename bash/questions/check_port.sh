#!/bin/bash
if nc -z 127.0.0.1 22 2>/dev/null; then
  echo "Port 22 is open"
else
  echo "Port 22 is closed"
fi


# Netcat — a networking utility for reading/writing over TCP/UDP
# -z: Zero-I/O mode — don't send data, just check if port is open
