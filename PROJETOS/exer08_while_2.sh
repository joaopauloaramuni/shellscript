#!/bin/bash

cont=1
while [[ $cont -le 10 || $cont -eq 11 ]]
do
  echo -e "cont --> $cont"
  cont=`expr $cont + 1`
done



