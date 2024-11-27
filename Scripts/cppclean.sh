#!/usr/bin/bash

# Script to compile cpp code in build folder and run it

if [ ! -d "build" ]; then
  echo 'Build not Found!'
else
  rm -rf build/*
  echo 'Build cleaned Successfully :)'
fi
