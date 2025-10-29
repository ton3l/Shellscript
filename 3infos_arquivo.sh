#!/bin/bash

read -p "Digite o nome de um arquivo: " filename
wc "$filename"

read -p "Digite um nome para saber a quantidade de referências nesse arquivo: " name
grep -c "$name" "$filename"
