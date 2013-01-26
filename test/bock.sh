#!/bin/bash


source ./bock thisCall
echo -n "Testing if a mocked call is aliased..."
alias -p | grep thisCall >/dev/null && echo "PASSED" || echo FAILED

echo -n "Testing if a mock call is stored in a global array..."
thisCall
[ -z $MOCKED_thisCall[1] ] && echo "FAILED" || echo "PASSED" 

echo -n "Testing if the last call is being kept track of..."

if verify thisCall
then
    echo PASSED
else
    echo FAILED
fi

echo "Testing if resetMocks clears out all mocks"
resetMocks thisCall

verify thisCall && echo FAILED || echo PASSED

