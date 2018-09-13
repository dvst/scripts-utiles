#!/bin/bash
find . -type f |egrep '^./.*\.' |sed -e "s/\(^.*\.\)\(.*$\)/\2/" |sort |uniq

# un simulacro para hacer lo mismo (pero no hace lo mismo) 
# --------------------------------------------------------
# find . -type f |awk -F'.' '{print $NF}' |sort |uniq

# new comment
