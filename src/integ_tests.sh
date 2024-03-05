#!/bin/bash
TEST="FAIL: 0"
cd test/cat/
sh test_cat.sh > test_cat.txt
if grep -q "$TEST" "test_cat.txt"; then
    echo "INTEG_TEST_GREP:OK"
    rm -rf test_cat.txt s21_cat
else 
    echo "INTEG_TEST_GREP:FAIL"
    rm -rf test_cat.txt s21_cat
    exit 1
fi


cd ..
cd grep/
sh test_grep.sh > test_grep.txt
if grep -q "$TEST" "test_grep.txt"; then
    echo "INTEG_TEST_GREP:OK"
    rm -rf test_grep.txt s21_grep
else 
    echo "INTEG_TEST_GREP:FAIL"
    rm -rf test_grep.txt s21_grep
    exit 1
fi