#!/bin/bash
# Code by Javier E. Perez P. <javier.perez@entelgy.com>
# Last update: 2017-04-20
if [ $# -lt 1 ]; then
        echo "Must specify at least one YAML file as argument"
else
        python -c 'import yaml, sys; print yaml.load(sys.stdin)' < $1
        if [ $? -eq 0 ]; then
                echo "Well formatted file"
        else
                echo "BAD formatted file"
        fi
fi
