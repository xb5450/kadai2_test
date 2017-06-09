#!/bin/sh
 
tmp=/tmp/$$

Error_Exit () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

echo 24 78 6 > $tmp-ans
./gcd_err.sh 24 78 > $tmp-out || Error_Exit "TEST1-1"
diff $tmp-ans $tmp-out || Error_Exit "TEST1-2"

echo 7 77 7 > $tmp-ans
./gcd_err.sh 7 77 > $tmp-out || Error_Exit "TEST1-1"
diff $tmp-ans $tmp-out || Error_Exit "TEST1-2"

echo 3 8 1 > $tmp-ans
./gcd_err.sh 3 8 > $tmp-out || Error_Exit "TEST1-1"
diff $tmp-ans $tmp-out || Error_Exit "TEST1-2"

echo 15 35 5 > $tmp-ans
./gcd_err.sh 15 35 > $tmp-out || Error_Exit "TEST1-1"
diff $tmp-ans $tmp-out || Error_Exit "TEST1-2"

#echo "gcd_err.sh need two inputs" > $tmp-ans
#./gcd_err.sh 2 > $tmp-out && Error_Exit "TEST2-1"
#diff $tmp-ans $tmp-out || Error_Exit "TEST2-2"

echo OK
rm -f $tmp-*
exit 0

