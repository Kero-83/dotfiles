#!/usr/bin/bash

# Script to compile cpp code in build folder

if [ ! -d "build" ]; then
    read -p 'Do you want to create build folder here: (press y for creating it)' choice
    if [ "$choice" != "y" ]; then
    exit
    fi
    mkdir "build"
    echo "Directory build created."
fi

cd build

filename=$1
filename_no_ext="${filename%.cpp}"

g++ -o "$filename_no_ext" "../$filename"

if [[ $? -ne 0 ]]; then
  echo "Compilation failed."
  exit
fi

cd ..
echo "Compilation successful."

