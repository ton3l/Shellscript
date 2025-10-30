#!/bin/bash

read -p "Digite o nome de um usuário do sistema: " USERNAME

HOME_DIR=$(grep "^$USERNAME:" /etc/passwd | cut -d: -f6)

if [ -d "$HOME_DIR" ]; then
  echo "O diretório home para o usuário '$USERNAME' ('$HOME_DIR') é válido."
else
  echo "O diretório home para o usuário '$USERNAME' ('$HOME_DIR') NÃO é válido ou não existe."
fi
