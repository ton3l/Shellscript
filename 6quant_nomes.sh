#!/bin/bash

read -p "Digite o arquivo alvo: " arch
if [ -e "$arch" ]; then
    count=0
    content=$(cat $arch)
    read -p "Digite o nome a ser procurado: " name
    for valor in $content
    do
        if [ $valor == $name ]; then
            count=$(($count + 1))
        fi
    done
    echo $count
fi