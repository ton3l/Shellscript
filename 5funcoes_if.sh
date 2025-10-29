#!/bin/bash

echo "i. f(x)=3x+4"
echo -e "ii. g(y)=y^2-1 \n"

read -p "Digite um x para a primeira função: " x_input
read -p "Digite um y para a segunda função: " y_input

fx=$[3 * $x_input + 4]
gy=$[$y_input * $y_input - 1]

echo -e "\nO valor de f($x_input) é: $fx"
echo "O valor de g($y_input) é: $gy"

soma=$[$fx + $gy]
echo -e "\nA soma de f($x_input) + g($y_input) é: $soma"

if [ $soma -le 0 ]; then
    echo "O resultado é igual ou menor que 0"
elif [ $soma -ge 1 ] && [ $soma -le 10 ]; then
    echo "O resultado está entre 1 e 10"
elif [ $soma -ge 11 ] && [ $soma -le 20 ]; then
    echo "O resultado está entre 11 e 20"
elif [ $soma -ge 21 ] && [ $soma -le 30 ]; then
    echo "O resultado está entre 21 e 30"
else
    echo "O resultado é maior que 31"
fi

