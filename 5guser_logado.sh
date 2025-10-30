#!/bin/bash

read -p "Digite o nome de um usuário do sistema: " USERNAME

if who | grep -wq "$USERNAME"; then
  echo "O usuário '$USERNAME' está logado."
else
  echo "O usuário '$USERNAME' não está logado."
fi
