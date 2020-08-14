#!/bin/bash

echo "Digite seu peso: "
read peso

echo "Digite sua altura: "
read altura

#ALTURA AO QUADRADO
alturaquadrado=`echo $altura \\*  $altura | bc -l`

#IMC = PESO / ALTURA AO QUADRADO
imc=`echo $peso / $alturaquadrado | bc -l`

echo "Seu IMC é: $imc"

if [ $( echo "$imc < 18.5" | bc ) -eq 1 ]; then
echo "Peso abaixo do ideal!"
elif [ $( echo "$imc >= 18.5" | bc ) -eq 1 ] && [ $( echo "$imc <= 24.9" | bc ) -eq 1 ]; then
echo "Peso ideal!"
elif [ $( echo "$imc >= 25" | bc ) -eq 1 ] && [ $( echo "$imc <= 29.9" | bc ) -eq 1 ]; then
echo "Acima do peso ideal!"
elif [ $( echo "$imc >= 30" | bc ) -eq 1 ] && [ $( echo "$imc <= 34.9" | bc ) -eq 1 ]; then
echo "Obesidade classe 1 !"
elif [ $( echo "$imc >= 35" | bc ) -eq 1 ] && [ $( echo "$imc <= 39.9" | bc ) -eq 1 ]; then
echo "Obesidade classe 2 !"
elif [ $( echo "$imc >= 40" | bc ) -eq 1 ]; then
echo "Obesidade classe 3 !"
fi

