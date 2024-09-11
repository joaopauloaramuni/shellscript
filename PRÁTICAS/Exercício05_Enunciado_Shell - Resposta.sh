Exercicio1
#!/bin/bash
echo “Digite o primeiro número:”
read n1
echo “Digite o segundo número:”
read n2
if [ $n1 –gt $n2 ]
then
echo “O maior número é $n1”
else
echo “O maior número é $n2”
fi
echo “Soma:”
echo $(($n1+$n2))

Exercício 2
#!/bin/bash
echo “Informe o nome do usuário a ser consultado:”
read a
cat /etc/passwd | find $a
if [ -e $a ]
then
echo “$a é um usuário cadastrado!”
else
echo “$a não é um usuário cadastrado!”
fi

Exercício 3
#!/bin/bash
echo “Escreva o nome do arquivo:”
read arq
for arquivo in ${@}/*
do
if [ -d “$arq” ]
then
echo “$arq (dir)”
else
echo “$arq é um arquivo”
fi
done

Exercício 4
#!/bin/bash
numero=$1
while test $numero –ge 0
do
rt=$((numero%2))
if [ $rt –eq 0 ]
then
echo “$numero”
fi
numero=$((numero-1))
done

Exercício 5
#!/bin/bash
echo “Digite o nome do arquivo”
read arq
if [ -e $2 ]
then
echo “$arq é um arquivo!”
du –hsb $2
else
echo “$arq não existe!”
fi

Exercício 6
#!/bin/bash
echo “1- Exibir status da utilização das partições do sistema”
echo “2- Exibir relação dos usuários logados”
echo “3- Exibir data/hora”
echo “4- Sair”
echo “Informe sua opção:”
read var
if [ $var –eq 1 ]
then
echo “Status:”
DF –n
fi
if [ $var –eq 2 ]
then
echo “Usuários:”
who
fi
if [ $var –eq 3 ]
then
echo “Data e hora:”
date
fi
if [ $var –eq 4 ]
then
exit
fi

Exercício 9
#!/bin/bash
for b in $@
do
echo “$b”>>list.txt
done
sort list.txt

Exercício 10
#!/bin/bash
x=0
while [ $x!=sair]
do
echo “Informe a palavra a ser incluída na lista ordenada”
read x
if [ $x=sair ]
then
rm ord &&exit
else
echo $x>>ord
sort ord
fi
done

Exercício 11
#!/bin/bash
echo “Digite o primeiro valor:”
read v1
echo “Digite o segundo valor:”
read v2
echo Soma = $(($v1+$v2))
echo Multiplicação = $(($v1*$v2))
echo Divisão = $(($v1/$v2))
echo Subtração = $(($v1-$v2))

Exercício 12
#!/bin/bash
echo “Listagem dos usuários:”
cat /etc/passwd | cut –d: -f1,6

Exercício 13

#!/bin/bash
echo ”O ShellScript mais utilizado é:”
x=”` grep –i / bin/bash /etc/passwd | wc –l`”
y=”` grep –I /bin/sh /etc/passwd | wc –l `”
z=”` grep –I /bin/false etc/passwd | wc –l `”
if [ $x –gt $y ] && [ $x –gt $z ]
then
echo “/bin/bash => $x usuario”
else
if [ $y –gt $x ] && [ $y –gt $z ]
ehen
echo “/bin/bash => $y usuario”
else
if [ $z –gt $x ] && [ $z –gt $y ]
ehen
echo “/bin/false => $z usuario”
fi
fi
fi