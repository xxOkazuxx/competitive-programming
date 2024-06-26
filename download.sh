#! /bin/bash
set -euC

function show_help() {
    echo "Usage: ${0} https://atcoder.jp/contests/abcxxx/tasks/abcxxx_y"
    echo "contest_id {x}:  ex. 314"
    echo "problem_id {y}:  ex. a"
}

if [[ $# -eq 0 ]]; then
    show_help
    exit 1
fi

if [[ -d "./test" ]]; then
    rm -r ./test
fi

if [[ -d "./main.cpp" ]]; then
    rm -f ./main.cpp
fi
cp ./templates/main.cpp ./main.cpp

if [[ -d "./main.py" ]]; then
    rm -f ./main.py
fi
cp ./templates/main.py ./main.py

url="${1}"
oj d "${url}"
