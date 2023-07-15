# SSHbylist
Acesso simplificado via ssh

O objetivo do script é facilicar o acesso via SSH à dispositivos cadastrados em um arquivo chamado de medidores.txt.

De posse do script, o acesso via SSH pode ser feito apenas com a informação do ID do equipamento.

O ID é um número de 4 dígitos.

O script permite acessar um equipamento via SSH a partir de um comando como: ./join_ssh.sh <ID_DO_DISPOSITIVO>

Deve existir uma lista de dispositivos em um arquivo chamado medidores.txt. O arquivo medidores.txt é da seguinte forma:

<nome_do_usuário> <ID_do_dispositivo> <IP_do_dispositivo>

Cada dispositivo a ser acessado via SSH deve ter um ID de 4 dígitos.
