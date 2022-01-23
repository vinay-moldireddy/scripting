#!/bin/bash

<<comment
echo "original file" > ./file.txt
comment
echo "to append this command output to file.txt " >> ./file.txt
