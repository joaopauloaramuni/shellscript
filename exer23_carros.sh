#!/bin/bash

echo "Olá, abaixo os carros disponíveis neste mês"
echo
echo "Ferrari, Palio, Celta, Lamborghini e Uno"
echo
# Recebendo o valor do carro desejado
echo "Qual carro deseja saber a classe? (digite em minúsculo)"
read CARRO
echo
# Se carro é igual a lamborghini ou a ferrari, então só pode ser classe A
# Coloquei a variável no texto, assim o que ele digitar vai aparecer no texto
if [ "$CARRO" = "lamborghini" -o "$CARRO" = "ferrari" ];then
 echo "$CARRO pertence a classe A"
fi
if [ "$CARRO" = "celta" ];then
 echo "$CARRO pertence a classe B"
fi
if [ "$CARRO" = "palio" -o "$CARRO" = "uno" ];then
 echo "$CARRO pertence a classe C"
fi
exit













