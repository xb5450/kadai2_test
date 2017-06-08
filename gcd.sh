#!/bin/bash

num1=$1
num2=$2
r=1
until [ "$r" -eq 0 ]
do
  r=$(($num1%$num2))
  num1=$num2
  num2=$r
done

 echo "$1 $2 $num1"
