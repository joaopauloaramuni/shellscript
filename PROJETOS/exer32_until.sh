#!/bin/bash

#Enquanto a condição for VERDADEIRA, o while continuará executando o loop até que a condição seja FALSA.
#Em outras palavras, ENQUANTO (while) for verdadeiro, execute.
variavel=0
while [ $variavel -lt 10 ]
do
	echo "$variavel eh menor do que 10."
	variavel=`expr $variavel + 1`
done

#Enquanto a condição for FALSA, o until continuará executando o loop até que a condição seja VERDADEIRA.
#Em outras palavras, ATÉ (until) que seja verdadeiro, execute.
variavel2=20
until [ $variavel2 -lt 10 ]
do
	echo "$variavel2 nao eh menor do que 10."
	variavel2=`expr $variavel2 - 1`
done

#RESULTADOS:

# WHILE irá imprimir:					# UNTIL irá imprimir:
# 0 é menor do que 10.					# 20 não é menor do que 10.
# 1 é menor do que 10.					# 19 não é menor do que 10.
# 2 é menor do que 10.					# 18 não é menor do que 10.
# 3 é menor do que 10.					# 17 não é menor do que 10.
# 4 é menor do que 10.					# 16 não é menor do que 10.
# 5 é menor do que 10.					# 15 não é menor do que 10.
# 6 é menor do que 10.					# 14 não é menor do que 10.
# 7 é menor do que 10.					# 13 não é menor do que 10.
# 8 é menor do que 10.					# 12 não é menor do que 10.
# 9 é menor do que 10.					# 11 não é menor do que 10.	
										# 10 não é menor do que 10.
													
# A válvula de escape do WHILE foi variavel=10, uma vez que 10 -lt 10 tem como resultado FALSO, e por isso, termina o loop. (10 < 10 = falso)
# A válvula de escape do UNTIL foi variavel=9, uma vez que 9 -lt 10 tem como resultado VERDADEIRO, e por isso, termina o loop. (9 < 10 = verdadeiro)
