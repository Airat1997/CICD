clang-format -n -style=Google cat/s21_cat.c
clang-format -n -style=Google cat/s21_cat.c 2> 1.txt
if test -s 1.txt; then
    echo "STYLE_TEST_CAT: FAIL"
    rm 1.txt
    exit 1
else echo "STYLE_TEST_CAT: OK"
fi

clang-format -n -style=Google grep/s21_grep.c
clang-format -n -style=Google grep/s21_grep.c 2> 2.txt
if test -s 2.txt; then
    echo "STYLE_TEST_GREP: FAIL"
    rm 1.txt 2.txt
    exit 1
else echo "STYLE_TEST_GREP: OK"
fi

rm 1.txt 2.txt
#if [[ $G=FAIL || $C=FAI L ]]; then
#    rm 1.txt 2.txt
#    exit 1
#f