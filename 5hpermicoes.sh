#!/bin/bash

read -p "Digite o caminho completo do arquivo: " FILE_PATH

if [ -r "$FILE_PATH" ] && [ -w "$FILE_PATH" ]; then
  echo "Você possui permissão de leitura e escrita no arquivo '$FILE_PATH'."
elif [ -r "$FILE_PATH" ]; then
  echo "Você possui apenas permissão de leitura no arquivo '$FILE_PATH'."
elif [ -w "$FILE_PATH" ]; then
  echo "Você possui apenas permissão de escrita no arquivo '$FILE_PATH'."
else
  echo "Você não possui permissão de leitura nem de escrita no arquivo '$FILE_PATH'."
fi
