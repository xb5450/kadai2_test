#!/bin/sh

tmp=/tmp/$$

Error_Exit () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

echo 24 48 24 > $tmp-ans
./gcd.sh 24 48 > $tmp-out || Error_Exit "test1-1"
echo 8 128 8 > $tmp-ans
./gcd.sh 8 128 > $tmp-out || Error_Exit "test2-1"
echo 7 77 7 > $tmp-ans
./gcd.sh 7 77 > $tmp-out || Error_Exit "test3-1"
echo 12 15 3 > $tmp-ans
./gcd.sh 12 15 > $tmp-out || Error_Exit "test4-1"
diff $tmp-ans $tmp-out || Error_Exit "test-2"

echo gcd.sh requires 2 string inputs > $tmp-ans
./gcd.sh 22 > $tmp-err && Rrror_Exit "test-err"
diff $tmp-ans $tmp-err || Error_Exit "test-2"

echo OK
echo $tmp-ans
rm -f $tmp-*
exit 0

