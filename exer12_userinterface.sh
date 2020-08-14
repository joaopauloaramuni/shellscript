#!/bin/bash
#arq: menuCompleto
dialog --backtitle "Programacao Shell Script " --title "Menu Principal" --menu "Mova utilizando [UP] [DOWN],[Enter] para selecionar" 15 50 3 Data/Hora "Mostrar Data e Hora" Calendario "Mostrar Calendario " Editor "Abrir o editor de textos vi " 2>/tmp/menuitem.$$
menuitem=`cat /tmp/menuitem.$$`
opt=$?
case $menuitem in
Data/Hora) date;;
Calendario) cal;;
Editor) vi;;
esac
