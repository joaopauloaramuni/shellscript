#!/bin/bash

function funcaoPalindromo(){
	
	reverse="$(echo $1 | rev)"

	if [ "$reverse" = "$1" ]
	then {
		return 0
	}
	else {
		return 1
	}
	fi

}

read -p "Digite uma palavra: " palavra

if funcaoPalindromo $palavra
then
	echo "É palíndromo"
else
	echo "Não é palíndromo"
fi
