#!/bin/bash

# Check if pyinstaller is installed
if ! command -v pyinstaller &> /dev/null
then
    echo "pyinstaller could not be found, installing..."
    pip install pyinstaller
    if [ $? -ne 0 ]; then
        echo "Error: Failed to install pyinstaller"
        exit 1  # Raise an error if pyinstaller installation fails
    fi
fi

# Check if a Python file is provided
if [ -z "$1" ]
then
    echo "No Python file provided. Usage: ./build.sh <your_script.py>"
    exit 1  # Raise an error if no file is provided
fi

# Convert the Python script to an executable
pyinstaller --onefile "$1"
if [ $? -ne 0 ]; then
    echo "Error: pyinstaller failed to build the executable"
    exit 1  # Raise an error if pyinstaller fails
fi

echo "Executable created in the dist/ directory."
