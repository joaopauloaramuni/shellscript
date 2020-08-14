#!/bin/bash

# Utilização da calculadora básica (bc) do shell

a=5.66
b=8.67
c=`echo $a + $b | bc`
echo "$a + $b = $c"
