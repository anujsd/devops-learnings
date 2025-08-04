#!/bin/sh

age=100

if [ $age -gt 10 ]; then
    echo "Age is lesser than 10"
elif [ $age -eq 10 ]; then
    echo "Age is equal to 10"
else
    echo "Age is greater than 10"
fi

if [ $age -lt 100 ]; then
    echo "less than 100"
elif [ $age -lt 10 ]; then
    echo "less than 10"
fi
