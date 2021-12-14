#!/bin/bash
# -*- ENCODING: UTF-8 -*-
r=1
while (r=1)
echo "bienvenido al sistema de registro de asistencias"
hoy=`date '+%Y_%m_%d'`;
echo "1-registrar asistencia"
echo "2-visualizar lista del dia"
echo "3-salir"
read x
case x in
1) 
echo "ingrese su nombre"
read nombre 
echo "ingrese su cedula sin puntos ni guiones"
read ci 
echo "bienvenido $nombre, que tengas un buen dia"

mv $date.txt /diario
cat "$nombre - $ci" >> diario/"$hoy".txt;;
2)
touch diario/"$hoy".txt;;
3) r=0;
esac
done
exit
