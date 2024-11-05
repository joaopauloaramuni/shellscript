#!/bin/bash

read -p "Digite uma palavra: " palavra

reverse="$(echo $palavra | rev)"

if [ "$reverse" = "$palavra" ]
then {
echo "É Palíndromo !"
}
else {
echo "Não é Palíndromo !"
}
fi
