#!/bin/bash

num1=$a
num2=$b
r=1
until [ "$r" -eq 0 ]
do
  r=$(($num1%$num2))
  num1=$num2
  num2=$r
done

 echo " $:a and $b の最大公約数 = $num1"
