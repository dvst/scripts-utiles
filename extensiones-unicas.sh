#!/bin/bash
find . -type f |egrep '^./.*\.' |sed -e "s/\(^.*\.\)\(.*$\)/\2/" |sort |uniq
