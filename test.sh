#!/bin/bash

if curl -s http://localhost:8000 | grep -q "Hello"; then
  echo "Test prosao!"
  exit 0
else
  echo "Test pao!"
  exit 1
fi
