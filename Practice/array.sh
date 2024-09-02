#!/bin/bash

# Declare an array
array=(mango orange apple grapes banana)

# Iterate over the array
echo "Iterating over the array:"
for element in "${array[@]}"; do
  echo "$element"
done

# Access elements by index
echo "Accessing elements by index:"
echo "${array[0]}"
echo "${array[1]}"
echo "${array[2]}"

# Find the length of the array
array_length="${#array[@]}"
echo "Array length: $array_length"

# Append elements to the array
array+=("coconut strawbarry")
echo "Array after appending: ${array[@]}"

# Remove elements from the array
unset array[1]
echo "Array after removing: ${array[@]}"

# Check if an element exists in the array
if [[ "${array[@]}" =~ "element1" ]]; then
  echo "Element 'element1' exists in the array."
fi

# Replace an element in the array
array[0]="kiwi"
echo "Array after replacing: ${array[@]}"

# Create a copy of the array
copy_array=("${array[@]}")
echo "Copied array: ${copy_array[@]}"

