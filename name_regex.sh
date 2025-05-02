#!/bin/bash

for name in "$@"; do
	if [[ $name =~ ^[A-Z][a-z]+$ ]]; then
		echo "Valid name"
	else
		echo "Invalid name"
	fi
done		
