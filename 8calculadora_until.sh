#!/bin/bash

opt=9

until [ "$opt" -eq 5 ]; do
    echo "Selecione a operação desejada:"
    echo "1) Adição"
    echo "2) Subtração"
    echo "3) Multiplicação"
    echo "4) Divisão"
    echo "5) Sair"
    read -p "Escolha uma opção (1-5): " option
    opt=$option

    if [ "$opt" -ne 5 ]; then
        read -p "Digite o primeiro número: " num1
        read -p "Digite o segundo número: " num2
        break
    fi

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
        5)
            echo "Saindo da calculadora."
            break
            ;;
        *)
            echo "Opção inválida. Por favor, escolha uma opção entre 1 e 5."
            ;;
    esac
    echo ""
done