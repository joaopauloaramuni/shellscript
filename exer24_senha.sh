#!/bin/bash

echo
echo "Seja Bem-vindo"
echo
echo "Por favor digite a senha para logar no sistema"
echo
read SENHA
# zerando a variavel de loop
x=$"0"
# Enquanto x for menor que 4, faça (contei com a primeira tentativa acima)
while [ $x -lt 4 ];do
 # Se a senha for igual a 123 então faça o comando
 if [ "$SENHA" = "123" ];then
 echo
 echo "Senha correta, logado no sistema"
 sleep 2
 exit
 fi
 # Se ele não cair no if, pede a senha novamente
 echo
 echo "Senha incorreta tente novamente"
 read SENHA
 # colocando +1 para contarmos as rodadas
 x=$[$x+1]
done
# Fora do loop eu coloco estes comandos, então assim que as tentativas se esgotarem
# Ele sai do loop e executa aqui
echo
echo "Número de tentativas esgotado, tente mais tarde"
sleep 2
exit










