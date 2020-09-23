#!/bin/bash

# current script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR

./clash-linux-amd64-v1.1.0 -d ./config/
