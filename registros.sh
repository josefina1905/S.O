#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo "bienvenido al sistema de registro de asistencias"
echo "1-registrar asistencia"
echo "2-visualizar lista del dia"
read x
case x in
1) 
echo "ingrese su nombre"
read nombre 
echo "ingrese su cedula sin puntos ni guiones"
read ci 
echo "bienvenido $nombre, que tengas un buen dia"

exit