#!/bin/bash

input_file="$1"
word="$2"

awk -v word_check="$word" '{
         for (i=1; i<=NF; i++){
		 if (tolower($i) ~ "^" tolower(word_check) ".?$") {
		count++
             }
	  }  
      }
      END {
          print "Number of times", word_check "appeared:", count
          }' "$input_file"
