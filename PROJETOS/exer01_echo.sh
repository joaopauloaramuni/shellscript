#!/bin/bash

#Declare a variavel x com o valor 10 e mostre na tela
x=10
echo "O valor de x=    $x"

#Declare a variavel xn com o valor "Aluno" e mostre na tela
xn="Aluno"
echo "O valor de xn=$xn"

#Mostra a soma de dois numeros na tela
echo "A soma de 3 e 6 =`expr 6 + 3`"

#Mostra a divisao de x e y
x=20
y=5
echo "A divisao é =`expr $x / $y`"

#Armazena o resultado em z e imprime na tela
z=`expr $x / $y`
echo "A divisao é =$z"

# Se precisarmos de uma quebra de linha \n
echo -e "Caso precisarmos de uma\nquebra de linha"

# $'' Anotação ANSI C
# Palavras no formato '$ string' são tratadas especialmente. 
# A palavra expande para uma string, com caracteres de escape - barra invertida, substituídas conforme especificado pela norma ANSI C.
echo $'hello\nworld'

#Algumas opções do comando
#-n : não adiciona uma nova linha após mostrar os argumentos.
#-e : habilita interpretação dos códigos de escape após barra invetida.
#-E : suprime explicitamente a interpretação de códigos de escape após barra invertida.
#São exemplos de códigos de escape:

#\a :	alerta (Sino).
#\b :	retroceder.
#\c :	suprime próxima saída.
#\e :	caractere de escape.
#\f :	alimentação de página (FF).
#\n :	nova linha (NL).
#\r :	retorno de carro (CR).
#\t :	tabulação horizontal.
#\v :	tabulação vertical.