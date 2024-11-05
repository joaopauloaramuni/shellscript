#!/bin/bash
WIT=$(which smbd)
# Se o samba não estiver instalado cai aqui
if [ -z "$WIT" ];then
 echo "O samba não está instalado, deseja instalá-lo agora? s/n"
 read INSTALA
 if [ "$INSTALA" = "s" ];then
 apt-get install samba
 else
 exit
 fi
fi
echo
echo "Seja Bem-vindo, a seguir vamos configurar um compartilhamento publico."
echo "Escolha a opção desejada:"
echo
echo "1- Para nova configuração"
echo "2- Para adicionar um diretório ao compartilhamento já configurado"
echo "3- Adicionar um novo usuário"
read MENU
case $MENU in
1)
 echo
 echo
 echo "Digite o nome da sua rede de compartilhamento:"
 read REDE
 echo
 echo "Digite o endereço do diretório a ser compartilhado:"
 read DIRETORIO
 echo
 echo "Qual o nome será exibido na rede para este diretório?"
 read NOME_DIR
 # Renomeando o arquivo de configuração para escrevermos um novo
 mv /etc/samba/smb.conf /etc/samba/BKsmb.conf
 # Escrevendo o novo smb.conf
 echo "[global]" > /etc/samba/smb.conf # Zerando ou criando o arquivo
 echo "workgroup = $REDE" >> /etc/samba/smb.conf
 echo "name resolve order = lmhosts wins bcast hos" >> /etc/samba/smb.conf
 echo "" >> /etc/samba/smb.conf # Escrevendo uma linha de espaço
 echo "[$NOME_DIR]" >> /etc/samba/smb.conf
 echo "path = $DIRETORIO" >> /etc/samba/smb.conf
 echo "read only = no" >> /etc/samba/smb.conf
 echo "public = yes" >> /etc/samba/smb.conf
 # Loop que adiciona usuários de outro PC
 echo
 echo "Algum usuário de outra máquina vai usar este compartilhamento? s/n"
 read MAIS
 while [ "$MAIS" = "s" ];do
 echo

 echo "Qual?"
 read USU_LA
 adduser $USU_LA
 smbpasswd -a $USU_LA
 echo
 echo "mais algum usuário para adicionar? s/n"
 read MAIS
 done
 echo
 echo "Agora informe o nome do seu usuário para que eu possa adicioná-lo"
 read USU
 smbpasswd -a $USU
 service nmbd restart > /dev/null
 service smbd restart > /dev/null
 echo
 echo "Configuração concluída, aguarde um momento"
 echo "De Linux para Linux demora um pouco a iniciar"
 exit;;
2)
 # Loop que adiciona mais diretórios
 MAIS1=$"s" # Garantindo o primeiro loop
 while [ "$MAIS1" = "s" ];do
 echo
 echo "Digite o endereço do novo diretório a ser compartilhado:"
 read DIRETORIO
 echo
 echo "Qual o nome será exibido na rede para este diretório?"
 read NOME_DIR
 echo "" >> /etc/samba/smb.conf # Escrevendo uma linha de espaço
 echo "[$NOME_DIR]" >> /etc/samba/smb.conf
 echo "path = $DIRETORIO" >> /etc/samba/smb.conf
 echo "read only = no" >> /etc/samba/smb.conf
 echo "public = yes" >> /etc/samba/smb.conf
 echo
 echo "mais algum diretório? s/n"
 read MAIS1
 done
 service nmbd restart > /dev/null
 service smbd restart > /dev/null
 echo
 echo "Configuração concluída, aguarde um momento."
 exit;;
3)
 # Loop que adiciona usuários de outro PC
 MAIS2=$"s" # Garantindo o primeiro loop
 while [ "$MAIS2" = "s" ];do
 echo "Digite o nome de usuário:"
 read USU_LA
 adduser $USU_LA
 smbpasswd -a $USU_LA
 echo "mais algum usuário para adicionar? s/n"
 read MAIS2
 done
 service nmbd restart > /dev/null
 service smbd restart > /dev/null
 echo
 echo "Configuração concluída, aguarde um momento."
 exit;;
esac
