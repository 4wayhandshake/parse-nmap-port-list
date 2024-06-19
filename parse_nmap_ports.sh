#!/bin/bash

# Take a comma-separated list of integers and ranges 
# and transform it into one integer per line.

input_file="$1"
tmp_file="temp_$(basename $1)"

# Replace commas with newlines
sed 's/\,/\n/g' "$input_file" > "$tmp_file"

while IFS= read -r line; do
    if [[ "$line" == *-* ]]; then
        # If the line contains a hyphen, it is a range
        start=${line%-*}
        end=${line#*-}
        seq "$start" "$end"
    else
        # If the line does not contain a hyphen, it is a single number
        echo "$line"
    fi
done < "$tmp_file"

rm "$tmp_file"
