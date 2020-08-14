#!/bin/bash
#Versao: 0.1

resp=""
echo -e "Encontre uma mulher"
echo -e "Ela tem namorado? 0-Sim / 1-Nao"
read resp
if [ $resp -eq 0 ]
  then
    echo -e "Ela ta Bêbada? 0-Sim / 1-Nao"
    read resp
    if [ $resp -eq 0 ]
      then
        echo "Pegou!"
      else
        echo -e "Você é maior que o Namorado? 0-Sim / 1-Nao"
        read resp
        if [ $resp -eq 0 ]
          then
                echo -e "Você é Bonito? 0-Sim / 1-Nao"
    read resp
    if [ $resp -eq 0 ]
      then
        echo "Pegou!"
      else
        echo -e "Você tem Dinheiro? 0-Sim / 1-Nao"
        read resp
        if [ $resp -eq 0 ]
          then
            echo "Pegou!"
          else
            echo -e "Você é Engraçado? 0-Sim / 1-Nao"
            read resp
            if [ $resp -eq 0 ]
              then
                
                while [ $resp -eq 0 ]
                  do 
  		    echo -e "Você tem Carro? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
  		        echo -e "É um Uno? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 1 ]
                          then
                            echo "Pegou!"
                            exit 2
			fi
		    fi
                  done

                echo -e "Você é Famoso? 0-Sim / 1-Nao"
                read resp
                if [ $resp -eq 0 ]
                  then
                    echo -e "Da Internet? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo -e "Ela é feia? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 0 ]
                          then
                            echo "Pegou!"
                            exit 3
                        else
                            echo "Sobrou"
                            exit 4
                        fi
                      else
                        echo "Pegou!"
                        exit 5                        
                    fi
                    exit 1
                  else
                    echo -e "Ela é feia? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo "Pegou!"
                        exit 3
                      else
                        echo "Sobrou"
                        exit 4
                    fi
                fi  

              else

                echo -e "Você é Famoso? 0-Sim / 1-Nao"
                read resp
                if [ $resp -eq 0 ]
                  then
                    echo -e "Da Internet? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo -e "Ela é feia? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 0 ]
                          then
                            echo "Pegou!"
                            exit 3
                        else
                            echo "Sobrou"
                            exit 4
                        fi
                      else
                        echo "Pegou!"
                        exit 5                        
                    fi
                    exit 1
                  else
                    echo -e "Ela é feia? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo "Pegou!"
                        exit 3
                      else
                        echo "Sobrou"
                        exit 4
                    fi
                fi  
            fi

        fi
    fi
          else
            echo -e "Sobrou"
            exit 1
        fi       
    fi   

  else
    echo -e "Voce é Bonito? 0-Sim / 1-Nao"
    read resp
    if [ $resp -eq 0 ]
      then
        echo "Pegou!"
      else
        echo -e "Voce tem Dinheiro? 0-Sim / 1-Nao"
        read resp
        if [ $resp -eq 0 ]
          then
            echo "Pegou!"
          else
            echo -e "Voce é Engracado? 0-Sim / 1-Nao"
            read resp
            if [ $resp -eq 0 ]
              then
                
                while [ $resp -eq 0 ]
                  do 
  		    echo -e "Você tem Carro? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
  		        echo -e "É um Uno? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 1 ]
                          then
                            echo "Pegou!"
                            exit 2
			fi
		    fi
                  done

                echo -e "Você é Famoso? 0-Sim / 1-Nao"
                read resp
                if [ $resp -eq 0 ]
                  then
                    echo -e "Da Internet? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo -e "Ela é feia? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 0 ]
                          then
                            echo "Pegou!"
                            exit 3
                        else
                            echo "Sobrou"
                            exit 4
                        fi
                      else
                        echo "Pegou!"
                        exit 5                        
                    fi
                    exit 1
                  else
                    echo -e "Ela é feia? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo "Pegou!"
                        exit 3
                      else
                        echo "Sobrou"
                        exit 4
                    fi
                fi  

              else

                echo -e "Voce é Famoso? 0-Sim / 1-Nao"
                read resp
                if [ $resp -eq 0 ]
                  then
                    echo -e "Da Internet? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo -e "Ela é feia? 0-Sim / 1-Nao"
                        read resp
                        if [ $resp -eq 0 ]
                          then
                            echo "Pegou!"
                            exit 3
                        else
                            echo "Sobrou"
                            exit 4
                        fi
                      else
                        echo "Pegou!"
                        exit 5                        
                    fi
                    exit 1
                  else
                    echo -e "Ela é feia? 0-Sim / 1-Nao"
                    read resp
                    if [ $resp -eq 0 ]
                      then
                        echo "Pegou!"
                        exit 3
                      else
                        echo "Sobrou"
                        exit 4
                    fi
                fi  
            fi

        fi
    fi

fi











