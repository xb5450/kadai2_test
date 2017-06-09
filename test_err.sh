#!/bin/sh

tmp=/tmp/$$

Error_Exit () {
    echo $1 1>&2
    rm -f $tmp-*
    exit 1
}

echo "gcd_err.sh requires 2 string inputs" > $tmp-ans
./gcd_err.sh 12 > $tmp-err && Error_Exit "test-err-1"
diff $tmp-ans $tmp-err || Error_Exit "test-2"

echo OK
rm -f $tmp-*
exit 0

