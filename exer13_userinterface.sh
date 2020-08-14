#!/bin/bash
#arq: caixaEntrada
dialog --title "Inputbox - Leitura de dados do Usuario" --backtitle "Programacao Shell Script" --inputbox "Digite seu nome" 8 60 2>/tmp/input.$$
sel=$?
nome=`cat /tmp/input.$$`
case $sel in
  0) echo "Alo $nome" ;;
  1) echo "Cancelado" ;;
  255) echo "[ESC] foi pressionada" ;;
esac
#rm -f /tmp/input.$$  
