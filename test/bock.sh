#!/bin/bash


source ./bock thisCall
echo -n "Testing if the last call is being kept track of..."
thisCall
if verify thisCall 2>/dev/null
then
    echo PASSED
else
    echo FAILED
fi

echo -n "Testing if resetMocks clears out all mocks..."
resetMocks thisCall

verify thisCall 2>/dev/null && echo FAILED || echo PASSED

echo -n "Testing if these mocks are carried into a sub-program..."

source ./bock mv
. test/testScript

verify mv && echo PASSED || echo FAILED

