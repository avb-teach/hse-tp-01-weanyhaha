#!/bin/bash
input_dir="$1"
output_dir="$2"
find "$input_dir" -type f | while read filepath; do
    cp "$filepath" "$output_dir/"
done