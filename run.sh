#!/bin/bash

# Change main with whatever your main file is called
gcc main.c -o a.out

if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

mkdir -p results

# Run all test cases
for input_file in input/*.in; do
    filename=$(basename "$input_file" .in)
    output_file="results/${filename}.out"

    if [ -f "$input_file" ]; then
        ./a.out < "$input_file" > "$output_file"
    else
        echo "$input_file (not found)"
    fi
done

# Compare results
for output_file in results/*.out; do
    filename=$(basename "$output_file" .out)
    expected_output_file="expected/${filename}.txt"

    if [ -f "$output_file" ] && [ -f "$expected_output_file" ]; then
        diff_output=$(diff -w "$output_file" "$expected_output_file") 
        if [ $? -eq 0 ]; then
            echo "Test case $filename passed! ✅"
        else
            echo "Test case $filename failed! ❌"
            echo "$diff_output"  
        fi
    else
        echo "Skipping $output_file (not found)"
    fi
done

echo "All test cases executed!"
