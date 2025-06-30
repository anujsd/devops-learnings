#!/bin/sh

age=10

if [ $age -gt 10 ]; then
    echo "Age is lesser than 10"
elif [ $age -eq 10 ]; then
    echo "Age is equal to 10"
else
    echo "Age is greater than 10"
fi
