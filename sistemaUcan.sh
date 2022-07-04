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
		clear
		echo "Estes sao os utilizadores do sistema ucan"
		echo "" 
		ls -1 /mnt/ucan/utilizadores/
		echo " "
	;;
	2)
	;;
	3)
	;;
	4)
	;;
	5)
	;;
	6)
	;;
	7)
	;;
	8)
	;;
	9)
	;;
	10)
		clear
		echo "Terminando o script... "
		break
	;;
	*)
		clear
		echo "Nao conseguimos perceber. Por favor seleciona apenas os numeros listados abaixo"
		echo "  "
		echo "  "

	;;
	esac
done
