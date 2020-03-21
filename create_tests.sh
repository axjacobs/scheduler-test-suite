#! /usr/bin/env bash

file="scheduler.py"
arg="-c -l 5,6,18,56,100 -p RR -q 3"
{
    python3 $file $arg > tests/test17
}
