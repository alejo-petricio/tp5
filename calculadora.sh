#!/bin/bash
while true; do

echo "Seleccione la operación que desea realizar:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
echo "5. Salir"
read operacion

if [ $operacion -eq 5 ]
  then
   break
fi

echo "Ingrese el primer número:"
read num1

echo "Ingrese el segundo número:"
read num2

# Realizar la operación
if [ $operacion -eq 1 ]
 then
    resultado=$((num1 + num2))
    echo "-------------------------------"
    echo "El resultado de la suma es: $resultado"
    echo "-------------------------------"

 elif [ $operacion -eq 2 ]
  then
    resultado=$((num1 - num2))
    echo "-------------------------------"
    echo "El resultado de la resta es: $resultado"
    echo "-------------------------------"

 elif [ $operacion -eq 3 ]
  then
    resultado=$((num1 * num2))
    echo "------------------------------------"
    echo "El resultado de la multiplicación es: $resultado"
    echo "------------------------------------"

 elif [ $operacion -eq 4 ]
  then
    if [ $num2 -eq 0 ]
     then
        echo "No se puede dividir por cero"
     else
        resultado=$((num1 / num2))
        echo "-----------------------------------"
        echo "El resultado de la división es: $resultado"
        echo "-----------------------------------"
    fi

else
    echo "Operación no válida."
fi

done
