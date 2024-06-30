#!/bin/bash

# Number of tests
NUM_TESTS=10000

# Loop over tests
for ((i=1; i<=NUM_TESTS; i++)); do
    # Generate input using g.py
    echo "$i" >> temp.txt;
    input=$(python3 helper/generate_input.py < temp.txt)

    # Measure time taken by skip_list_check.out
    start=$(date +%s.%N)
    echo "$input" | ./binaries/skip_list.out > /dev/null
    end1=$(date +%s.%N)

    # Measure time taken by 2
    start2=$(date +%s.%N)
    echo "$input" | ./binaries/set.out > /dev/null
    end2=$(date +%s.%N)

    # Calculate time taken
    runtime1=$(echo "$end1 - $start" | bc)
    runtime2=$(echo "$end2 - $start2" | bc)

    echo "$i $runtime1" >> execution_time/skip_list_time.txt
    echo "$i $runtime2" >> execution_time/set_time.txt
    $(rm temp.txt)
done

$(python3 helper/plot_time.py execution_time/skip_list_time.txt execution_time/set_time.txt)
