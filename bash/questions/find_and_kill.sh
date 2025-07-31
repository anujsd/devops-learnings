#!/bin/sh

for pid in $(pgrep -f ssh); do
    echo "process id $pid"
done