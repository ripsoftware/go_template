#!/usr/bin/env sh

# Let us check for required libraries and tools

## testcmd tests command and discards output.
testcmd () {
    ! command -v $1 >/dev/null
}
## programExists is used to see if the command is registered.
programExists(){
    #if ! command -v "$1" ; then
    if testcmd $1 ; then
        echo "$1 could not be found"
        echo "please install $1"
        exit
    else
        echo "$1 found"
    fi
}

# make exists
programExists make
# go exists
programExists go
# golangci-lint exists
#    brew install golangci-lint 
programExists golangci-lint

