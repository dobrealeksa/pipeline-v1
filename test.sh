#!/bin/bash
if curl -s --retry 10 --retry-delay 1 --retry-all-errors http://localhost:8000 | grep -q "Hello"; then
    echo ":) Test je prosao!"
    exit 0
else
    echo ":( Test je pao!"
    exit 1
fi
