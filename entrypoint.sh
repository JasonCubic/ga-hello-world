#!/bin/sh -l

echo "$1 $2"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
