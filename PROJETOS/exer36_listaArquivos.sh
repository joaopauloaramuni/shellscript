#!/bin/bash

# Lista arquivos que sao inuteis ao ambiente por norma da empresa
MSG="ESSE COMANDO POSSUI MELHORES RESULTADOS SE EXECUTADO PELO ROOT"
# -- VARIAVEIS
# -- EXTENSOES DE ARQUIVOS A SEREM BUSCADAS:
LISTA="avi mp3 ogg mp4 wav wmv wma html htm asp aspx jpg png gif"

RELATORIO="remover.txt"        # NOME DO ARQUIVO PARA O RELATORIO
I=0

clear

# -- VOCE EH O ROOT?
if test "$UID" != "0"; then
	echo $MSG
fi

# -- TAMANHO A BUSCAR
echo -n "TAMANHO DOS ARQUIVOS: " && read TAM

# -- O 'k' TEM DE SER MINUSCULO E OS OUTROS MAIUSCULOS
TAM=$( echo $TAM | tr m M | tr K k | tr g G )

# -- IMPRIMA NA TELA E NO ARQUIVO
echo "Procurando arquivos maiores que $TAM"
echo "Procurando arquivos maiores que $TAM" > $RELATORIO

# -- BUSCA CERTIFICANDO A VARIAVEL $LISTA
for BUSCA in $LISTA; do
	BUSCA[I]=${BUSCA}
	I=$(echo ${I}+1 | bc)
	echo $BUSCA "-> listando e adicionando em $RELATORIO"
	find / -name "*.$BUSCA" -size +$TAM -print >> $RELATORIO
	echo " ------ ------ ------ ------ -----------"
done

# -- PERFUMARIA
LINHA=$( cat $RELATORIO| wc -l)
if test "$LINHA" = "1"; then
	echo "Nenhum arquivo encontrado."
elif test "$LINHA" = "2"; then
	echo "1 arquivo encontrado."
elif test "$LINHA" > "2"; then
	echo  "$LINHA arquivos encontrados."
fi

echo
