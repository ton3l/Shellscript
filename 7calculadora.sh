#!/bin/bash

while true; do
    echo "Selecione a operação desejada:"
    echo "1) Adição"
    echo "2) Subtração"
    echo "3) Multiplicação"
    echo "4) Divisão"
    echo "5) Sair"
    read -p "Escolha uma opção (1-5): " option

    if [ "$option" -eq 5 ]; then
        echo "Saindo da calculadora."
        break
    fi

    read -p "Digite o primeiro número: " num1
    read -p "Digite o segundo número: " num2

    case $option in
        1)
            result=$(echo "$num1 + $num2" | bc)
            echo "Resultado: $result"
            ;;
        2)
            result=$(echo "$num1 - $num2" | bc)
            echo "Resultado: $result"
            ;;
        3)
            result=$(echo "$num1 * $num2" | bc)
            echo "Resultado: $result"
            ;;
        4)
            if [ "$num2" -eq 0 ]; then
                echo "Erro: Divisão por zero não é permitida."
            else
                result=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado: $result"
            fi
            ;;
        *)
            echo "Opção inválida. Por favor, escolha uma opção entre 1 e 5."
            ;;
    esac
    echo ""
done