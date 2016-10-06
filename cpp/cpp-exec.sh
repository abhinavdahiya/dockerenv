#!/bin/sh
echo "Output for: $1\n"
g++ -o obj $1 && ./obj
