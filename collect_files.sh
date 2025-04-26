#!/bin/bash
input_dir="$1"
output_dir="$2"
max_depth=""
if [ -n "$3" ]; then
    max_depth="$3"
fi
if [ -n "$max_depth" ]; then
    find "$input_dir" -maxdepth "$max_depth" -type f | while read filepath; do
        cp "$filepath" "$output_dir/"
    done
else
    find "$input_dir" -type f | while read filepath; do
        cp "$filepath" "$output_dir/"
    done
fi