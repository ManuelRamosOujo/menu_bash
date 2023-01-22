#!/bin/bash

usuario=$(users)
clear=`clear`
seleccion=9
archivo=""
directorio=""
directorio_actual=$(pwd)


echo $clear

while (( $seleccion != 0 ))
do
        echo "[0] Salir"
        echo "[1] Buscar si hay un archivo en un directorio"
        echo "[2] Muestra todo el contenido que hay en un directorio"
        echo "[3] Leer el contenido de un archivo"
        echo "Escribe:"
        read seleccion
        echo $clear
        if (( $seleccion == 1 ))
        then
                 echo "Escribe el nombre del archivo (Ej: menu_bash.sh)"
                 read archivo
                 echo "Escribe el directorio donde quieres buscar (Ej: /home/alumno/Descargas)"
                 read directorio
                 if [[ -e $directorio"/"$archivo ]]
                 then
                          echo "Este archivo existe"
                          echo ""
                          echo "Pulsa ENTER para continuar"
                          read
                  else
                          echo "Este archivo no está aquí"
                         echo ""
                         echo "Pulsa ENTER para continuar"
                         read
                 fi 
        fi
        if (( $seleccion == 2 ))
        then
                echo "Escribe el directorio donde quieres buscar (Ej: /home/*)"
                read directorio
                for file in $directorio
                do
                        echo $file
                done
                echo ""
                echo "Pulsa ENTER para continuar"
                read
        fi
        echo $clear
        if (( $seleccion == 3 ))
        then
                echo "Escribe que archivo quieres leer (Ej: menu_bash.sh)"
                read archivo
                echo "Escribe donde se encuentra ese archivo (Ej: /home/alumno/Documentos)"
                read directorio
                echo `more $directorio"/"$archivo`
        fi
done
