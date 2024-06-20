#!/bin/bash

while true; do

echo "Ingrese un nombre para calcular su edad probable"
read nombre

respuesta=$(curl -s "https://api.agify.io/?name=${nombre}")

edad=$(echo $respuesta | grep -oP '"age":\K\d+')

if [ -z $edad ]
 then
   echo "No ingreso un nombre valido, intentalo nuevamente"
 else
   echo "La edad probable de $nombre es $edad"
break
fi

done
