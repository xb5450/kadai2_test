#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

echo gcd.sh requires 2 string inputs > $tmp-ans
./gcd.sh 22 > $tmp-err && Rrror_Exit "test-err"
diff $tmp-ans $tmp-err || Error_Exit "test-2"

echo OK
rm -f $tmp-*
exit 0

