#!/bin/bash

echo "i. f(x)=3x+4"
echo -e "ii. g(y)=y^2-1 \n"

read -p "Digite um x para a primeira função: " x_input
read -p "Digite um y para a segunda função: " y_input

fx=$[3 * $x_input + 4]
gy=$[$y_input * $y_input - 1]

echo -e "\nO valor de f($x_input) é: $fx"
echo "O valor de g($y_input) é: $gy"