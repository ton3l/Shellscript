#!/bin/bash

read -p "Digite o arquivo alvo: " archive
if [ -e "$archive" ]; then
    count=0
    content=$(cat $archive)
    read -p "Digite o nome a ser procurado: " name
    for valor in $content
    do
        if [ $valor == $name ]; then
            count=$(($count + 1))
        fi
    done
    echo $count
fi