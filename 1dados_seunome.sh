#!/bin/bash
read -p "Digite seu nome: " name
read -p "Digite seu nome completo: " completeName
read -p "Digite sua idade: " age
read -p "Digite seu telefone: " phone

touch "output/Dados_$name.txt"

echo "Nome: $name" >> "output/Dados_$name.txt"
echo "Nome Completo: $completeName" >> "output/Dados_$name.txt"
echo "Idade: $age" >> "output/Dados_$name.txt"
echo "Telefone: $phone" >> "output/Dados_$name.txt"