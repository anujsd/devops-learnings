#!/bin/bash
if nc -z 127.0.0.1 22 2>/dev/null; then
  echo "Port 22 is open"
else
  echo "Port 22 is closed"
fi
