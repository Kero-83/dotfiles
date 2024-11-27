#!/bin/bash

filename="pubspec.yaml"

for dir in */; do
  if [ -d "$dir" ]; then
    if [ -e "$dir/$filename" ]; then
      cd $dir
      flutter clean
      flutter pub upgrade
      flutter pub get
      cd ..
    else
      echo "File '$filename' does not exist."
    fi
  fi
done

