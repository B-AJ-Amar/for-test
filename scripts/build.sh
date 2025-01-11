#!/bin/bash

# Check if pyinstaller is installed
if ! command -v pyinstaller &> /dev/null
then
    echo "pyinstaller could not be found, installing..."
    pip install pyinstaller
fi

# Check if a Python file is provided
if [ -z "$1" ]
then
    echo "No Python file provided. Usage: ./build.sh <your_script.py>"
    exit 1
fi

# Convert the Python script to an executable
pyinstaller --onefile "$1"

echo "Executable created in the dist/ directory."