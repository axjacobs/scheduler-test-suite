#! /usr/bin/env bash

file="scheduler-updated.py"
arg="-c -s 45 -l 5,6,15,82,100,1000,4,72 -p RR -q 3"
{
    python3 $file $arg > test17
}
