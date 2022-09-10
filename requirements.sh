#!/usr/bin/env sh

# Let us check for required libraries and tools

## programExists is used to see if the command is registered.
programExists(){
    if ! command -v $1 &> /dev/null
    then
        echo "$1 could not be found"
        echo "please install $1"
        exit
    fi
}

# make exists
programExists make
# go exists
programExists go
# golangci-lint exists
#    brew install golangci-lint 
programExists golangci-lint

