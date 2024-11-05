#/bin!/bash
#Script para verificar qual número é o maior de uma série de 3
#
#
#

# Verificando quantidade de argumentos passados paro o script:
  if [ $# -ne 3 ]
    then 	
	echo "$0: num1 num2 num3 não foram passados como parâmetro." >&2
        exit 1    
  fi
  n1=$1
  n2=$2
  n3=$3
  if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
    then
	echo "$n1 é o maior numero."
    elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]         
    then
	echo "$n2 é o maior numero."
    elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ]         
    then
        echo "$n3 é o maior numero."
    elif [ $1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ]
    then
	echo "Todos os três números são iguais."    
    else
        echo "Não é possível verificar qual é o maior."    
  fi    
