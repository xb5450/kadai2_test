#!/bin/sh

#check
tmp=/tmp/$$

Error_Exit () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#TEST start
echo "24 48 24" > $tmp-ans
./gcd.sh 24 48 > $tmp-out || Error_Exit "TEST-1"
echo "8 128 8" > $tmp-ans
./gcd.sh 8 128 > $tmp-out || Error_Exit "TEST-1"
echo "7 77 7" > $tmp-ans
./gcd.sh 7 77 > $tmp-out || Error_Exit "TEST-1"
echo "12 15 3" > $tmp-ans
./gcd.sh 12 15 > $tmp-out || Error_Exit "TEST-1"
diff $tmp-ans $tmp-out || Error_Exit "TEST-2"

echo OK
rm -f $tmp-*
exit 0

