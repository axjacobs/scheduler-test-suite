#! /usr/bin/env bash

file="scheduler.py"
declare -a params=( ""
                    "-c"
                    "-c -s 0"
                    "-c -s 1"
                    "-c -s 5"
                    "-c -s 10"
                    "-c -j 10"
                    "-c -j 50"
                    "-c -j 100"
                    "-c -l 5,10,15,5"
                    "-c -l 15,100,5,20"
                    "-c -m 5"
                    "-c -p FIFO"
                    "-c -p SJF"
                    "-c -p RR"
                    "-c -p RR -q 5"
                    "-c -s 45 -l 5,6,15,82,100,1000,4,72 -p RR -q 3"
                    )
for i in "${!params[@]}"
do
    python3 $file ${params[$i]} > output
    if cmp -s output "test$((i+1))"; then
        printf "Test $((i+1)): Passed\n"
    else
        printf "Test $((i+1)): Failed - Arg(s) '%s' did not produce the correct results: \n" "${params[$i]}"
        cat output
    fi
done
rm output
