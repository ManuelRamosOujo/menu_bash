#!/bin/bash
 2
 3 usuario=$(users)
 4 clear=`clear`
 5 seleccion=9
 6 archivo=""
 7 directorio=""
 8 directorio_actual=$(pwd)
 9 more=`more`
10
11 echo $clear
12
13 while (( $seleccion != 0 ))
14 do
15         echo "[0] Salir"
16         echo "[1] Buscar si hay un archivo en un directorio"
17         echo "[2] Muestra todo el contenido que hay en un directorio"
18         echo "[3] Leer el contenido de un archivo"
19         echo "Escribe:"
20         read seleccion
21         echo $clear
22         if (( $seleccion == 1 ))
23         then
24                 echo "Escribe el nombre del archivo (Ej: menu_bash.sh)"
25                 read archivo
26                 echo "Escribe el directorio donde quieres buscar (Ej: /home/alumno/Descargas)"
27                 read directorio
28                 if [[ -e $directorio"/"$archivo ]]
29                then
30                         echo "Este archivo existe"
31                         echo ""
32                         echo "Pulsa ENTER para continuar"
33                         read
34                 else
35                         echo "Este archivo no está aquí"
36                         echo ""
37                         echo "Pulsa ENTER para continuar"
38                         read
39                 fi 
40         fi
41         if (( $seleccion == 2 ))
42         then
43                 echo "Escribe el directorio donde quieres buscar (Ej: /home/*)"
44                 read directorio
45                 for file in $directorio
46                 do
47                         echo $file
48                 done
49                 echo ""
50                 echo "Pulsa ENTER para continuar"
51                 read
52         fi
53         echo $clear
54         if (( $seleccion == 3 ))
55         then
56                 echo "Escribe que archivo quieres leer (Ej: menu_bash.sh)"
57                 read archivo
58                 echo "Escribe donde se encuentra ese archivo (Ej: /home/alumno/Documentos)"
59                 read directorio
60                 echo `$more $directorio"/"$archivo`
61         fi
62
63 done
64
65
66
