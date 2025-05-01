#!/bin/bash

input_file="$1"

awk '{
         for (i=1; i<=NF; i++){
	     if (tolower($i) ~ /^error.?$/) {
		count++
             }
	  }  
      }
      END {
          print "Number of times error appeared:", count
          }' "$input_file"
