#!/bin/bash

file=$1

echo "Name       Percent    Grade"
awk -f task6.awk "$file" | tail -n +2 | sort
