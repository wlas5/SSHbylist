#!/bin/bash

regex="\b[0-9]{4}\b" #expressão regular para verificar se ID passado
		       # tá no formado correto
if [[ $1 =~ $regex ]] #verifica se o parâmetro passado na execução do script tá no formato corrento (4 dígitos de 0 à 9)
then
	ip=$(cat /medidores.txt | grep $1 | awk '{ print $3 }') #captura o parâmetro da coluna 3 do arquivo medidores.txt (que corresponde ao ip)
	user=$(cat /medidores.txt | grep $1 | awk '{ print $1 }') #captura o parâmetro da coluna 1 do arquivo medidores.txt (que corresponde ao usuário)
	if [[ $ip ]] # se o comando cat devolver algo no ip, executa os comandos abaixo
	then
        	echo "Medidor encontrado, acessando via ssh..."
        	sshpass -p "#senha_do_dispositivo" ssh $user@$ip
	else
        	echo "medidor nao encontrado"
	fi

else
	echo "Fortamo de ID incorreto! Tente de novo!"
fi


