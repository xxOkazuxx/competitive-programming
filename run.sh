#! /bin/bash
set -uC

# Run the program
if [[ $# -eq 0 ]]; then
    g++ main.cpp -o main.out -I ./lib/ac-library/ && oj t -c "./main.out" -d "./test"
elif [[ $1 == "p" ]]; then
    oj t -c "python3 main.py" -d "./test"
else
    echo "Invalid argument"
    exit 1
fi

# Clean up
rm -f main.out