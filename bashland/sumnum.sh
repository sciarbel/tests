#!/usr/bin/env bash
# Mon Feb 12 08:01:22 PM -03 2024
# Author   :  test
# Filename : 'sumnum.sh'

echo -n "Enter number 1 : "
read -r NUM1

echo -n "Enter number 2 : "
read -r NUM2

SUM=$(("$NUM1" + "$NUM2"))
echo "The sum is $SUM"
