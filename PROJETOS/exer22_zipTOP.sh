#!/bin/bash
# Script top para compactar e descompactar arquivos
# -------------------------------------------------

main()
{
   clear
   echo "Menu de opcoes"
   echo ""
   echo "1. Compactar para .tar"
   echo "2. Compactar para .tar.gz"
   echo "3. Compactar para .bz2"
   echo "4. Descompactar .tar"
   echo "5. Descompactar .tar.gz"
   echo "6. Descompactar .bz2"
   echo "0. sair"
   echo ""
   echo -n "Sua opção: "
   read OPCAO
   case $OPCAO in 
      1) compactarTar;;
      2) compactarGz;;
      3) compactarBz2;;
      4) descompactarTar;;
      5) descompactarGz;;
      6) descompactarBz2;;
      0) exit;;
      *) echo "Opção inválida"; clear; main;;
   esac
}
compactarTar()
{
   clear
   echo -n "Digite o diretorio onde esta o arquivo:"
   read DIRETORIO
   echo -n "Digite o nome do arquivo: " 
   read ARQUIVO
   COMPACTAR="$DIRETORIO/$ARQUIVO"

   tar -cf $ARQUIVO.tar $COMPACTAR 2> /dev/null
   if [ $? -eq 0 ]; then
      echo "Arquivo compactado"
      sleep 2
      clear
   else
            echo "Arquivo não foi compactado"
            clear
        fi
main
}
compactarGz()
{
        clear
        echo -n "Digite o diretorio onde esta o arquivo:"
        read DIRETORIO
        echo -n "Digite o nome do arquivo: "
        read ARQUIVO
        COMPACTAR="$DIRETORIO/$ARQUIVO"

        tar -czf $ARQUIVO.tar.gz $COMPACTAR 2> /dev/null
        if [ $? -eq 0 ]; then
           echo "Arquivo compactado"
           sleep 2
           clear
        else
            echo "Arquivo não foi compactado"
            clear
        fi
main
}
compactarBz2()
{
        clear
        echo -n "Digite o diretorio onde esta o arquivo: "
        read DIRETORIO
        echo -n "Digite o nome do arquivo: "
        read ARQUIVO
        COMPACTAR="$DIRETORIO/$ARQUIVO"

        tar -cjf $ARQUIVO.bz2 $COMPACTAR 2> /dev/null
        if [ $? -eq 0 ]; then
           echo "Arquivo compactado"
           sleep 2
           clear
        else
            echo "Arquivo não foi compactado"
            clear
        fi
main
}
descompactarTar()
{
   clear
   echo -n "Digite o diretorio onde esta o arquivo: "
   read DIRETORIO
   echo -n "Digite o nome do arquivo.tar: "
   read ARQUIVO
   CAMINHO="$DIRETORIO/$ARQUIVO"
   tar -xf $CAMINHO
   if [ $? -eq 0 ]; then
     echo "Arquivo descompactado no diretorio corrente."
   else
     echo "Erro! arquivo não foi descompactado"
   fi
   sleep 2
   clear
   main
}   
descompactarGz()
{
        clear
        echo -n "Digite o diretorio onde esta o arquivo: "
        read DIRETORIO
        echo -n "Digite o nome do arquivo.tar: "
        read ARQUIVO
        CAMINHO="$DIRETORIO/$ARQUIVO"
        tar -xzf $CAMINHO
        if [ $? -eq 0 ]; then
          echo "Arquivo descompactado no diretorio corrente."
        else
          echo "Erro! arquivo não foi descompactado"
        fi
        sleep 2
        clear
        main
}

descompactarBz2()
{
        clear
        echo -n "Digite o diretorio onde esta o arquivo: "
        read DIRETORIO
        echo -n "Digite o nome do arquivo.tar: "
        read ARQUIVO
        CAMINHO="$DIRETORIO/$ARQUIVO"
        tar -xjf $CAMINHO
        if [ $? -eq 0 ]; then
          echo "Arquivo descompactado no diretorio corrente."
        else
          echo "Erro! arquivo não foi descompactado"
        fi
        sleep 2
        clear
        main
}
main
