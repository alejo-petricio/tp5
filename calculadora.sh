#!/bin/bash

echo "Ingrese el primer número:"
read num1

echo "Ingrese el segundo número:"
read num2

echo "Calculadora"
echo "Seleccione la operación que desea realizar:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read operacion

# Realizar la operación
if [ "$operacion" -eq 1 ]
 then
    resultado=$((num1 + num2))
    echo "El resultado de la suma es: $resultado"
elif [ "$operacion" -eq 2 ]
 then
    resultado=$((num1 - num2))
    echo "El resultado de la resta es: $resultado"
elif [ "$operacion" -eq 3 ]
 then
    resultado=$((num1 * num2))
    echo "El resultado de la multiplicación es: $resultado"
elif [ "$operacion" -eq 4 ]
 then
    if [ "$num2" -eq 0 ]
     then
        echo "Error: División por cero no permitida."
    else
        resultado=$((num1 / num2))
        echo "El resultado de la división es: $resultado"
    fi
else
    echo "Operación no válida."
fi

