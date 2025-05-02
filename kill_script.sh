#!/bin/bash

file_name="$1"

kill -9 $(lsof "$file_name" | awk 'NR > 1 {print $2}')
