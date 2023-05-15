#!/bin/bash
#Sistema Ucan Desenvolvido para a cadeira de Sistemas Operativos I
#Instituicao:Universidade Catolica de Angola
#Estudante:1000028980
#Nome:Duely Antonio Diantantu
#curso:Engenharia Informatica primeiro ano
#Turma:B
#Disciplina:Sistemas Operativos I
#Descricao:Este projeto e um script para automacao e ajuda na administracao dos recursos
#de uma universidade neste foi separado os usuarios de cada sector para apenas poderem
#aceder aos recursos do seu sector. Desta forma o trabalho do administrador do sistema
#fica mais simplificado porque ele pode executar varias tarefas utilizando este script.
opcao=0

echo "=========================================================================================================================================="
echo "=========================================================================================================================================="
echo "||																	||"
echo "||								 SISTEMA UCAN								||"
echo "||																	||"
echo "------------------------------------------------------------------------------------------------------------------------------------------"
echo "||	Este projeto foi desenvolvido como trabalho para a cadeira de Sistemas Operativos I						||"
echo "||	Instituicao:Universidade Catolica de Angola											||"
echo "||	Estudante:1000028980														||"
echo "||	Nome:Duely Antonio Diantantu													||"
echo "||	Turma:B																||"
echo "||	Disciplina:Sistemas Operativos I												||"
echo "||	Descricao:Este projeto e um script para automacao e ajuda na administracao dos recursos						||"
echo "||	de uma universidade neste foi separado os usuarios de cada sector para apenas poderem						||"
echo "|| 	aceder aos recursos do seu sector. Desta forma o trabalho do administrador do sistema						||"
echo "||	fica mais simplificado porque ele pode executar varias tarefas utilizando este script.						||"
echo "||																	||"
echo "=========================================================================================================================================="
echo "========================================================================================================================================="
while [ $opcao != 10 ]
do
	echo "---------------------------------------------------------------------------------------------------------------------------------"
	echo "---------------------------------------------------------------------------------------------------------------------------------"
	echo "1- Ver utilizadores do Sistema Ucan"
	echo "2- Ver grupos do Sistema Ucan"
	echo "3- Apagar utilizador do Sistema Ucan"
	echo "4- Apagar grupo do Sistema Ucan"
	echo "5- Listar o diretorio prova_de_exame"
	echo "6- Informacao sobre o sistema de arquivos"
	echo "7- Instalar atualizacoes do sistema"
	echo "8- Remover pacotes desnecessarios"
	echo "9- Limpar o sistema"
	echo "10-Sair"
	echo "   "
	echo "Digite o numero equivalente a opcao que deseja selecionar"
	read opcao
	case $opcao in
	1)
		
		echo "Estes sao os utilizadores:"
		ls -1 /mnt/ucan/utilizadores/
		echo " "
	;;
	2)
		
		echo "Grupos do sistema:"
		getent group | grep 200
	;;
	3)
		echo "Digite o nome do utilizador que deseja eliminar"
		read utilizador
		deluser --remove-home $utilizador
		rm -R /mnt/ucan/utilizadores/$utilizador
	;;
	4)
		echo "Digite o nome do grupo que deseja eliminar"
		read grupo
		delgroup $grupo
	;;
	5)
		echo "Conteudos do diretorio prova_de_exame"
		echo "---------------------------------------------------------------------------"
		ls -lo /mnt/ucan/prova_de_exame
	;;
	6)
		echo "Informacoes do sistema de arquivos..."
		echo "---------------------------------------------------------------------------"
		df -hT
	;;
	7)
		echo "Instalando atualizacoes do sistema..."
		apt update
	;;
	8)
		echo "Removendo pacotes desnecessarios..."
		apt autoremove
	;;
	9)
		echo "Limpando o sistema ucan..."
		rm -r /mnt/ucan/*
		echo "O sistema foi limpo com sucesso."
	;;
	10)
		echo "Terminando o script... "
		break
	;;
	*)
		echo "Nao conseguimos perceber. Por favor seleciona apenas os numeros listados abaixo"
		echo "  "
		echo "  "

	;;
	esac
done
